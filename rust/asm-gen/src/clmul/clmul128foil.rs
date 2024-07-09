// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::BitXor;
use core::ops::BitXorAssign;

use crate::clamped_index::ClampedIndex;
use crate::intrinsics::m128i::M128i;

pub trait ClMul128Foil: Copy {
    fn clmul128foil(self, rhs: Self) -> ClMul128FoilProduct;
    #[inline]
    fn clmul128foil_sq(self) -> ClMul128FoilProduct {
        self.clmul128foil(self)
    }
}
impl ClMul128Foil for M128i {
    #[inline]
    fn clmul128foil(self, rhs: Self) -> ClMul128FoilProduct {
        ClMul128FoilProduct {
            lo: self.clmul::<0x00>(rhs),
            mid: self.clmul::<0x01>(rhs) ^ self.clmul::<0x10>(rhs),
            hi: self.clmul::<0x11>(rhs),
        }
    }
    #[inline]
    fn clmul128foil_sq(self) -> ClMul128FoilProduct {
        ClMul128FoilProduct {
            lo: self.clmul::<0x00>(self),
            mid: M128i::zero(),
            hi: self.clmul::<0x11>(self),
        }
    }
}
impl<const N: usize> ClMul128Foil for [M128i; N] {
    #[inline]
    fn clmul128foil(self, rhs: Self) -> ClMul128FoilProduct {
        let mut result = self[0].clmul128foil(rhs[N - 1]);
        for i in 1..N {
            result ^= self[i].clmul128foil(rhs[N - 1 - i]);
        }
        result
    }
}
#[derive(Copy, Clone, Default)]
pub struct ClMul128FoilProduct {
    pub lo: M128i,
    pub mid: M128i,
    pub hi: M128i,
}
impl BitXor for ClMul128FoilProduct {
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
impl BitXorAssign for ClMul128FoilProduct {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        self.lo ^= rhs.lo;
        self.mid ^= rhs.mid;
        self.hi ^= rhs.hi;
    }
}
impl ClMul128FoilProduct {
    #[inline]
    pub fn reduce(&self) -> M128i {
        let this = self.combine_foil();
        this.reduce_mul()
    }
    #[inline]
    pub fn combine_foil(mut self) -> Self {
        self.lo ^= self.mid.left_byteshift::<8>();
        self.hi ^= self.mid.right_byteshift::<8>();
        self.mid = M128i::zero();
        self
    }
    #[inline]
    fn reduce_mul(self) -> M128i {
        let reduced = Self::reduce_mul_step(self.lo);
        let reduced = Self::reduce_mul_step(reduced);
        self.hi ^ reduced
    }
    #[inline]
    fn reduce_mul_step(target: M128i) -> M128i {
        let poly: M128i = [1, 0, 0, 0xc2_00_00_00].into();
        target.clmul::<0x10>(poly) ^ target.shuffle32::<0b_01_00_11_10>()
    }
}
#[derive(Copy, Clone)]
pub struct ClMul128FoilPowerTable<const N: usize>([M128i; N]);
impl<const N: usize> ClMul128FoilPowerTable<N> {
    pub fn new(key: M128i) -> Self {
        let mut table = [key; N];
        for i in 1..N {
            match i % 2 {
                1 => table[i] = table[(i - 1) / 2].clmul128foil_sq().reduce(),
                _ => table[i] = table[i - 1].clmul128foil(key).reduce(),
            }
        }
        Self(table)
    }
    #[inline]
    pub fn clmul128foil(self, array: [M128i; N]) -> ClMul128FoilProduct {
        self.0.clmul128foil(array)
    }
    #[inline]
    pub fn clmul128foil_u64(self, rhs: u64) -> ClMul128FoilProduct {
        let lhs = self.0[0];
        let rhs = [rhs, 0].into();
        ClMul128FoilProduct {
            lo: lhs.clmul::<0x00>(rhs),
            mid: lhs.clmul::<0x01>(rhs),
            hi: M128i::zero(),
        }
    }
}
impl<const N: usize> core::ops::Index<ClampedIndex<N>> for ClMul128FoilPowerTable<N> {
    type Output = M128i;
    #[inline]
    fn index(&self, i: ClampedIndex<N>) -> &Self::Output {
        unsafe { self.0.get_unchecked(*i) }
    }
}
impl<const N: usize> core::ops::Index<usize> for ClMul128FoilPowerTable<N> {
    type Output = M128i;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
