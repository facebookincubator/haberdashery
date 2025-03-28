// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;
use core::mem::size_of;
use core::mem::MaybeUninit;
use core::ops::Range;
use core::ptr::copy_nonoverlapping;

use intrinsics::__m128i::*;
use intrinsics::u32::*;

use crate::ffi::pod::Pod;
use crate::intrinsics::m256i::M256i;

#[repr(transparent)]
#[derive(Clone, Copy)]
pub struct M128i(pub __m128i);

#[allow(unused)]
impl M128i {
    pub const SIZE: usize = size_of::<Self>();
    pub const ZERO: Self = Self::from_bytes([0u8; Self::SIZE]);

    #[inline]
    pub unsafe fn load<T>(ptr: *const T) -> Self {
        unsafe { __m128i::_mm_loadu_si128(ptr as *const __m128i) }
    }
    #[inline]
    pub unsafe fn store<T>(self, ptr: *mut T) {
        unsafe { _mm_storeu_si128(ptr as *mut __m128i, *self) };
    }
    #[inline]
    pub unsafe fn cast<T>(self) -> T {
        debug_assert_eq!(size_of::<T>(), size_of::<Self>());
        let mut result = MaybeUninit::uninit();
        unsafe { self.store(result.as_mut_ptr()) };
        unsafe { result.assume_init() }
    }
    #[inline]
    pub const fn from_bytes(bytes: [u8; Self::SIZE]) -> Self {
        unsafe { core::mem::transmute(bytes) }
    }
    #[inline]
    pub const fn from_u32(bytes: [u32; 4]) -> Self {
        unsafe { core::mem::transmute(bytes) }
    }
    #[inline]
    pub fn to_bytes(&self) -> [u8; Self::SIZE] {
        let mut bytes = [0u8; 16];
        unsafe { self.store(bytes.as_mut_ptr()) };
        bytes
    }
    #[inline]
    pub fn zero() -> Self {
        unsafe { __m128i::_mm_setzero_si128() }
    }
    #[inline]
    pub fn is_zero(self) -> bool {
        unsafe { self._mm_test_all_zeros(self) == 1 }
    }
    #[inline]
    pub fn crypto_equals(self, rhs: M128i) -> bool {
        (self ^ rhs).is_zero()
    }
}
impl Default for M128i {
    #[inline]
    fn default() -> Self {
        Self::zero()
    }
}
impl core::ops::Deref for M128i {
    type Target = __m128i;
    #[inline]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl core::ops::DerefMut for M128i {
    #[inline]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}
impl From<M128i> for __m128d {
    #[inline]
    fn from(reg: M128i) -> Self {
        unsafe { _mm_castsi128_pd(reg.into()) }
    }
}
impl From<__m128d> for M128i {
    #[inline]
    fn from(reg: __m128d) -> Self {
        unsafe { _mm_castpd_si128(reg) }.into()
    }
}
impl From<M128i> for __m128i {
    #[inline]
    fn from(reg: M128i) -> Self {
        reg.0
    }
}
impl From<__m128i> for M128i {
    #[inline]
    fn from(reg: __m128i) -> Self {
        Self(reg)
    }
}
impl From<[u8; Self::SIZE]> for M128i {
    #[inline]
    fn from(array: [u8; Self::SIZE]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<M128i> for [u8; M128i::SIZE] {
    #[inline]
    fn from(reg: M128i) -> Self {
        unsafe { reg.cast() }
    }
}
impl<T: Into<M128i>> core::ops::BitXor<T> for M128i {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: T) -> Self::Output {
        unsafe { self._mm_xor_si128(rhs.into()) }
    }
}
impl core::ops::BitXorAssign for M128i {
    #[inline]
    fn bitxor_assign(&mut self, other: Self) {
        *self = *self ^ other;
    }
}
impl<T: Into<M128i>> core::ops::BitAnd<T> for M128i {
    type Output = Self;
    #[inline]
    fn bitand(self, other: T) -> Self::Output {
        unsafe { self._mm_and_si128(other.into()) }
    }
}
impl core::ops::BitAndAssign for M128i {
    #[inline]
    fn bitand_assign(&mut self, other: Self) {
        *self = *self & other;
    }
}
impl<T: Into<M128i>> core::ops::BitOr<T> for M128i {
    type Output = Self;
    #[inline]
    fn bitor(self, other: T) -> Self::Output {
        unsafe { self._mm_or_si128(other.into()) }
    }
}
impl core::ops::BitOrAssign for M128i {
    #[inline]
    fn bitor_assign(&mut self, other: Self) {
        *self = *self | other;
    }
}
impl From<[u64; 2]> for M128i {
    #[inline]
    fn from(v: [u64; 2]) -> Self {
        unsafe { __m128i::_mm_set_epi64x(v.map(|v| v as i64)) }
    }
}
impl From<M128i> for [u64; 2] {
    #[inline]
    fn from(reg: M128i) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[u32; 4]> for M128i {
    #[inline]
    fn from(v: [u32; 4]) -> Self {
        unsafe { __m128i::_mm_set_epi32(v.map(|v| v as i32)) }
    }
}
impl From<M128i> for [u32; 4] {
    #[inline]
    fn from(reg: M128i) -> Self {
        unsafe { reg.cast() }
    }
}
unsafe impl Pod for M128i {
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
impl M128i {
    /// Returns a copy with bytes outside of range zeroed out.
    /// Unsafe since we require a subrange of [0, 16].
    #[inline]
    #[track_caller]
    pub unsafe fn mov_range(self, mut range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid M128i::load_range length: {} > {}",
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
        let start_mask = 0xff_ff_ff_ff._bzhi_u32(start as u32) as u16;
        let end_mask = 0xff_ff_ff_ff._bzhi_u32(end as u32) as u16;
        unsafe { __m128i::_mm_maskz_mov_epi8(start_mask ^ end_mask, self) }
    }
    #[inline]
    pub unsafe fn mov_range_ref(self, range: Range<usize>) -> Self {
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { Self::load_range(buf.as_ptr().add(range.start), range) }
    }
    /// Loads the bytes from ptr into to M128i at the given range.
    /// For the range [a..b], the 'a'-th byte of M128i will contain *ptr and the 'b'-th byte will contain *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    #[track_caller]
    pub unsafe fn load_range(ptr: *const u8, mut range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid M128i::load_range length: {} > {}",
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
        let start_mask = 0xff_ff_ff_ff._bzhi_u32(start as u32) as u16;
        let end_mask = 0xff_ff_ff_ff._bzhi_u32(end as u32) as u16;
        unsafe { __m128i::_mm_maskz_loadu_epi8(start_mask ^ end_mask, ptr.sub(start) as *const i8) }
    }
    #[inline]
    pub unsafe fn load_range_ref(ptr: *const u8, range: Range<usize>) -> Self {
        let Range { start, end } = range;
        let mut buf = [0u8; Self::SIZE];
        unsafe { copy_nonoverlapping(ptr, buf.as_mut_ptr().add(start), end - start) };
        buf.into()
    }
    /// Stores bytes from M128i within the given range into ptr.
    /// For the range [a..b], the 'a'-th byte of M128i will be copied to *ptr and the 'b'-th byte will be copied to *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    #[track_caller]
    pub unsafe fn store_range(self, ptr: *mut u8, mut range: Range<usize>) {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid M128i::store_prefix length: {} > {}",
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
        let start_mask = 0xff_ff_ff_ff._bzhi_u32(start as u32) as u16;
        let end_mask = 0xff_ff_ff_ff._bzhi_u32(end as u32) as u16;
        unsafe { _mm_mask_storeu_epi8(ptr.sub(start) as *mut i8, start_mask ^ end_mask, self.0) }
    }
    #[inline]
    pub unsafe fn store_range_ref(self, ptr: *mut u8, range: Range<usize>) {
        let Range { start, end } = range;
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { copy_nonoverlapping(buf.as_ptr().add(start), ptr, end - start) };
    }
    #[inline]
    pub fn select64<const IMM8: i32>(self, rhs: M128i) -> Self {
        unsafe { _mm_shuffle_pd::<IMM8>(self.into(), rhs.into()) }.into()
    }
    #[inline]
    pub fn shuffle8(self, shuffle: impl Into<M128i>) -> Self {
        unsafe { self._mm_shuffle_epi8(shuffle.into()) }
    }
    #[inline]
    pub fn shuffle32<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_shuffle_epi32::<IMM8>() }.into()
    }
    #[inline]
    pub fn add32(self, other: impl Into<Self>) -> Self {
        unsafe { self._mm_add_epi32(other.into()) }
    }
    #[inline]
    pub fn left_bitshift64<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_slli_epi64::<IMM8>() }.into()
    }
    #[inline]
    pub fn right_bitshift64<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_srli_epi64::<IMM8>() }.into()
    }
    #[inline]
    pub fn left_byteshift<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_slli_si128::<IMM8>() }.into()
    }
    #[inline]
    pub fn right_byteshift<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_srli_si128::<IMM8>() }.into()
    }
    #[inline]
    pub fn shift_right32<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_srli_epi32::<IMM8>() }.into()
    }
    #[inline]
    pub fn rotate_right32<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_ror_epi32::<IMM8>() }.into()
    }
    #[inline]
    pub fn unpacklo64(self, other: M128i) -> Self {
        unsafe { self._mm_unpacklo_epi64(other) }
    }
    #[inline]
    pub fn unpackhi64(self, other: M128i) -> Self {
        unsafe { self._mm_unpackhi_epi64(other) }
    }
    #[inline]
    pub fn blend8(self, other: Self, mask: impl Into<Self>) -> Self {
        unsafe { self._mm_blendv_epi8(other, mask.into()) }
    }
    #[inline]
    pub fn blend32<const IMM8: i32>(self, other: Self) -> Self {
        unsafe { self._mm_blend_epi32::<IMM8>(other) }.into()
    }
    #[inline]
    pub fn cmpgt32(self, other: M128i) -> Self {
        unsafe { self._mm_cmpgt_epi32(other) }
    }
    #[inline]
    pub fn byte_reverse(self) -> M128i {
        self.shuffle8([0x0c0d0e0f, 0x08090a0b, 0x04050607, 0x00010203])
    }
    #[inline]
    pub fn aeskeygenassist<const IMM8: i32>(self) -> Self {
        unsafe { self._mm_aeskeygenassist_si128::<IMM8>() }.into()
    }
    #[inline]
    pub fn aesenc(self, round_key: Self) -> Self {
        unsafe { self._mm_aesenc_si128(round_key) }
    }
    #[inline]
    pub fn aesenclast(self, round_key: Self) -> Self {
        unsafe { self._mm_aesenclast_si128(round_key) }
    }
    #[inline]
    pub fn aesdec(self, round_key: Self) -> Self {
        unsafe { self._mm_aesdec_si128(round_key) }
    }
    #[inline]
    pub fn aesdeclast(self, round_key: Self) -> Self {
        unsafe { self._mm_aesdeclast_si128(round_key) }
    }
    #[inline]
    pub fn aesimc(self) -> Self {
        unsafe { self._mm_aesimc_si128() }
    }
    #[inline]
    pub fn clmul<const IMM8: i32>(self, other: Self) -> Self {
        unsafe { self._mm_clmulepi64_si128::<IMM8>(other) }.into()
    }
    #[inline]
    pub fn broadcast256(self) -> M256i {
        unsafe { self._mm256_broadcastsi128_si256() }
    }
    #[inline]
    pub fn align<const IMM8: i32>(self, other: Self) -> Self {
        unsafe { self._mm_alignr_epi8::<IMM8>(other) }.into()
    }
    #[inline]
    pub fn sha256roundx2(self, state: [Self; 2]) -> Self {
        unsafe { state[0]._mm_sha256rnds2_epu32(state[1], self) }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    impl<T: Into<Self> + Clone> core::cmp::PartialEq<T> for M128i {
        fn eq(&self, rhs: &T) -> bool {
            self.crypto_equals(rhs.clone().into())
        }
    }
    impl core::cmp::PartialEq<&str> for M128i {
        fn eq(&self, other: &&str) -> bool {
            self.encode_hex() == *other
        }
    }
    impl core::cmp::PartialEq<String> for M128i {
        fn eq(&self, other: &String) -> bool {
            self.encode_hex() == *other
        }
    }
    impl core::fmt::Debug for M128i {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            write!(f, r#""{}""#, &self.encode_hex())
        }
    }
    impl core::fmt::Display for M128i {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            write!(f, "{}", &self.encode_hex())
        }
    }
    impl M128i {
        pub fn from_hex(hex: &str) -> Result<Self, hex::FromHexError> {
            use hex::FromHex;
            Ok(<[u8; 16]>::from_hex(hex)?.into())
        }
        pub fn encode_hex(self) -> String {
            hex::encode(<[u8; 16]>::from(self))
        }
        pub fn random() -> Self {
            random::array().into()
        }
    }
    impl random::Randomizable for M128i {
        fn random() -> Self {
            random::array().into()
        }
    }
    #[test]
    fn from_u32_array() {
        let reg: M128i = [0x00000000, 0x11111111, 0x22222222, 0x33333333].into();
        assert_eq!(reg, "00000000111111112222222233333333");
    }
    #[test]
    fn from_u64_array() {
        let reg: M128i = [0x0000000000000000, 0x1111111111111111].into();
        assert_eq!(reg, "00000000000000001111111111111111");
    }
    #[test]
    fn add32() {
        {
            let left = M128i::from([0x00000010, 0x00000020, 0x00000030, 0x00000040]);
            let right = M128i::from([1, 2, 3, 4]);
            assert_eq!(left.add32(right), "11000000220000003300000044000000");
        }
        {
            let left = M128i::from([0x00000000, 0xffffffff, 0x00000000, 0xffffffff]);
            let right = M128i::from([1, 2, 3, 4]);
            assert_eq!(left.add32(right), "01000000010000000300000003000000");
        }
    }
    #[test]
    fn shuffle8() {
        const IDENTITY_SHUFFLE: [u32; 4] = [0x03020100, 0x07060504, 0x0b0a0908, 0x0f0e0d0c];
        const BYTE_REVERSE_SHUFFLE: [u32; 4] = [0x0c0d0e0f, 0x08090a0b, 0x04050607, 0x00010203];
        {
            let base = M128i::from_hex("0123456789abcdef0123456789abcdef").unwrap();
            assert_eq!(base.shuffle8(IDENTITY_SHUFFLE), base);
            assert_eq!(
                base.shuffle8(BYTE_REVERSE_SHUFFLE),
                "efcdab8967452301efcdab8967452301"
            );
        }
    }
    #[test]
    fn shuffle32() {
        let reg = M128i::from([0x00000000, 0x11111111, 0x22222222, 0x33333333]);
        assert_eq!(reg.shuffle32::<0b_11_10_01_00>(), reg);
        assert_eq!(
            reg.shuffle32::<0b_00_00_00_00>(),
            "00000000000000000000000000000000"
        );
        assert_eq!(
            reg.shuffle32::<0b_01_01_01_01>(),
            "11111111111111111111111111111111"
        );
        assert_eq!(
            reg.shuffle32::<0b_10_10_10_10>(),
            "22222222222222222222222222222222"
        );
        assert_eq!(
            reg.shuffle32::<0b_11_11_11_11>(),
            "33333333333333333333333333333333"
        );
        assert_eq!(
            reg.shuffle32::<0b_00_01_10_11>(),
            "33333333222222221111111100000000"
        );
    }

    #[test]
    fn aeskeygenassist_alt() {
        for _i in 0..128 {
            let random = M128i::random();
            assert_eq!(
                random.aeskeygenassist::<0x01>().shuffle32::<0xff>(),
                random
                    .shuffle8([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d])
                    .aesenclast([1, 1, 1, 1].into())
            );

            {
                let random = M128i::random();
                assert_eq!(
                    random.aeskeygenassist::<0x00>().shuffle32::<0xaa>(),
                    random.shuffle32::<0xff>().aesenclast(M128i::zero())
                );
            }
        }
    }

    #[test]
    fn mov_range() {
        let input_bytes: [u8; M128i::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);
        let input_block: M128i = input_bytes.into();

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let block = unsafe { input_block.mov_range(i..j) };
                let bytes: [u8; M128i::SIZE] = block.into();
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
        let input_bytes: [u8; M128i::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let block = unsafe { M128i::load_range(input_bytes.as_ptr(), i..j) };
                let bytes: [u8; M128i::SIZE] = block.into();
                for k in 0..input_bytes.len() {
                    match i <= k && k < j {
                        true => assert_eq!(bytes[k], input_bytes[k - i]),
                        false => assert_eq!(bytes[k], 0),
                    }
                }
                if (cpuid::AVX512VL | cpuid::AVX512BW).is_supported() {
                    assert_eq!(
                        unsafe { M128i::load_range_ref(input_bytes.as_ptr(), i..j) },
                        unsafe { M128i::load_range_avx512(input_bytes.as_ptr(), i..j) },
                    );
                }
            }
        }
    }

    #[test]
    fn store_range() {
        let input_bytes: [u8; M128i::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);
        let input_block: M128i = input_bytes.into();

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let mut bytes = [0u8; M128i::SIZE];
                unsafe { input_block.store_range(bytes.as_mut_ptr(), i..j) };
                for k in 0..j - i {
                    assert_eq!(bytes[k], input_bytes[k + i]);
                }
                for &byte in &bytes[j - i..] {
                    assert_eq!(byte, 0);
                }
                if (cpuid::AVX512VL | cpuid::AVX512BW).is_supported() {
                    let mut bytes_ref = [0u8; M128i::SIZE];
                    let mut bytes_avx512 = [0u8; M128i::SIZE];
                    unsafe { input_block.store_range_ref(bytes_ref.as_mut_ptr(), i..j) };
                    unsafe { input_block.store_range_avx512(bytes_avx512.as_mut_ptr(), i..j) };
                    assert_eq!(M128i::from(bytes_ref), M128i::from(bytes_avx512));
                }
            }
        }
    }

    #[test]
    fn aesenc() {
        let key = M128i::from(hex_literal::hex!("551b9ba091fba324a7ad66257aa46c85"));
        assert_eq!(
            key.aesenc(M128i::zero()),
            "562037160da08f8641c467d570be20ae"
        );

        let input = M128i::from(hex_literal::hex!("f8752d94c86666af0729a80437ecff71"));
        assert_eq!(key.aesenc(input), "ae551a82c5c6e92946edcfd14752dfdf");

        for _i in 0..128 {
            let key = M128i::random();
            let input = M128i::random();
            assert_eq!(key.aesenc(input), input ^ key.aesenc(M128i::zero()));
        }
    }
    #[test]
    fn aesenclast() {
        let key = M128i::from(hex_literal::hex!("551b9ba091fba324a7ad66257aa46c85"));
        assert_eq!(
            key.aesenclast(M128i::zero()),
            "fc0f3397819550e05c491436daaf0a3f"
        );

        let input = M128i::from(hex_literal::hex!("f8752d94c86666af0729a80437ecff71"));
        assert_eq!(key.aesenclast(input), "047a1e0349f3364f5b60bc32ed43f54e");

        for _i in 0..128 {
            let key = M128i::random();
            let input = M128i::random();
            assert_eq!(key.aesenclast(input), input ^ key.aesenclast(M128i::zero()));
        }
    }
    #[test]
    fn select64() {
        for _i in 0..128 {
            let a: [u64; 2] = random::random();
            let b: [u64; 2] = random::random();
            assert_eq!(
                M128i::from(a).select64::<0b00>(M128i::from(b)),
                [a[0], b[0]]
            );
            assert_eq!(
                M128i::from(a).select64::<0b01>(M128i::from(b)),
                [a[1], b[0]]
            );
            assert_eq!(
                M128i::from(a).select64::<0b10>(M128i::from(b)),
                [a[0], b[1]]
            );
            assert_eq!(
                M128i::from(a).select64::<0b11>(M128i::from(b)),
                [a[1], b[1]]
            );
        }
    }
}
