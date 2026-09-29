// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::aarch64 as arch;

/// Typed wrapper around one 128-bit Advanced SIMD register.
///
/// Like the x86 wrappers in this repository, this keeps architecture
/// intrinsics behind a small value type with ordinary Rust operators.
#[derive(Copy, Clone)]
#[repr(transparent)]
pub struct uint8x16_t(pub arch::uint8x16_t);

impl uint8x16_t {
    pub const ZERO: Self = Self(unsafe { core::mem::zeroed() });

    #[inline]
    pub const fn from_bytes(bytes: [u8; 16]) -> Self {
        unsafe { core::mem::transmute(bytes) }
    }

    #[inline]
    pub const fn from_u32(words: [u32; 4]) -> Self {
        unsafe { core::mem::transmute(words) }
    }

    #[inline]
    pub const fn from_u64(words: [u64; 2]) -> Self {
        unsafe { core::mem::transmute(words) }
    }

    #[inline]
    pub fn to_bytes(self) -> [u8; 16] {
        unsafe { core::mem::transmute(self) }
    }

    #[inline]
    pub fn to_u64(self) -> [u64; 2] {
        unsafe { core::mem::transmute(self) }
    }

    #[inline]
    pub unsafe fn vld1q_u8(ptr: *const u8) -> Self {
        Self(unsafe { arch::vld1q_u8(ptr) })
    }

    #[inline]
    pub unsafe fn vst1q_u8(self, ptr: *mut u8) {
        unsafe { arch::vst1q_u8(ptr, self.0) }
    }

    /// AESE: AddRoundKey, SubBytes, and ShiftRows.
    #[inline]
    pub fn vaeseq_u8(self, key: Self) -> Self {
        Self(unsafe { arch::vaeseq_u8(self.0, key.0) })
    }

    /// AESMC: MixColumns.
    #[inline]
    pub fn vaesmcq_u8(self) -> Self {
        Self(unsafe { arch::vaesmcq_u8(self.0) })
    }

    /// AESIMC: InvMixColumns.
    #[inline]
    pub fn vaesimcq_u8(self) -> Self {
        Self(unsafe { arch::vaesimcq_u8(self.0) })
    }

    #[inline]
    pub fn vgetq_lane_p64<const LANE: i32>(self) -> u64 {
        unsafe { arch::vgetq_lane_p64::<LANE>(arch::vreinterpretq_p64_u8(self.0)) }
    }

    #[inline]
    pub fn vmull_p64(a: u64, b: u64) -> Self {
        Self(unsafe { arch::vreinterpretq_u8_p128(arch::vmull_p64(a, b)) })
    }

    #[inline]
    pub fn vmull_high_p64(self, b: Self) -> Self {
        let a = unsafe { arch::vreinterpretq_p64_u8(self.0) };
        let b = unsafe { arch::vreinterpretq_p64_u8(b.0) };
        Self(unsafe { arch::vreinterpretq_u8_p128(arch::vmull_high_p64(a, b)) })
    }

    #[inline]
    pub fn vextq_u8<const N: i32>(self, b: Self) -> Self {
        Self(unsafe { arch::vextq_u8::<N>(self.0, b.0) })
    }

    #[inline]
    pub fn vextq_u64<const N: i32>(self, b: Self) -> Self {
        let a = unsafe { arch::vreinterpretq_u64_u8(self.0) };
        let b = unsafe { arch::vreinterpretq_u64_u8(b.0) };
        Self(unsafe { arch::vreinterpretq_u8_u64(arch::vextq_u64::<N>(a, b)) })
    }

    #[inline]
    pub fn vtrn1q_u64(self, b: Self) -> Self {
        let a = unsafe { arch::vreinterpretq_u64_u8(self.0) };
        let b = unsafe { arch::vreinterpretq_u64_u8(b.0) };
        Self(unsafe { arch::vreinterpretq_u8_u64(arch::vtrn1q_u64(a, b)) })
    }

    #[inline]
    pub fn vtrn2q_u64(self, b: Self) -> Self {
        let a = unsafe { arch::vreinterpretq_u64_u8(self.0) };
        let b = unsafe { arch::vreinterpretq_u64_u8(b.0) };
        Self(unsafe { arch::vreinterpretq_u8_u64(arch::vtrn2q_u64(a, b)) })
    }

