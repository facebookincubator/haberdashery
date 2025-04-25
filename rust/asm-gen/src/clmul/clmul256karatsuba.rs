// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::BitXor;
use core::ops::BitXorAssign;
use core::ops::Index;

use crate::block::Block128;
use crate::block::Block256;
use crate::clmul::clmul128foil::*;
use crate::ffi::reader::Reader;

const BLOCK_LEN: usize = 16;

pub trait ClMul256Karatsuba: Copy {
    type Input;
    fn clmul256karatsuba(self, rhs: Self::Input) -> ClMul256KaratsubaProduct;
}
impl ClMul256Karatsuba for Block256 {
    type Input = Block256;
    #[inline]
    fn clmul256karatsuba(self, rhs: Self::Input) -> ClMul256KaratsubaProduct {
        let tmp = self.unpacklo64(rhs) ^ self.unpackhi64(rhs);
        ClMul256KaratsubaProduct {
            lo: self.clmul::<0x00>(rhs),
            mid: tmp.clmul::<0x01>(tmp),
            hi: self.clmul::<0x11>(rhs),
        }
    }
}
impl ClMul256Karatsuba for Block128 {
    type Input = Block256;
    #[inline]
    fn clmul256karatsuba(self, rhs: Self::Input) -> ClMul256KaratsubaProduct {
        self.broadcast256().clmul256karatsuba(rhs)
    }
}
impl<const N: usize> ClMul256Karatsuba for [Block128; N] {
    type Input = [Block256; N];
    #[inline]
    fn clmul256karatsuba(self, rhs: Self::Input) -> ClMul256KaratsubaProduct {
        let mut result = self[0].clmul256karatsuba(rhs[N - 1]);
        for i in 1..N {
            result ^= self[i].clmul256karatsuba(rhs[N - 1 - i]);
        }
        result
    }
}

#[derive(Copy, Clone, Default)]
pub struct ClMul256KaratsubaProduct {
    pub lo: Block256,
    pub mid: Block256,
    pub hi: Block256,
}
impl BitXor for ClMul256KaratsubaProduct {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: Self) -> Self::Output {
        Self {
            lo: self.lo ^ rhs.lo,
            mid: self.mid ^ rhs.mid,
            hi: self.hi ^ rhs.hi,
        }
    }
}
impl BitXorAssign for ClMul256KaratsubaProduct {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        self.lo ^= rhs.lo;
        self.mid ^= rhs.mid;
        self.hi ^= rhs.hi;
    }
}
impl ClMul256KaratsubaProduct {
    #[inline]
    pub fn reduce(&self) -> Block256 {
        let this = self.combine();
        this.reduce_mul()
    }
    #[inline]
    pub fn combine(mut self) -> Self {
        let tmp = self.lo ^ self.mid ^ self.hi;
        self.lo ^= tmp.left_byteshift128::<8>();
        self.hi ^= tmp.right_byteshift128::<8>();
        self.mid = Block256::ZERO;
        self
    }
    #[inline]
    fn reduce_mul(self) -> Block256 {
        let reduced = Self::reduce_mul_step(self.lo);
        let reduced = Self::reduce_mul_step(reduced);
        self.hi ^ reduced
    }
    #[inline]
    fn reduce_mul_step(target: Block256) -> Block256 {
        let poly: Block256 = [1, 0, 0, 0xc2_00_00_00, 1, 0, 0, 0xc2_00_00_00].into();
        target.clmul::<0x10>(poly) ^ target.shuffle32::<0b_01_00_11_10>()
    }
}
#[derive(Copy, Clone)]
pub struct ClMul256KaratsubaPowerTable<const N: usize> {
    key: Block128,
    powers: [Block128; N],
}
impl<const N: usize> ClMul256KaratsubaPowerTable<N> {
    #[inline]
    pub fn new(key: Block128) -> Self {
        let sq = key.clmul128foil_sq().reduce();
        let mut powers = [sq; N];
        if N > 1 {
            powers[1] = sq.clmul128foil_sq().reduce();
            let mut i = 2;
            while i < N - 1 {
                [powers[i], powers[i + 1]] = powers[1]
                    .clmul256karatsuba([powers[i - 2], powers[i - 1]].into())
                    .reduce()
                    .into();
                i += 2;
            }
            if i < N {
                powers[i] = sq.clmul128foil(powers[i - 1]).reduce();
            }
        }
        Self { key, powers }
    }
    #[inline]
    pub fn key(self) -> Block128 {
        self.key
    }
    #[inline]
    pub fn clmul256karatsuba(self, array: [Block256; N]) -> ClMul256KaratsubaProduct {
        self.powers.clmul256karatsuba(array)
    }
    #[inline]
    pub fn clmul256karatsuba_reader(self, mut state: Block256, mut reader: Reader) -> Block256 {
        for mut array in reader.iter::<[Block256; N]>() {
            array[0] ^= state;
            state = self.clmul256karatsuba(array).reduce();
        }
        for block in reader.iter::<Block256>() {
            state = self[0].clmul256karatsuba(block ^ state).reduce();
        }
        let bytes_remaining = reader.len();
        if let Some(block) = reader.remainder::<Block256>() {
            if bytes_remaining > BLOCK_LEN {
                state = self[0].clmul256karatsuba(block ^ state).reduce();
            } else {
                state = self.key.clmul256karatsuba(block ^ state).reduce();
            }
        }
        state
    }
    #[inline]
    pub fn reduce(self, hash: Block256, m: Block128) -> Block128 {
        let hash: [Block128; 2] = hash.into();
        hash[1] ^ self.key.clmul128foil(hash[0] ^ m).reduce()
    }
}
impl<const N: usize> Index<usize> for ClMul256KaratsubaPowerTable<N> {
    type Output = Block128;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.powers[i]
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn power() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        const N: usize = 8;

