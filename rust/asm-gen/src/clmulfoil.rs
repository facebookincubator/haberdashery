// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::BitXor;
use core::ops::BitXorAssign;

use crate::intrinsics::m128i::*;

#[derive(Copy, Clone, Default, Debug, PartialEq)]
pub struct ClMulFoilProduct<T> {
    pub lo: T,
    pub mid: T,
    pub hi: T,
}
impl<T: BitXor<Output = T>> BitXor for ClMulFoilProduct<T> {
    type Output = Self;
    #[inline(always)]
    fn bitxor(self, other: Self) -> Self::Output {
        Self {
            lo: self.lo ^ other.lo,
            mid: self.mid ^ other.mid,
            hi: self.hi ^ other.hi,
        }
    }
}
impl<T: BitXorAssign> BitXorAssign for ClMulFoilProduct<T> {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: Self) {
        self.lo ^= other.lo;
        self.mid ^= other.mid;
        self.hi ^= other.hi;
    }
}
pub trait ClMulFoil<Rhs = Self> {
    type Output;
    fn clmul_foil(self, right: Rhs) -> Self::Output;
}
pub trait ClSqFoil: ClMulFoil<Self> + Copy {
    #[inline(always)]
    fn clsq_foil(self) -> Self::Output {
        self.clmul_foil(self)
    }
}

impl ClMulFoilProduct<M128i> {
    #[inline(always)]
    pub fn reduce(&self) -> M128i {
        let this = self.combine_foil();
        this.reduce_mul()
    }
    #[inline(always)]
    pub fn combine_foil(mut self) -> Self {
        self.lo ^= self.mid.left_byteshift::<8>();
        self.hi ^= self.mid.right_byteshift::<8>();
        self.mid = M128i::zero();
        self
    }
    #[inline(always)]
    fn reduce_mul(&self) -> M128i {
        let reduced = Self::reduce_mul_step(self.lo);
        let reduced = Self::reduce_mul_step(reduced);
        self.hi ^ reduced
    }
    #[inline(always)]
    fn reduce_mul_step(target: M128i) -> M128i {
        let poly: M128i = [1, 0, 0, 0xc2_00_00_00].into();
        target.clmul::<0x10>(poly) ^ target.shuffle32::<0b_01_00_11_10>()
    }
}
impl ClMulFoil<M128i> for M128i {
    type Output = ClMulFoilProduct<M128i>;
    #[inline(always)]
    #[allow(clippy::suspicious_arithmetic_impl)]
    fn clmul_foil(self, right: M128i) -> Self::Output {
        Self::Output {
            lo: self.clmul::<0x00>(right),
            mid: self.clmul::<0x01>(right) ^ self.clmul::<0x10>(right),
            hi: self.clmul::<0x11>(right),
        }
    }
}
impl ClSqFoil for M128i {
    #[inline(always)]
    fn clsq_foil(self) -> Self::Output {
        Self::Output {
            lo: self.clmul::<0x00>(self),
            mid: Self::zero(),
            hi: self.clmul::<0x11>(self),
        }
    }
}
