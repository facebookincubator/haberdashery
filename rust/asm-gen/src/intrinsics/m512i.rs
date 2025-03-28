// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;
use core::mem::size_of;
use core::mem::transmute;
use core::mem::MaybeUninit;
use core::ops::BitAnd;
use core::ops::BitAndAssign;
use core::ops::BitOr;
use core::ops::BitOrAssign;
use core::ops::BitXor;
use core::ops::BitXorAssign;
use core::ops::Deref;
use core::ops::DerefMut;

use intrinsics::__m512i::*;

use crate::intrinsics::m128i::M128i;
use crate::intrinsics::m256i::M256i;

#[repr(transparent)]
#[derive(Clone, Copy)]
pub struct M512i(__m512i);
impl M512i {
    pub const SIZE: usize = size_of::<Self>();
    pub const ZERO: Self = Self::from_bytes([0u8; Self::SIZE]);

    #[inline]
    pub const fn from_bytes(bytes: [u8; Self::SIZE]) -> Self {
        unsafe { transmute(bytes) }
    }
    #[inline]
    pub unsafe fn load<T>(ptr: *const T) -> Self {
        unsafe { _mm512_loadu_si512(ptr as *const i32) }.into()
    }
    #[inline]
    pub unsafe fn store<T>(self, ptr: *mut T) {
        unsafe { _mm512_storeu_si512(ptr as *mut __m512i, *self) };
    }
    #[inline]
    pub unsafe fn cast<T>(self) -> T {
        debug_assert_eq!(size_of::<T>(), size_of::<Self>());
        let mut result = MaybeUninit::uninit();
        unsafe { self.store(result.as_mut_ptr()) };
        unsafe { result.assume_init() }
    }
    #[inline]
    pub fn is_zero(self) -> bool {
        unsafe { self._mm512_test_epi64_mask(self) == 0 }
    }
    #[inline]
    pub fn crypto_equals(self, rhs: M512i) -> bool {
        (self ^ rhs).is_zero()
    }
    #[inline]
    pub fn zero() -> Self {
        unsafe { __m512i::_mm512_setzero_si512() }
    }
}
impl Default for M512i {
    #[inline]
    fn default() -> Self {
        Self::ZERO
    }
}
impl<T: Into<M512i>> BitXor<T> for M512i {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: T) -> Self::Output {
        unsafe { self._mm512_xor_si512(rhs.into()) }
    }
}
impl BitXorAssign for M512i {
    #[inline]
    fn bitxor_assign(&mut self, other: Self) {
        *self = *self ^ other;
    }
}
impl<T: Into<M512i>> BitAnd<T> for M512i {
    type Output = Self;
    #[inline]
    fn bitand(self, other: T) -> Self::Output {
        unsafe { self._mm512_and_si512(other.into()) }
    }
}
impl BitAndAssign for M512i {
    #[inline]
    fn bitand_assign(&mut self, other: Self) {
        *self = *self & other;
    }
}
impl<T: Into<M512i>> BitOr<T> for M512i {
    type Output = Self;
    #[inline]
    fn bitor(self, other: T) -> Self::Output {
        unsafe { self._mm512_or_si512(other.into()) }
    }
}
impl BitOrAssign for M512i {
    #[inline]
    fn bitor_assign(&mut self, other: Self) {
        *self = *self | other;
    }
}
impl From<[u8; Self::SIZE]> for M512i {
    #[inline]
    fn from(array: [u8; Self::SIZE]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M512i> for [u8; M512i::SIZE] {
    #[inline]
    fn from(reg: M512i) -> Self {
        unsafe { reg.cast() }
    }
}
impl Deref for M512i {
    type Target = __m512i;
    #[inline]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl DerefMut for M512i {
    #[inline]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}
impl From<M512i> for __m512i {
    #[inline]
    fn from(reg: M512i) -> Self {
        reg.0
    }
}
impl From<__m512i> for M512i {
    #[inline]
    fn from(reg: __m512i) -> Self {
        Self(reg)
    }
}
impl From<[u32; 16]> for M512i {
    #[inline]
    fn from(array: [u32; 16]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M512i> for [u32; 16] {
    #[inline]
    fn from(reg: M512i) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[u64; 8]> for M512i {
    #[inline]
    fn from(array: [u64; 8]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M512i> for [u64; 8] {
    #[inline]
    fn from(reg: M512i) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[M128i; 4]> for M512i {
    #[inline]
    fn from(array: [M128i; 4]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M512i> for [M128i; 4] {
    #[inline]
    fn from(reg: M512i) -> Self {
        unsafe {
            [
                reg._mm512_castsi512_si128(),
                reg._mm512_extracti32x4_epi32::<1>().into(),
                reg._mm512_extracti32x4_epi32::<2>().into(),
                reg._mm512_extracti32x4_epi32::<3>().into(),
            ]
        }
    }
}
impl From<[M256i; 2]> for M512i {
    #[inline]
    fn from(array: [M256i; 2]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M512i> for [M256i; 2] {
    #[inline]
    fn from(reg: M512i) -> Self {
        unsafe {
            [
                reg._mm512_castsi512_si256(),
                reg._mm512_extracti64x4_epi64::<1>().into(),
            ]
        }
    }
}

#[cfg(test)]
mod tests {
    use core::cmp::PartialEq;
    use core::fmt::Debug;
    use core::fmt::Display;
    use core::fmt::Formatter;

    use super::*;

    impl<T: Into<Self> + Clone> PartialEq<T> for M512i {
        fn eq(&self, rhs: &T) -> bool {
            self.crypto_equals(rhs.clone().into())
        }
    }
    impl Debug for M512i {
        fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
            write!(f, r#""{}""#, &self.encode_hex())
        }
    }
    impl Display for M512i {
        fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
            write!(f, "{}", &self.encode_hex())
        }
    }
    impl M512i {
        pub fn encode_hex(self) -> String {
            hex::encode::<[u8; Self::SIZE]>(self.into())
        }
        pub fn random() -> Self {
            random::array().into()
        }
    }

    #[test]
    fn converstions() {
        if !cpuid::AVX512VL.is_supported() {
            return;
        }
        for _i in 0..128 {
            let base = M512i::random();
            let array: [M256i; 2] = base.into();
            assert_eq!(base, array);
            let array: [M128i; 4] = base.into();
            assert_eq!(base, array);
            let array: [u64; 8] = base.into();
            assert_eq!(base, array);
            let array: [u32; 16] = base.into();
            assert_eq!(base, array);
        }
    }
    #[test]
    fn is_zero() {
        if !cpuid::AVX512VL.is_supported() {
            return;
        }
        assert!(M512i::ZERO.is_zero());
        assert!(M512i::zero().is_zero());
        for i in 0..64 {
            let v = 1_u64 << i;
            for j in 0..8 {
                let mut array = [0u64; 8];
                array[j] = v;
                assert!(!M512i::from(array).is_zero());
            }
        }
        for _i in 0..128 {
            let base = M512i::random();
            assert_eq!(base.is_zero(), <[u64; 8]>::from(base) == [0u64; 8]);
        }
    }
}
