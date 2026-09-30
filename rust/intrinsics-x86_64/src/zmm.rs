// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::__m128i;
use crate::__m256i;

#[derive(Copy, Clone)]
#[repr(transparent)]
pub struct __m512i(pub core::arch::x86_64::__m512i);

impl From<core::arch::x86_64::__m512i> for __m512i {
    #[inline]
    fn from(v: core::arch::x86_64::__m512i) -> Self {
        Self(v)
    }
}

impl From<__m512i> for core::arch::x86_64::__m512i {
    #[inline]
    fn from(v: __m512i) -> Self {
        v.0
    }
}

impl From<[i64; 8]> for __m512i {
    #[inline]
    fn from(v: [i64; 8]) -> Self {
        Self(unsafe {
            core::arch::x86_64::_mm512_setr_epi64(v[0], v[1], v[2], v[3], v[4], v[5], v[6], v[7])
        })
    }
}

impl PartialEq for __m512i {
    #[inline]
    fn eq(&self, other: &Self) -> bool {
        unsafe {
            core::mem::transmute::<_, [u8; 64]>(self.0)
                == core::mem::transmute::<_, [u8; 64]>(other.0)
        }
    }
}
impl Eq for __m512i {}
impl core::fmt::Debug for __m512i {
    #[inline]
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        unsafe { core::mem::transmute::<_, [u8; 64]>(self.0).fmt(f) }
    }
}

impl core::ops::BitXor for __m512i {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_xor_si512(self.0, rhs.0) })
    }
}

impl core::ops::BitXorAssign for __m512i {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        *self = *self ^ rhs;
    }
}

impl core::ops::BitAnd for __m512i {
    type Output = Self;
    #[inline]
    fn bitand(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_and_si512(self.0, rhs.0) })
    }
}

impl core::ops::BitOr for __m512i {
    type Output = Self;
    #[inline]
    fn bitor(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_or_si512(self.0, rhs.0) })
    }
}

impl __m512i {
    pub const ZERO: Self = Self(unsafe { core::mem::zeroed() });

    // ── constructors ────────────────────────────────────────────────

