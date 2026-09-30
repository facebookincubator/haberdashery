// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[derive(Copy, Clone)]
#[repr(transparent)]
pub struct __m128i(pub core::arch::x86_64::__m128i);

impl From<core::arch::x86_64::__m128i> for __m128i {
    #[inline]
    fn from(v: core::arch::x86_64::__m128i) -> Self {
        Self(v)
    }
}

impl From<__m128i> for core::arch::x86_64::__m128i {
    #[inline]
    fn from(v: __m128i) -> Self {
        v.0
    }
}

impl core::ops::BitXor for __m128i {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_xor_si128(self.0, rhs.0) })
    }
}

impl core::ops::BitXorAssign for __m128i {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        *self = *self ^ rhs;
    }
}

impl core::ops::BitOr for __m128i {
    type Output = Self;
    #[inline]
    fn bitor(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_or_si128(self.0, rhs.0) })
    }
}

impl core::ops::BitOrAssign for __m128i {
    #[inline]
    fn bitor_assign(&mut self, rhs: Self) {
        *self = *self | rhs;
    }
}

impl core::ops::BitAnd for __m128i {
    type Output = Self;
    #[inline]
    fn bitand(self, rhs: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_and_si128(self.0, rhs.0) })
    }
}

impl core::ops::BitAndAssign for __m128i {
    #[inline]
    fn bitand_assign(&mut self, rhs: Self) {
        *self = *self & rhs;
    }
}

impl __m128i {
    pub const ZERO: Self = Self(unsafe { core::mem::zeroed() });

    // ── constructors ────────────────────────────────────────────────

    #[inline]
    pub unsafe fn _mm_loadu_si128(ptr: *const u8) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_loadu_si128(ptr as *const _) })
    }

    #[inline]
    pub unsafe fn _mm_mask_loadu_epi8(self, k: u16, ptr: *const u8) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_mask_loadu_epi8(self.0, k, ptr as *const _) })
    }

    #[inline]
    pub unsafe fn _mm_mask_storeu_epi8(self, k: u16, ptr: *mut u8) {
        unsafe { core::arch::x86_64::_mm_mask_storeu_epi8(ptr as *mut _, k, self.0) }
    }

    #[inline]
    pub fn _mm_mask_mov_epi8(self, k: u16, a: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_mask_mov_epi8(self.0, k, a.0) })
    }

    #[inline]
    pub fn _mm_set_epi32(e3: i32, e2: i32, e1: i32, e0: i32) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_set_epi32(e3, e2, e1, e0) })
    }

    #[inline]
    pub fn _mm_set_epi64x(e1: i64, e0: i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_set_epi64x(e1, e0) })
    }

    #[inline]
    pub fn _mm_set_epi8(
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
            core::arch::x86_64::_mm_set_epi8(
                e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0,
            )
        })
    }

    // ── self operations ─────────────────────────────────────────────

    #[inline]
    pub fn _mm_add_epi32(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_add_epi32(self.0, b.0) })
    }

    #[inline]
    pub fn _mm_aesenc_si128(self, round_key: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_aesenc_si128(self.0, round_key.0) })
    }

    #[inline]
    pub fn _mm_aesenclast_si128(self, round_key: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_aesenclast_si128(self.0, round_key.0) })
    }

    #[inline]
    pub fn _mm_aeskeygenassist_si128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_aeskeygenassist_si128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_clmulepi64_si128<const IMM8: i32>(self, b: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_clmulepi64_si128::<IMM8>(self.0, b.0) })
    }

    #[inline]
    pub fn _mm_shuffle_epi32<const MASK: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_shuffle_epi32::<MASK>(self.0) })
    }

    #[inline]
    pub fn _mm_shuffle_epi8(self, mask: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_shuffle_epi8(self.0, mask.0) })
    }

    #[inline]
    pub fn _mm_slli_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_slli_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_slli_si128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_slli_si128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_srai_epi32<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_srai_epi32::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_srli_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_srli_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_srli_si128<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_srli_si128::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_movemask_epi8(self) -> i32 {
        unsafe { core::arch::x86_64::_mm_movemask_epi8(self.0) }
    }

    #[inline]
    pub fn _mm_testz_si128(self, b: Self) -> i32 {
        unsafe { core::arch::x86_64::_mm_testz_si128(self.0, b.0) }
    }

    #[inline]
    pub unsafe fn _mm_storeu_si128(self, ptr: *mut u8) {
        unsafe { core::arch::x86_64::_mm_storeu_si128(ptr as *mut _, self.0) }
    }

    // ── AVX-512 xmm operations ─────────────────────────────────────

    #[inline]
    pub fn _mm_setzero_si128() -> Self {
        Self(unsafe { core::arch::x86_64::_mm_setzero_si128() })
    }

    #[inline]
    pub fn _mm_set1_epi64x(a: i64) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_set1_epi64x(a) })
    }

    #[inline]
    pub fn _mm_extract_epi64<const IMM8: i32>(self) -> i64 {
        unsafe { core::arch::x86_64::_mm_extract_epi64(self.0, IMM8) }
    }

    #[inline]
    pub fn _mm_rolv_epi64(self, count: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_rolv_epi64(self.0, count.0) })
    }

    #[inline]
    pub fn _mm_rol_epi64<const IMM8: i32>(self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_rol_epi64::<IMM8>(self.0) })
    }

    #[inline]
    pub fn _mm_ternarylogic_epi64<const IMM8: i32>(self, b: Self, c: Self) -> Self {
        Self(unsafe { core::arch::x86_64::_mm_ternarylogic_epi64::<IMM8>(self.0, b.0, c.0) })
    }
}
