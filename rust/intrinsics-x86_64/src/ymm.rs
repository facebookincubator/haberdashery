// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::__m128i;

#[derive(Copy, Clone)]
#[repr(transparent)]
pub struct __m256i(core::arch::x86_64::__m256i);

impl From<core::arch::x86_64::__m256i> for __m256i {
    #[inline]
    fn from(v: core::arch::x86_64::__m256i) -> Self {
        Self(v)
    }
}

impl From<__m256i> for core::arch::x86_64::__m256i {
    #[inline]
    fn from(v: __m256i) -> Self {
        v.0
    }
}

impl core::ops::BitAnd for __m256i {
    type Output = Self;
    #[inline]
    fn bitand(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_and_si256(self.0, rhs.0) })
    }
}

impl core::ops::BitOr for __m256i {
    type Output = Self;
    #[inline]
    fn bitor(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_or_si256(self.0, rhs.0) })
    }
}

impl core::ops::BitXor for __m256i {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_xor_si256(self.0, rhs.0) })
    }
}

impl core::ops::BitXorAssign for __m256i {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        *self = *self ^ rhs;
    }
}

impl __m256i {
    pub const ZERO: Self = Self(unsafe { core::mem::zeroed() });

    // ── constructors ────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_castsi128_si256(a: __m128i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_castsi128_si256(a.into()) })
    }

    #[inline]
    pub fn _mm256_inserti128_si256<const IMM8: i32>(self, b: __m128i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_inserti128_si256::<IMM8>(self.0, b.into()) })
    }

    #[inline]
    pub fn _mm256_set1_epi64x(a: i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_set1_epi64x(a) })
    }

    #[inline]
    pub fn _mm256_set_epi8(
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
            core::arch::x86_64::_mm256_set_epi8(
                e31, e30, e29, e28, e27, e26, e25, e24, e23, e22, e21, e20, e19, e18, e17, e16,
                e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0,
            )
        })
    }

    #[inline]
    pub fn _mm256_broadcastsi128_si256(a: __m128i) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_broadcastsi128_si256(a.into()) })
    }

    #[inline]
    pub fn _mm256_set_epi64x(e3: i64, e2: i64, e1: i64, e0: i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_set_epi64x(e3, e2, e1, e0) })
    }

    #[inline]
    pub fn _mm256_setr_epi64x(e0: i64, e1: i64, e2: i64, e3: i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_set_epi64x(e3, e2, e1, e0) })
    }

    #[inline]
    pub fn _mm256_setzero_si256() -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_setzero_si256() })
    }

    #[inline]
    pub unsafe fn _mm256_loadu_si256(ptr: *const u8) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_loadu_si256(ptr as *const _) })
    }

    // ── stores ──────────────────────────────────────────────────────

    #[inline]
    pub unsafe fn _mm256_storeu_si256(self, ptr: *mut u8) {
        unsafe { core::arch::x86_64::_mm256_storeu_si256(ptr as *mut _, self.0) }
    }

    // ── arithmetic ──────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_add_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_add_epi64(self.0, b.0) })
    }

    #[inline]
    pub fn _mm256_sub_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_sub_epi64(self.0, b.0) })
    }

    // ── shifts ──────────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_srli_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_srli_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm256_slli_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_slli_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm256_bslli_epi128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_bslli_epi128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm256_bsrli_epi128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_bsrli_epi128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm256_srlv_epi64(self, count: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_srlv_epi64(self.0, count.0) })
    }

    #[inline]
    pub fn _mm256_sllv_epi64(self, count: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_sllv_epi64(self.0, count.0) })
    }

    // ── shuffles / permutes ─────────────────────────────────────────

    #[inline]
    pub fn _mm256_permute4x64_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_permute4x64_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm256_shuffle_epi8(self, mask: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_shuffle_epi8(self.0, mask.0) })
    }

    #[inline]
    pub fn _mm256_shuffle_epi32<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_shuffle_epi32::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm256_mask_xor_epi64(self, mask: u8, a: Self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_mask_xor_epi64(self.0, mask, a.0, b.0) })
    }

    // ── AES / carry-less multiply ──────────────────────────────────

    #[inline]
    pub fn _mm256_aesenc_epi128(self, round_key: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_aesenc_epi128(self.0, round_key.0) })
    }

    #[inline]
    pub fn _mm256_aesenclast_epi128(self, round_key: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_aesenclast_epi128(self.0, round_key.0) })
    }

    #[inline]
    pub fn _mm256_clmulepi64_epi128<const IMM8: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_clmulepi64_epi128::<IMM8>(self.0, b.0) })
    }

    #[inline]
    pub fn _mm256_permutexvar_epi64(self, idx: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_permutexvar_epi64(idx.0, self.0) })
    }

    #[inline]
    pub fn _mm256_blend_epi32<const IMM8: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_blend_epi32::<IMM8>(self.0, b.0) })
    }

    #[inline]
    pub fn _mm256_broadcastq_epi64(self) -> Self {
        Self(unsafe {
            core::arch::x86_64::_mm256_broadcastq_epi64(core::arch::x86_64::_mm256_castsi256_si128(
                self.0,
            ))
        })
    }

    // ── IFMA (AVX512_IFMA + AVX512VL) ──────────────────────────────

    /// Multiply-add low 52 bits: dst[i] = src[i] + a[i]*b[i] (low 52 of 104-bit product)
    #[inline]
    pub fn _mm256_madd52lo_epu64(self, a: Self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_madd52lo_epu64(self.0, a.0, b.0) })
    }

    /// Multiply-add high 52 bits: dst[i] = src[i] + (a[i]*b[i] >> 52)
    #[inline]
    pub fn _mm256_madd52hi_epu64(self, a: Self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_madd52hi_epu64(self.0, a.0, b.0) })
    }

    // ── compare ─────────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_cmpgt_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_cmpgt_epi64(self.0, b.0) })
    }

    // ── extract ─────────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_extract_epi64<const IDX: i32>(self) -> i64 {
        unsafe { core::arch::x86_64::_mm256_extract_epi64::<IDX>(self.0) }
    }

    #[inline]
    pub fn _mm256_extracti128_si256<const IMM8: i32>(self) -> __m128i {
        __m128i::from(unsafe { core::arch::x86_64::_mm256_extracti128_si256::<IMM8>(self.0) })
    }

    /// Extract to [u64; 4] array.
    #[inline]
    pub fn to_u64_array(self) -> [u64; 4] {
        let mut out = [0u64; 4];
        unsafe {
            core::arch::x86_64::_mm256_storeu_si256(out.as_mut_ptr() as *mut _, self.0);
        }
        out
    }

    /// Build from [u64; 4] array.
    #[inline]
    pub fn from_u64_array(v: [u64; 4]) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_loadu_si256(v.as_ptr() as *const _) })
    }

    // ── cast ────────────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_castsi256_si128(self) -> __m128i {
        __m128i::from(unsafe { core::arch::x86_64::_mm256_castsi256_si128(self.0) })
    }

    // ── additional shuffles / permutes ──────────────────────────────

    #[inline]
    pub fn _mm256_unpacklo_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_unpacklo_epi64(self.0, b.0) })
    }

    #[inline]
    pub fn _mm256_unpackhi_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_unpackhi_epi64(self.0, b.0) })
    }

    #[inline]
    pub fn _mm256_permute2x128_si256<const IMM8: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_permute2x128_si256::<IMM8>(self.0, b.0) })
    }

    /// `valignq ymm`: concatenate [self || b] and extract 4 qwords starting at position IMM8.
    /// Result[i] = concat[IMM8 + i] where concat = [self[0..3], b[0..3]].
    #[inline]
    pub fn _mm256_alignr_epi64<const IMM8: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_alignr_epi64::<IMM8>(self.0, b.0) })
    }

    // ── multiply ────────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_mullo_epi64(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_mullo_epi64(self.0, b.0) })
    }

    // ── blend ───────────────────────────────────────────────────────

    #[inline]
    pub fn _mm256_blendv_epi8(self, b: Self, mask: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm256_blendv_epi8(self.0, b.0, mask.0) })
    }
}