        for _i in 0..128 {
            let key = Block128::random();
            let data = random::vec(N * Block256::SIZE + 15);
            assert_eq!(
                {
                    let table = ClMul256KaratsubaPowerTable::<1>::new(key);
                    let reader = Reader::from(data.as_slice());
                    table.clmul256karatsuba_reader(Block256::ZERO, reader)
                },
                {
                    let table = ClMul256KaratsubaPowerTable::<N>::new(key);
                    let reader = Reader::from(data.as_slice());
                    table.clmul256karatsuba_reader(Block256::ZERO, reader)
                }
            );
        }
    }

    #[test]
    fn clmul128vs256() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        for _i in 0..128 {
            let key = Block128::random();
            let msg = Block128::random();
            let result128 = key.clmul128foil(msg).reduce();
            let result256 = key.clmul256karatsuba(msg.broadcast256()).reduce();
            assert_eq!(result128.broadcast256(), result256);

            let msg = [Block128::random(), Block128::random()];
            let result128 = [
                key.clmul128foil(msg[0]).reduce(),
                key.clmul128foil(msg[1]).reduce(),
            ];
            let result256 = key.clmul256karatsuba(msg.into()).reduce();
            assert_eq!(result256, result128);
        }
    }

    #[test]
    fn table128vs256() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        for _i in 0..128 {
            let key = Block128::random();
            let msg = Block256::random();
            let end = Block128::random();

            let table256 = ClMul256KaratsubaPowerTable::<1>::new(key);
            let result256 = table256[0].clmul256karatsuba(msg).reduce();
            let result256 = table256.reduce(result256, end);

            let table128 = ClMul128FoilPowerTable::<2>::new(key);
            let result128 = table128.clmul128foil(msg.into()).reduce();
            let result128 = table128[0].clmul128foil(result128 ^ end).reduce();

            assert_eq!(result128, result256);
        }
    }

    #[test]
    fn reader128vs256() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        const N: usize = 8;

        for _i in 0..128 {
            let key = Block128::random();
            let extra = random::usize() % Block128::SIZE;
            let data = random::vec(N * Block256::SIZE + extra);
            let last128 = Block128::random();
            assert_eq!(
                {
                    let table = ClMul256KaratsubaPowerTable::<1>::new(key);
                    let reader = Reader::from(data.as_slice());
                    let state = table.clmul256karatsuba_reader(Block256::ZERO, reader);
                    table.reduce(state, last128)
                },
                {
                    let table = ClMul128FoilPowerTable::<1>::new(key);
                    let state = ClMul128FoilProduct::default();
                    let reader = Reader::from(data.as_slice());
                    let state = table.clmul128foil_reader(state, reader).reduce();
                    table[0].clmul128foil(state ^ last128).reduce()
                }
            );
        }
    }
}
