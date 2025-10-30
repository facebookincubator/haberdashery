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
use crate::block::Block512;
use crate::clmul::clmul128foil::*;
use crate::ffi::reader::Reader;

pub trait ClMul512Karatsuba: Copy {
    type Input;
    fn clmul512karatsuba(self, rhs: Self::Input) -> ClMul512KaratsubaProduct;
}
impl ClMul512Karatsuba for Block512 {
    type Input = Block512;
    #[inline]
    fn clmul512karatsuba(self, rhs: Self::Input) -> ClMul512KaratsubaProduct {
        let tmp = self.unpacklo64(rhs) ^ self.unpackhi64(rhs);
        ClMul512KaratsubaProduct {
            lo: self.clmul::<0x00>(rhs),
            mid: tmp.clmul::<0x01>(tmp),
            hi: self.clmul::<0x11>(rhs),
        }
    }
}
impl ClMul512Karatsuba for Block128 {
    type Input = Block512;
    #[inline]
    fn clmul512karatsuba(self, rhs: Self::Input) -> ClMul512KaratsubaProduct {
        self.broadcast512().clmul512karatsuba(rhs)
    }
}
impl<const N: usize> ClMul512Karatsuba for [Block128; N] {
    type Input = [Block512; N];
    #[inline]
    fn clmul512karatsuba(self, rhs: Self::Input) -> ClMul512KaratsubaProduct {
        let mut result = self[0].clmul512karatsuba(rhs[N - 1]);
        for i in 1..N {
            result ^= self[i].clmul512karatsuba(rhs[N - 1 - i]);
        }
        result
    }
}

#[derive(Copy, Clone, Default)]
pub struct ClMul512KaratsubaProduct {
    pub lo: Block512,
    pub mid: Block512,
    pub hi: Block512,
}
impl BitXor for ClMul512KaratsubaProduct {
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
impl BitXorAssign for ClMul512KaratsubaProduct {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        self.lo ^= rhs.lo;
        self.mid ^= rhs.mid;
        self.hi ^= rhs.hi;
    }
}
impl ClMul512KaratsubaProduct {
    #[inline]
    pub fn reduce(&self) -> Block512 {
        let this = self.combine();
        this.reduce_mul()
    }
    #[inline]
    pub fn combine(mut self) -> Self {
        let tmp = self.lo ^ self.mid ^ self.hi;
        self.lo ^= tmp.left_byteshift128::<8>();
        self.hi ^= tmp.right_byteshift128::<8>();
        self.mid = Block512::ZERO;
        self
    }
    #[inline]
    fn reduce_mul(self) -> Block512 {
        let reduced = Self::reduce_mul_step(self.lo);
        let reduced = Self::reduce_mul_step(reduced);
        self.hi ^ reduced
    }
    #[inline]
    fn reduce_mul_step(target: Block512) -> Block512 {
        let poly: Block512 = [Block128::from([1, 0, 0, 0xc2_00_00_00]); 4].into();
        target.clmul::<0x10>(poly) ^ target.shuffle32::<0b_01_00_11_10>()
    }
}
#[derive(Copy, Clone)]
pub struct ClMul512KaratsubaPowerTable<const N: usize> {
    key: Block128,
    pub powers: [Block128; N],
}
impl<const N: usize> ClMul512KaratsubaPowerTable<N> {
    #[inline]
    pub fn new(key: Block128) -> Self {
        let sq = key.clmul128foil_sq().reduce();
        let fourth = sq.clmul128foil_sq().reduce();
        let mut powers = [fourth; N];
        for i in 1..N {
            powers[i] = fourth.clmul128foil(powers[i - 1]).reduce();
        }
        Self { key, powers }
    }
    #[inline]
    pub fn key(self) -> Block128 {
        self.key
    }
    #[inline]
    pub fn clmul512karatsuba(self, array: [Block512; N]) -> ClMul512KaratsubaProduct {
        self.powers.clmul512karatsuba(array)
    }
    #[inline]
    pub fn clmul512karatsuba_reader(self, mut state: Block128, mut reader: Reader) -> Block128 {
        let mut state512 = Block512::from([state, Block128::ZERO, Block128::ZERO, Block128::ZERO]);
        while reader.len() >= Block512::SIZE * (N + 1) {
            if let Some(mut blocks) = reader.read::<[Block512; N]>() {
                blocks[0] ^= state512;
                state512 = self.clmul512karatsuba(blocks).reduce();
            }
        }
        if let Some(mut block) = reader.read::<Block512>() {
            for next_block in reader.iter::<Block512>() {
                state512 = self[0].clmul512karatsuba(block ^ state512).reduce();
                block = next_block;
            }
            state = self.reduce(block ^ state512);
        }
        for block in reader.iter::<Block128>() {
            state = self.key().clmul128foil(block ^ state).reduce();
        }
        if let Some(block) = reader.remainder::<Block128>() {
            state = self.key().clmul128foil(block ^ state).reduce();
        }
        state
    }
    #[inline]
    pub fn reduce(self, block: Block512) -> Block128 {
        let block: [Block128; 4] = block.into();
        let state = self.key.clmul128foil(block[0]).reduce();
        let state = self.key.clmul128foil(block[1] ^ state).reduce();
        let state = self.key.clmul128foil(block[2] ^ state).reduce();
        let state = self.key.clmul128foil(block[3] ^ state).reduce();
        state
    }
}
impl<const N: usize> Index<usize> for ClMul512KaratsubaPowerTable<N> {
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
            let state = Block128::random();
            let data = random::vec(N * Block512::SIZE + 15);
            assert_eq!(
                {
                    let table = ClMul512KaratsubaPowerTable::<1>::new(key);
                    let reader = Reader::from(data.as_slice());
                    table.clmul512karatsuba_reader(state, reader)
                },
                {
                    let table = ClMul512KaratsubaPowerTable::<N>::new(key);
                    let reader = Reader::from(data.as_slice());
                    table.clmul512karatsuba_reader(state, reader)
                }
            );
        }
    }

    #[test]
    fn clmul128vs512() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        for _i in 0..128 {
            let key = Block128::random();
            let msg = Block128::random();
            let result128 = key.clmul128foil(msg).reduce();
            let result512 = key.clmul512karatsuba(msg.broadcast512()).reduce();
            assert_eq!(result128.broadcast512(), result512);

            let msg = [
                Block128::random(),
                Block128::random(),
                Block128::random(),
                Block128::random(),
            ];
            let result128 = msg.map(|msg| key.clmul128foil(msg).reduce());
            let result512 = key.clmul512karatsuba(msg.into()).reduce();
            assert_eq!(result512, result128);
        }
    }

    #[test]
    fn reader128vs512() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        const N: usize = 8;

        for _i in 0..128 {
            let key = Block128::random();
            let extra = random::usize() % Block128::SIZE;
            let data = random::vec(N * Block512::SIZE + extra);
            assert_eq!(
                {
                    let table = ClMul512KaratsubaPowerTable::<1>::new(key);
                    let reader = Reader::from(data.as_slice());
                    table.clmul512karatsuba_reader(Block128::ZERO, reader)
                },
                {
                    let table = ClMul128FoilPowerTable::<1>::new(key);
                    let state = ClMul128FoilProduct::default();
                    let reader = Reader::from(data.as_slice());
                    table.clmul128foil_reader(state, reader).reduce()
                }
            );
        }
    }
}
