// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;
use core::mem::MaybeUninit;
use core::mem::size_of;
use core::mem::transmute;
use core::ops::BitAnd;
use core::ops::BitAndAssign;
use core::ops::BitOr;
use core::ops::BitOrAssign;
use core::ops::BitXor;
use core::ops::BitXorAssign;
use core::ops::Deref;
use core::ops::DerefMut;
use core::ops::Range;
use core::ptr::copy_nonoverlapping;

use intrinsics::__m256i::*;
use intrinsics::u32::*;

use super::m128i::M128i;
use crate::ffi::pod::Pod;

#[repr(transparent)]
#[derive(Clone, Copy)]
pub struct M256i(__m256i);
impl M256i {
    pub const SIZE: usize = size_of::<Self>();
    pub const ZERO: Self = Self::from_bytes([0u8; Self::SIZE]);

    #[inline]
    pub const fn from_bytes(bytes: [u8; Self::SIZE]) -> Self {
        unsafe { transmute(bytes) }
    }
    #[inline]
    pub unsafe fn load<T>(ptr: *const T) -> Self {
        unsafe { __m256i::_mm256_loadu_si256(ptr as *const __m256i) }
    }
    #[inline]
    pub unsafe fn store<T>(self, ptr: *mut T) {
        unsafe { _mm256_storeu_si256(ptr as *mut __m256i, *self) };
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
        unsafe { self._mm256_testz_si256(self) == 1 }
    }
    #[inline]
    pub fn crypto_equals(self, rhs: M256i) -> bool {
        (self ^ rhs).is_zero()
    }
    #[inline]
    pub fn zero() -> Self {
        unsafe { __m256i::_mm256_setzero_si256() }
    }
}
impl Default for M256i {
    #[inline]
    fn default() -> Self {
        Self::ZERO
    }
}
impl<T: Into<M256i>> BitXor<T> for M256i {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: T) -> Self::Output {
        unsafe { self._mm256_xor_si256(rhs.into()) }
    }
}
impl BitXorAssign for M256i {
    #[inline]
    fn bitxor_assign(&mut self, other: Self) {
        *self = *self ^ other;
    }
}
impl<T: Into<M256i>> BitAnd<T> for M256i {
    type Output = Self;
    #[inline]
    fn bitand(self, other: T) -> Self::Output {
        unsafe { self._mm256_and_si256(other.into()) }
    }
}
impl BitAndAssign for M256i {
    #[inline]
    fn bitand_assign(&mut self, other: Self) {
        *self = *self & other;
    }
}
impl<T: Into<M256i>> BitOr<T> for M256i {
    type Output = Self;
    #[inline]
    fn bitor(self, other: T) -> Self::Output {
        unsafe { self._mm256_or_si256(other.into()) }
    }
}
impl BitOrAssign for M256i {
    #[inline]
    fn bitor_assign(&mut self, other: Self) {
        *self = *self | other;
    }
}
impl Deref for M256i {
    type Target = __m256i;
    #[inline]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl DerefMut for M256i {
    #[inline]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}
impl From<M256i> for __m256i {
    #[inline]
    fn from(reg: M256i) -> Self {
        reg.0
    }
}
impl From<__m256i> for M256i {
    #[inline]
    fn from(reg: __m256i) -> Self {
        Self(reg)
    }
}
impl From<[u8; Self::SIZE]> for M256i {
    #[inline]
    fn from(array: [u8; Self::SIZE]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M256i> for [u8; M256i::SIZE] {
    #[inline]
    fn from(reg: M256i) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[u32; 8]> for M256i {
    #[inline]
    fn from(array: [u32; 8]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M256i> for [u32; 8] {
    #[inline]
    fn from(reg: M256i) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[u64; 4]> for M256i {
    #[inline]
    fn from(array: [u64; 4]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M256i> for [u64; 4] {
    #[inline]
    fn from(reg: M256i) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[M128i; 2]> for M256i {
    #[inline]
    fn from(v: [M128i; 2]) -> Self {
        unsafe { __m256i::_mm256_set_m128i(v[1], v[0]) }
    }
}
impl From<M256i> for [M128i; 2] {
    #[inline]
    fn from(reg: M256i) -> Self {
        unsafe {
            [
                reg._mm256_castsi256_si128(),
                reg._mm256_extracti128_si256::<1>().into(),
            ]
        }
    }
}
unsafe impl Pod for M256i {
    #[inline]
    unsafe fn load(ptr: *const u8) -> Self {
        unsafe { Self::load(ptr) }
    }
    #[inline]
    #[track_caller]
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self {
        unsafe { Self::load_range(ptr, 0..len) }
    }
    #[inline]
    unsafe fn store(&self, ptr: *mut u8) {
        unsafe { Self::store(*self, ptr) }
    }
    #[inline]
    unsafe fn store_partial(&self, ptr: *mut u8, len: usize) {
        self.store_range(ptr, 0..len)
    }
}

// Intrinsics wrappers
impl M256i {
    #[inline]
    pub fn aesenc(self, round_key: Self) -> Self {
        unsafe { self._mm256_aesenc_epi128(round_key) }
    }
    #[inline]
    pub fn aesenclast(self, round_key: Self) -> Self {
        unsafe { self._mm256_aesenclast_epi128(round_key) }
    }
    #[inline]
    pub fn aesdec(self, round_key: Self) -> Self {
        unsafe { self._mm256_aesdec_epi128(round_key) }
    }
    #[inline]
    pub fn aesdeclast(self, round_key: Self) -> Self {
        unsafe { self._mm256_aesdeclast_epi128(round_key) }
    }
    #[inline]
    pub fn clmul<const IMM8: i32>(self, other: Self) -> Self {
        unsafe { self._mm256_clmulepi64_epi128::<IMM8>(other) }.into()
    }
    #[inline]
    pub fn left_byteshift128<const IMM8: i32>(self) -> Self {
        unsafe { _mm256_bslli_epi128::<IMM8>(self.into()) }.into()
    }
    #[inline]
    pub fn right_byteshift128<const IMM8: i32>(self) -> Self {
        unsafe { _mm256_bsrli_epi128::<IMM8>(self.into()) }.into()
    }
    #[inline]
    pub fn shuffle32<const IMM8: i32>(self) -> Self {
        unsafe { _mm256_shuffle_epi32::<IMM8>(self.into()) }.into()
    }
    #[inline]
    pub fn unpacklo64(self, other: Self) -> Self {
        unsafe { self._mm256_unpacklo_epi64(other) }
    }
    #[inline]
    pub fn unpackhi64(self, other: Self) -> Self {
        unsafe { self._mm256_unpackhi_epi64(other) }
    }
    /// Returns a copy with bytes outside of range zeroed out.
    /// Unsafe since we require a subrange of [0, 16].
    #[inline]
    #[track_caller]
    pub unsafe fn mov_range(self, mut range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid M256i::load_range length: {} > {}",
            range.end,
            Self::SIZE
        );
        range.start = range.start.min(range.end);
        if cfg!(feature = "avx512vl") && cfg!(feature = "avx512bw") {
            self.mov_range_avx512(range)
        } else {
            self.mov_range_ref(range)
        }
    }
    #[inline]
    pub unsafe fn mov_range_avx512(self, range: Range<usize>) -> Self {
        let Range { start, end } = range;
        let start_mask = 0xff_ff_ff_ff._bzhi_u32(start as u32);
        let end_mask = 0xff_ff_ff_ff._bzhi_u32(end as u32);
        unsafe { __m256i::_mm256_maskz_mov_epi8(start_mask ^ end_mask, self) }
    }
    #[inline]
    pub unsafe fn mov_range_ref(self, range: Range<usize>) -> Self {
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { Self::load_range(buf.as_ptr().add(range.start), range) }
    }
    /// Loads the bytes from ptr into to M256i at the given range.
    /// For the range [a..b], the 'a'-th byte of M256i will contain *ptr and the 'b'-th byte will contain *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    #[track_caller]
    pub unsafe fn load_range(ptr: *const u8, mut range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid M256i::load_range length: {} > {}",
            range.end,
            Self::SIZE
        );
        range.start = range.start.min(range.end);
        if cfg!(feature = "avx512vl") && cfg!(feature = "avx512bw") {
            Self::load_range_avx512(ptr, range)
        } else {
            Self::load_range_ref(ptr, range)
        }
    }
    #[inline]
    pub unsafe fn load_range_avx512(ptr: *const u8, range: Range<usize>) -> Self {
        let Range { start, end } = range;
        let start_mask = 0xff_ff_ff_ff._bzhi_u32(start as u32);
        let end_mask = 0xff_ff_ff_ff._bzhi_u32(end as u32);
        unsafe {
            __m256i::_mm256_maskz_loadu_epi8(start_mask ^ end_mask, ptr.sub(start) as *const i8)
        }
    }
    #[inline]
    pub unsafe fn load_range_ref(ptr: *const u8, range: Range<usize>) -> Self {
        let Range { start, end } = range;
        let mut buf = [0u8; Self::SIZE];
        unsafe { copy_nonoverlapping(ptr, buf.as_mut_ptr().add(start), end - start) };
        buf.into()
    }
    /// Stores bytes from M256i within the given range into ptr.
    /// For the range [a..b], the 'a'-th byte of M256i will be copied to *ptr and the 'b'-th byte will be copied to *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    pub unsafe fn store_range(self, ptr: *mut u8, mut range: Range<usize>) {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid M256i::store_prefix length: {} > {}",
            range.end,
            Self::SIZE
        );
        range.start = range.start.min(range.end);
        if cfg!(feature = "avx512vl") && cfg!(feature = "avx512bw") {
            self.store_range_avx512(ptr, range);
        } else {
            self.store_range_ref(ptr, range);
        }
    }
    #[inline]
    pub unsafe fn store_range_avx512(self, ptr: *mut u8, range: Range<usize>) {
        let Range { start, end } = range;
        let start_mask = 0xff_ff_ff_ff._bzhi_u32(start as u32);
        let end_mask = 0xff_ff_ff_ff._bzhi_u32(end as u32);
        unsafe { _mm256_mask_storeu_epi8(ptr.sub(start) as *mut i8, start_mask ^ end_mask, self.0) }
    }
    #[inline]
    pub unsafe fn store_range_ref(self, ptr: *mut u8, range: Range<usize>) {
        let Range { start, end } = range;
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { copy_nonoverlapping(buf.as_ptr().add(start), ptr, end - start) };
    }
}

#[cfg(test)]
mod tests {
    use core::cmp::PartialEq;
    use core::fmt::Debug;
    use core::fmt::Display;
    use core::fmt::Formatter;

    use super::*;

    impl<T: Into<Self> + Clone> PartialEq<T> for M256i {
        fn eq(&self, rhs: &T) -> bool {
            self.crypto_equals(rhs.clone().into())
        }
    }
    impl core::cmp::PartialEq<&str> for M256i {
        fn eq(&self, other: &&str) -> bool {
            self.encode_hex() == *other
        }
    }
    impl core::cmp::PartialEq<String> for M256i {
        fn eq(&self, other: &String) -> bool {
            self.encode_hex() == *other
        }
    }
    impl Debug for M256i {
        fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
            write!(f, r#""{}""#, &self.encode_hex())
        }
    }
    impl Display for M256i {
        fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
            write!(f, "{}", &self.encode_hex())
        }
    }
    impl M256i {
        pub fn from_hex(hex: &str) -> Result<Self, hex::FromHexError> {
            use hex::FromHex;
            Ok(<[u8; 32]>::from_hex(hex)?.into())
        }
        pub fn encode_hex(self) -> String {
            hex::encode::<[u8; Self::SIZE]>(self.into())
        }
        pub fn random() -> Self {
            random::array().into()
        }
    }

    #[test]
    fn conversions() {
        for _i in 0..128 {
            let base = M256i::random();
            let array: [M128i; 2] = base.into();
            assert_eq!(base, array);
            let array: [u64; 4] = base.into();
            assert_eq!(base, array);
            let array: [u32; 8] = base.into();
            assert_eq!(base, array);
        }
    }
    #[test]
    fn is_zero() {
        assert!(M256i::ZERO.is_zero());
        assert!(M256i::zero().is_zero());
        for i in 0..64 {
            let v = 1_u64 << i;
            for j in 0..4 {
                let mut array = [0u64; 4];
                array[j] = v;
                assert!(!M256i::from(array).is_zero());
            }
        }
        for _i in 0..128 {
            let base = M256i::random();
            assert_eq!(base.is_zero(), <[u64; 4]>::from(base) == [0u64; 4]);
        }
    }

    #[test]
    fn mov_range() {
        let input_bytes: [u8; M256i::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);
        let input_block: M256i = input_bytes.into();

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let block = unsafe { input_block.mov_range(i..j) };
                let bytes: [u8; M256i::SIZE] = block.into();
                for k in 0..input_bytes.len() {
                    match i <= k && k < j {
                        true => assert_eq!(bytes[k], input_bytes[k]),
                        false => assert_eq!(bytes[k], 0),
                    }
                }

                if (cpuid::AVX512VL | cpuid::AVX512BW).is_supported() {
                    assert_eq!(
                        unsafe { input_block.mov_range_ref(i..j) },    //
                        unsafe { input_block.mov_range_avx512(i..j) }, //
                    );
                }
            }
        }
    }

    #[test]
    fn load_range() {
        let input_bytes: [u8; M256i::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let block = unsafe { M256i::load_range(input_bytes.as_ptr(), i..j) };
                let bytes: [u8; M256i::SIZE] = block.into();
                for k in 0..input_bytes.len() {
                    match i <= k && k < j {
                        true => assert_eq!(bytes[k], input_bytes[k - i]),
                        false => assert_eq!(bytes[k], 0),
                    }
                }
                if (cpuid::AVX512VL | cpuid::AVX512BW).is_supported() {
                    assert_eq!(
                        unsafe { M256i::load_range_ref(input_bytes.as_ptr(), i..j) },
                        unsafe { M256i::load_range_avx512(input_bytes.as_ptr(), i..j) },
                    );
                }
            }
        }
    }

    #[test]
    fn store_range() {
        let input_bytes: [u8; M256i::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);
        let input_block: M256i = input_bytes.into();

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let mut bytes = [0u8; M256i::SIZE];
                unsafe { input_block.store_range(bytes.as_mut_ptr(), i..j) };
                for k in 0..j - i {
                    assert_eq!(bytes[k], input_bytes[k + i]);
                }
                for &byte in &bytes[j - i..] {
                    assert_eq!(byte, 0);
                }
                if (cpuid::AVX512VL | cpuid::AVX512BW).is_supported() {
                    let mut bytes_ref = [0u8; M256i::SIZE];
                    let mut bytes_avx512 = [0u8; M256i::SIZE];
                    unsafe { input_block.store_range_ref(bytes_ref.as_mut_ptr(), i..j) };
                    unsafe { input_block.store_range_avx512(bytes_avx512.as_mut_ptr(), i..j) };
                    assert_eq!(M256i::from(bytes_ref), M256i::from(bytes_avx512));
                }
            }
        }
    }
}
