// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::BitXor;
use core::ops::BitXorAssign;
use core::ops::Index;

use crate::clamped_index::ClampedIndex;
use crate::clmul::clmul128foil::*;
use crate::intrinsics::m128i::M128i;
use crate::intrinsics::m256i::M256i;

pub trait ClMul256Foil: Copy {
    type Input;
    fn clmul256foil(self, rhs: Self::Input) -> ClMul256FoilProduct;
}
impl ClMul256Foil for M256i {
    type Input = M256i;
    #[inline]
    fn clmul256foil(self, rhs: Self::Input) -> ClMul256FoilProduct {
        ClMul256FoilProduct {
            lo: self.clmul::<0x00>(rhs),
            mid: self.clmul::<0x01>(rhs) ^ self.clmul::<0x10>(rhs),
            hi: self.clmul::<0x11>(rhs),
        }
    }
}
impl ClMul256Foil for M128i {
    type Input = M256i;
    #[inline]
    fn clmul256foil(self, rhs: Self::Input) -> ClMul256FoilProduct {
        self.broadcast256().clmul256foil(rhs)
    }
}
impl<const N: usize> ClMul256Foil for [M128i; N] {
    type Input = [M256i; N];
    #[inline]
    fn clmul256foil(self, rhs: Self::Input) -> ClMul256FoilProduct {
        let mut result = self[0].clmul256foil(rhs[N - 1]);
        for i in 1..N {
            result ^= self[i].clmul256foil(rhs[N - 1 - i]);
        }
        result
    }
}

#[derive(Copy, Clone, Default)]
pub struct ClMul256FoilProduct {
    pub lo: M256i,
    pub mid: M256i,
    pub hi: M256i,
}
impl BitXor for ClMul256FoilProduct {
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
impl BitXorAssign for ClMul256FoilProduct {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        self.lo ^= rhs.lo;
        self.mid ^= rhs.mid;
        self.hi ^= rhs.hi;
    }
}
impl ClMul256FoilProduct {
    #[inline]
    pub fn reduce(&self) -> M256i {
        let this = self.combine();
        this.reduce_mul()
    }
    #[inline]
    pub fn combine(mut self) -> Self {
        self.lo ^= self.mid.left_byteshift128::<8>();
        self.hi ^= self.mid.right_byteshift128::<8>();
        self.mid = M256i::ZERO;
        self
    }
    #[inline]
    fn reduce_mul(self) -> M256i {
        let reduced = Self::reduce_mul_step(self.lo);
        let reduced = Self::reduce_mul_step(reduced);
        self.hi ^ reduced
    }
    #[inline]
    fn reduce_mul_step(target: M256i) -> M256i {
        let poly: M256i = [1, 0, 0, 0xc2_00_00_00, 1, 0, 0, 0xc2_00_00_00].into();
        target.clmul::<0x10>(poly) ^ target.shuffle32::<0b_01_00_11_10>()
    }
}
#[derive(Copy, Clone)]
pub struct ClMul256FoilPowerTable<const N: usize> {
    key: M128i,
    powers: [M128i; N],
}
impl<const N: usize> ClMul256FoilPowerTable<N> {
    #[inline]
    pub fn new(key: M128i) -> Self {
        let sq = key.clmul128foil_sq().reduce();
        let mut powers = [sq; N];
        if N > 1 {
            powers[1] = sq.clmul128foil_sq().reduce();
            let mut i = 2;
            while i < N - 1 {
                [powers[i], powers[i + 1]] = powers[1]
                    .clmul256foil([powers[i - 2], powers[i - 1]].into())
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
    pub fn clmul256foil(self, array: [M256i; N]) -> ClMul256FoilProduct {
        self.powers.clmul256foil(array)
    }
    #[inline]
    pub fn reduce(self, hash: M256i, m: M128i) -> M128i {
        let hash: [M128i; 2] = hash.into();
        hash[1] ^ self.key.clmul128foil(hash[0] ^ m).reduce()
    }
    #[inline]
    pub fn reduce256(self, hash: M256i, m: M256i) -> M128i {
        let key: M256i = [self[0], self.key].into();
        let result: [M128i; 2] = key.clmul256foil(hash ^ m).reduce().into();
        result[0] ^ result[1]
    }
}
impl<const N: usize> Index<ClampedIndex<N>> for ClMul256FoilPowerTable<N> {
    type Output = M128i;
    #[inline]
    fn index(&self, i: ClampedIndex<N>) -> &Self::Output {
        unsafe { self.powers.get_unchecked(*i) }
    }
}
impl<const N: usize> Index<usize> for ClMul256FoilPowerTable<N> {
    type Output = M128i;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.powers[i]
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn clmul128vs256() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        for _i in 0..128 {
            let key = M128i::random();
            let msg = M128i::random();
            let result128 = key.clmul128foil(msg).reduce();
            let result256 = key.clmul256foil(msg.broadcast256()).reduce();
            assert_eq!(result128.broadcast256(), result256);

            let msg = [M128i::random(), M128i::random()];
            let result128 = [
                key.clmul128foil(msg[0]).reduce(),
                key.clmul128foil(msg[1]).reduce(),
            ];
            let result256 = key.clmul256foil(msg.into()).reduce();
            assert_eq!(result256, result128);
        }
    }

    #[test]
    #[allow(unused)]
    fn table128vs256() {
        if !cpuid::VPCLMULQDQ.is_supported() {
            return;
        }
        for _i in 0..128 {
            let key = M128i::random();
            let msg = M256i::random();
            let end = M128i::random();

            let table256 = ClMul256FoilPowerTable::<1>::new(key);
            let result256 = table256[0].clmul256foil(msg).reduce();
            let result256 = table256.reduce(result256, end);

            let table128 = ClMul128FoilPowerTable::<2>::new(key);
            let result128 = table128.clmul128foil(msg.into()).reduce();
            let result128 = table128[0].clmul128foil(result128 ^ end).reduce();

            assert_eq!(result128, result256);
        }
        for _i in 0..128 {
            let key = M128i::random();
            let msg = M256i::random();
            let end = M256i::random();

            let table256 = ClMul256FoilPowerTable::<1>::new(key);
            let result256 = table256[0].clmul256foil(msg).reduce();
            let result256 = table256.reduce256(result256, end);

            let end: [M128i; 2] = end.into();

            let table128 = ClMul128FoilPowerTable::<2>::new(key);
            let result128 = table128.clmul128foil(msg.into()).reduce();
            let result128 = table128.clmul128foil([end[0] ^ result128, end[1]]).reduce();

            assert_eq!(result128, result256);
        }
    }
}