    #[inline]
    pub unsafe fn _mm512_loadu_si512(ptr: *const u8) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_loadu_si512(ptr as *const _) })
    }

    #[inline]
    pub unsafe fn _mm512_maskz_loadu_epi8(mask: u64, ptr: *const u8) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_maskz_loadu_epi8(mask, ptr as *const i8) })
    }

    #[inline]
    pub fn _mm512_broadcast_i32x4(a: __m128i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_broadcast_i32x4(a.into()) })
    }

    #[inline]
    pub fn _mm512_castsi128_si512(a: __m128i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_castsi128_si512(a.into()) })
    }

    #[inline]
    pub fn _mm512_castsi256_si512(a: __m256i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_castsi256_si512(a.into()) })
    }

    #[inline]
    pub fn _mm512_set_epi32(
        e15: i32,
        e14: i32,
        e13: i32,
        e12: i32,
        e11: i32,
        e10: i32,
        e9: i32,
        e8: i32,
        e7: i32,
        e6: i32,
        e5: i32,
        e4: i32,
        e3: i32,
        e2: i32,
        e1: i32,
        e0: i32,
    ) -> Self {
        Self(unsafe {
            core::arch::x86_64::_mm512_set_epi32(
                e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0,
            )
        })
    }

    #[inline]
    pub fn _mm512_set_epi8(
        e63: i8,
        e62: i8,
        e61: i8,
        e60: i8,
        e59: i8,
        e58: i8,
        e57: i8,
        e56: i8,
        e55: i8,
        e54: i8,
        e53: i8,
        e52: i8,
        e51: i8,
        e50: i8,
        e49: i8,
        e48: i8,
        e47: i8,
        e46: i8,
        e45: i8,
        e44: i8,
        e43: i8,
        e42: i8,
        e41: i8,
        e40: i8,
        e39: i8,
        e38: i8,
        e37: i8,
        e36: i8,
        e35: i8,
        e34: i8,
        e33: i8,
        e32: i8,
        e31: i8,
        e30: i8,
        e29: i8,
        e28: i8,
        e27: i8,
        e26: i8,
        e25: i8,
        e24: i8,
        e23: i8,
        e22: i8,
        e21: i8,
        e20: i8,
        e19: i8,
        e18: i8,
        e17: i8,
        e16: i8,
        e15: i8,
        e14: i8,
        e13: i8,
        e12: i8,
        e11: i8,
        e10: i8,
        e9: i8,
        e8: i8,
        e7: i8,
        e6: i8,
        e5: i8,
        e4: i8,
        e3: i8,
        e2: i8,
        e1: i8,
        e0: i8,
    ) -> Self {
        Self(unsafe {
            core::arch::x86_64::_mm512_set_epi8(
                e63, e62, e61, e60, e59, e58, e57, e56, e55, e54, e53, e52, e51, e50, e49, e48,
                e47, e46, e45, e44, e43, e42, e41, e40, e39, e38, e37, e36, e35, e34, e33, e32,
                e31, e30, e29, e28, e27, e26, e25, e24, e23, e22, e21, e20, e19, e18, e17, e16,
                e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0,
            )
        })
    }

    #[inline]
    pub fn _mm512_set1_epi64(a: i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_set1_epi64(a) })
    }

    #[inline]
    pub fn _mm512_set_epi64(
        e7: i64,
        e6: i64,
        e5: i64,
        e4: i64,
        e3: i64,
        e2: i64,
        e1: i64,
        e0: i64,
    ) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_set_epi64(e7, e6, e5, e4, e3, e2, e1, e0) })
    }

    #[inline]
    pub fn _mm512_setzero_si512() -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_setzero_si512() })
    }

    #[inline]
    pub fn _mm512_permutexvar_epi64(self, a: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_permutexvar_epi64(self.0, a.0) })
    }

    #[inline]
    pub fn _mm512_rolv_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_rolv_epi64(self.0, b.0) })
    }

    #[inline]
    pub fn _mm512_rol_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_rol_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm512_mask_blend_epi64(self, k: u8, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_mask_blend_epi64(k, self.0, b.0) })
    }

    #[inline]
    pub fn _mm512_ternarylogic_epi64<const IMM8: i32>(self, b: Self, c: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_ternarylogic_epi64::<IMM8>(self.0, b.0, c.0) })
    }

    #[inline]
    pub unsafe fn _mm512_loadu_epi64(ptr: *const i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_loadu_epi64(ptr as *const _) })
    }

    #[inline]
    pub unsafe fn _mm512_storeu_epi64(ptr: *mut i64, a: Self) {
        unsafe { core::arch::x86_64::_mm512_storeu_epi64(ptr as *mut _, a.0) }
    }

    // ── self operations ─────────────────────────────────────────────

    #[inline]
    pub fn _mm512_add_epi32(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_add_epi32(self.0, b.0) })
    }

    #[inline]
    pub fn _mm512_aesenc_epi128(self, round_key: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_aesenc_epi128(self.0, round_key.0) })
    }

    #[inline]
    pub fn _mm512_aesenclast_epi128(self, round_key: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_aesenclast_epi128(self.0, round_key.0) })
    }

    #[inline]
    pub fn _mm512_clmulepi64_epi128<const IMM8: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_clmulepi64_epi128::<IMM8>(self.0, b.0) })
    }

    #[inline]
    pub fn _mm512_shuffle_epi8(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_shuffle_epi8(self.0, b.0) })
    }

    #[inline]
    pub fn _mm512_shuffle_epi32<const MASK: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_shuffle_epi32::<MASK>(self.0) })
    }

    #[inline]
    pub fn _mm512_shuffle_i64x2<const MASK: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_shuffle_i64x2::<MASK>(self.0, b.0) })
    }

    #[inline]
    pub fn _mm512_inserti64x4<const IMM8: i32>(self, b: __m256i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_inserti64x4(self.0, b.into(), IMM8) })
    }

    #[inline]
    pub fn _mm512_inserti64x2<const IMM8: i32>(self, b: __m128i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_inserti64x2(self.0, b.into(), IMM8) })
    }

    #[inline]
    pub fn _mm512_extracti32x4_epi32<const IMM8: i32>(self) -> __m128i {
        __m128i::from(unsafe { core::arch::x86_64::_mm512_extracti32x4_epi32::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm512_castsi512_si128(self) -> __m128i {
        __m128i::from(unsafe { core::arch::x86_64::_mm512_castsi512_si128(self.0) })
    }

    #[inline]
    pub fn _mm512_bslli_epi128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_bslli_epi128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm512_bsrli_epi128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_bsrli_epi128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm512_mask_xor_epi64(self, k: u8, a: Self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_mask_xor_epi64(self.0, k, a.0, b.0) })
    }

    #[inline]
    pub fn _mm512_maskz_mov_epi8(self, mask: u64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_maskz_mov_epi8(mask, self.0) })
    }

    #[inline]
    pub unsafe fn _mm512_mask_storeu_epi8(self, ptr: *mut u8, mask: u64) {
        unsafe { core::arch::x86_64::_mm512_mask_storeu_epi8(ptr as *mut i8, mask, self.0) }
    }

    #[inline]
    pub unsafe fn _mm512_storeu_si512(self, ptr: *mut u8) {
        unsafe { core::arch::x86_64::_mm512_storeu_si512(ptr as *mut _, self.0) }
    }

    /// Shift each 64-bit element right by IMM8 bits (logical).
    #[inline]
    pub fn _mm512_srli_epi64<const IMM8: u32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_srli_epi64::<IMM8>(self.0) })
    }

    /// Shift each 64-bit element left by IMM8 bits.
    #[inline]
    pub fn _mm512_slli_epi64<const IMM8: u32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm512_slli_epi64::<IMM8>(self.0) })
    }

    /// Unsigned 64-bit compare less-than → 8-bit mask.
    #[inline]
    pub fn _mm512_cmplt_epu64_mask(self, b: Self) -> u8 {
        unsafe { core::arch::x86_64::_mm512_cmplt_epu64_mask(self.0, b.0) }
    }

    /// Extract the low 64 bits (qword 0) as u64.
    #[inline]
    pub fn extract_u64<const IDX: usize>(self) -> u64 {
        let mut tmp = [0u64; 8];
        unsafe {
            core::arch::x86_64::_mm512_storeu_epi64(tmp.as_mut_ptr() as *mut _, self.0);
        }
        tmp[IDX]
    }
}