    #[inline]
    pub fn vrev64q_u8(self) -> Self {
        Self(unsafe { arch::vrev64q_u8(self.0) })
    }

    #[inline]
    pub fn vrev32q_u8(self) -> Self {
        Self(unsafe { arch::vrev32q_u8(self.0) })
    }

    #[inline]
    pub fn vaddq_u32(self, b: Self) -> Self {
        let a = unsafe { arch::vreinterpretq_u32_u8(self.0) };
        let b = unsafe { arch::vreinterpretq_u32_u8(b.0) };
        Self(unsafe { arch::vreinterpretq_u8_u32(arch::vaddq_u32(a, b)) })
    }

    #[inline]
    pub fn vdupq_laneq_u32<const LANE: i32>(self) -> Self {
        let a = unsafe { arch::vreinterpretq_u32_u8(self.0) };
        Self(unsafe { arch::vreinterpretq_u8_u32(arch::vdupq_laneq_u32::<LANE>(a)) })
    }

    #[inline]
    pub fn vshlq_n_u64<const N: i32>(self) -> Self {
        let a = unsafe { arch::vreinterpretq_u64_u8(self.0) };
        Self(unsafe { arch::vreinterpretq_u8_u64(arch::vshlq_n_u64::<N>(a)) })
    }

    #[inline]
    pub fn vshrq_n_u64<const N: i32>(self) -> Self {
        let a = unsafe { arch::vreinterpretq_u64_u8(self.0) };
        Self(unsafe { arch::vreinterpretq_u8_u64(arch::vshrq_n_u64::<N>(a)) })
    }

    /// EOR3: three-way exclusive OR (SHA3 extension).
    #[inline]
    pub fn veor3q_u8(self, b: Self, c: Self) -> Self {
        Self(unsafe { arch::veor3q_u8(self.0, b.0, c.0) })
    }

    #[inline]
    pub fn vmaxvq_u8(self) -> u8 {
        unsafe { arch::vmaxvq_u8(self.0) }
    }
}

impl Default for uint8x16_t {
    #[inline]
    fn default() -> Self {
        Self::ZERO
    }
}

impl core::ops::BitXor for uint8x16_t {
    type Output = Self;

    #[inline]
    fn bitxor(self, rhs: Self) -> Self {
        Self(unsafe { arch::veorq_u8(self.0, rhs.0) })
    }
}

impl core::ops::BitXorAssign for uint8x16_t {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        *self = *self ^ rhs;
    }
}

impl core::ops::BitAnd for uint8x16_t {
    type Output = Self;

    #[inline]
    fn bitand(self, rhs: Self) -> Self {
        Self(unsafe { arch::vandq_u8(self.0, rhs.0) })
    }
}

impl core::ops::BitOr for uint8x16_t {
    type Output = Self;

    #[inline]
    fn bitor(self, rhs: Self) -> Self {
        Self(unsafe { arch::vorrq_u8(self.0, rhs.0) })
    }
}

impl From<[u8; 16]> for uint8x16_t {
    #[inline]
    fn from(value: [u8; 16]) -> Self {
        Self::from_bytes(value)
    }
}

impl From<[u32; 4]> for uint8x16_t {
    #[inline]
    fn from(value: [u32; 4]) -> Self {
        Self::from_u32(value)
    }
}

impl From<[u64; 2]> for uint8x16_t {
    #[inline]
    fn from(value: [u64; 2]) -> Self {
        Self::from_u64(value)
    }
}

impl From<uint8x16_t> for [u8; 16] {
    #[inline]
    fn from(value: uint8x16_t) -> Self {
        value.to_bytes()
    }
}

impl From<uint8x16_t> for [u64; 2] {
    #[inline]
    fn from(value: uint8x16_t) -> Self {
        value.to_u64()
    }
}

impl From<arch::uint8x16_t> for uint8x16_t {
    #[inline]
    fn from(value: arch::uint8x16_t) -> Self {
        Self(value)
    }
}

impl From<uint8x16_t> for arch::uint8x16_t {
    #[inline]
    fn from(value: uint8x16_t) -> Self {
        value.0
    }
}
