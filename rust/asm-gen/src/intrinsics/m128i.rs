// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;
use core::mem::size_of;
use core::ptr::copy_nonoverlapping;

use ffi_util::Inout;

#[repr(transparent)]
#[derive(Clone, Copy)]
pub struct M128i(pub __m128i);

#[allow(unused)]
impl M128i {
    pub const BYTE_LEN: usize = size_of::<Self>();

    pub fn cast<T: From<[u8; size_of::<Self>()]>>(self) -> T {
        T::from(self.into())
    }
}
impl Default for M128i {
    #[inline(always)]
    fn default() -> Self {
        Self::zero()
    }
}
impl core::ops::Deref for M128i {
    type Target = __m128i;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl core::ops::DerefMut for M128i {
    #[inline(always)]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}
impl From<M128i> for __m128i {
    #[inline(always)]
    fn from(reg: M128i) -> Self {
        reg.0
    }
}
impl From<__m128i> for M128i {
    #[inline(always)]
    fn from(reg: __m128i) -> Self {
        Self(reg)
    }
}
impl From<[u8; Self::BYTE_LEN]> for M128i {
    #[inline(always)]
    fn from(array: [u8; Self::BYTE_LEN]) -> Self {
        unsafe { _mm_loadu_si128(array.as_ptr() as *const __m128i).into() }
    }
}
impl From<M128i> for [u8; M128i::BYTE_LEN] {
    #[inline(always)]
    fn from(reg: M128i) -> Self {
        let mut buf = [0u8; M128i::BYTE_LEN];
        unsafe { _mm_storeu_si128(buf.as_mut_ptr() as *mut __m128i, *reg) };
        buf
    }
}
impl<T: Into<M128i>> core::ops::BitXor<T> for M128i {
    type Output = Self;
    #[inline(always)]
    fn bitxor(self, other: T) -> Self::Output {
        unsafe { _mm_xor_si128(*self, *other.into()).into() }
    }
}
impl core::ops::BitXorAssign for M128i {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: Self) {
        *self = *self ^ other;
    }
}
impl<T: Into<M128i>> core::ops::BitAnd<T> for M128i {
    type Output = Self;
    #[inline(always)]
    fn bitand(self, other: T) -> Self::Output {
        unsafe { _mm_and_si128(*self, *other.into()).into() }
    }
}
impl core::ops::BitAndAssign for M128i {
    #[inline(always)]
    fn bitand_assign(&mut self, other: Self) {
        *self = *self & other;
    }
}
impl<T: Into<M128i>> core::ops::BitOr<T> for M128i {
    type Output = Self;
    #[inline(always)]
    fn bitor(self, other: T) -> Self::Output {
        unsafe { _mm_or_si128(*self, *other.into()).into() }
    }
}
impl core::ops::BitOrAssign for M128i {
    #[inline(always)]
    fn bitor_assign(&mut self, other: Self) {
        *self = *self | other;
    }
}
impl From<[u64; 2]> for M128i {
    #[inline(always)]
    fn from(v: [u64; 2]) -> Self {
        unsafe { _mm_set_epi64x(v[1] as i64, v[0] as i64).into() }
    }
}
impl From<[u32; 4]> for M128i {
    #[inline(always)]
    fn from(v: [u32; 4]) -> Self {
        unsafe { _mm_set_epi32(v[3] as i32, v[2] as i32, v[1] as i32, v[0] as i32).into() }
    }
}
#[derive(Clone, Copy)]
pub struct M128iArray<const N: usize>(pub [M128i; N]);
impl<const N: usize> M128iArray<N> {
    #[inline(always)]
    pub fn byte_reverse(self) -> Self {
        Self(self.0.map(M128i::byte_reverse))
    }
}
impl<const N: usize> Default for M128iArray<N> {
    #[inline(always)]
    fn default() -> Self {
        [M128i::default(); N].into()
    }
}
impl<const N: usize, T: Into<Self>> core::ops::BitXor<T> for M128iArray<N> {
    type Output = Self;
    #[inline(always)]
    fn bitxor(mut self, rhs: T) -> Self::Output {
        let rhs = rhs.into();
        for i in 0..N {
            self[i] ^= rhs[i];
        }
        self
    }
}
impl<const N: usize> core::ops::Index<usize> for M128iArray<N> {
    type Output = M128i;
    #[inline(always)]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl<const N: usize> core::ops::IndexMut<usize> for M128iArray<N> {
    #[inline(always)]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}
impl<const N: usize> From<[M128i; N]> for M128iArray<N> {
    #[inline(always)]
    fn from(array: [M128i; N]) -> Self {
        Self(array)
    }
}
impl<const N: usize> From<M128iArray<N>> for [M128i; N] {
    #[inline(always)]
    fn from(array: M128iArray<N>) -> Self {
        array.0
    }
}
impl<const N: usize> From<[[u8; M128i::BYTE_LEN]; N]> for M128iArray<N> {
    #[inline(always)]
    fn from(array: [[u8; M128i::BYTE_LEN]; N]) -> Self {
        array.map(M128i::from).into()
    }
}
impl<const N: usize> From<M128iArray<N>> for [[u8; M128i::BYTE_LEN]; N] {
    #[inline(always)]
    fn from(array: M128iArray<N>) -> Self {
        array.0.map(Into::into)
    }
}
impl From<[u8; 2 * M128i::BYTE_LEN]> for M128iArray<2> {
    #[inline(always)]
    fn from(array: [u8; 2 * M128i::BYTE_LEN]) -> Self {
        unsafe { core::mem::transmute::<_, [[u8; M128i::BYTE_LEN]; 2]>(array) }.into()
    }
}
impl From<[u8; 4 * M128i::BYTE_LEN]> for M128iArray<4> {
    #[inline(always)]
    fn from(array: [u8; 4 * M128i::BYTE_LEN]) -> Self {
        unsafe { core::mem::transmute::<_, [[u8; M128i::BYTE_LEN]; 4]>(array) }.into()
    }
}
impl Inout for M128i {
    #[inline(always)]
    unsafe fn read(ptr: *const u8, len: usize) -> Self {
        let mut buf = [0u8; size_of::<M128i>()];
        copy_nonoverlapping(ptr, buf.as_mut_ptr(), len);
        buf.into()
    }
    #[inline(always)]
    unsafe fn write(self, ptr: *mut u8, len: usize) {
        let buf: [u8; size_of::<M128i>()] = self.into();
        copy_nonoverlapping(buf.as_ptr(), ptr, len);
    }
}
impl<const N: usize> Inout for M128iArray<N> {
    #[inline(always)]
    unsafe fn read(ptr: *const u8, len: usize) -> Self {
        let mut buf = [[0u8; size_of::<M128i>()]; N];
        copy_nonoverlapping(ptr, buf.as_mut_ptr() as *mut u8, len);
        buf.into()
    }
    #[inline(always)]
    unsafe fn write(self, ptr: *mut u8, len: usize) {
        let buf: [[u8; size_of::<M128i>()]; N] = self.into();
        copy_nonoverlapping(buf.as_ptr() as *const u8, ptr, len);
    }
}
impl M128i {
    #[inline(always)]
    pub fn zero() -> Self {
        Self(unsafe { _mm_setzero_si128() })
    }
    #[inline(always)]
    pub fn is_zero(self) -> bool {
        unsafe { _mm_test_all_zeros(*self, *self) == 1 }
    }
    #[inline(always)]
    pub fn crypto_equals(self, other: M128i) -> bool {
        (self ^ other).is_zero()
    }
    #[inline(always)]
    pub fn shuffle32<const IMM8: i32>(self) -> Self {
        unsafe { _mm_shuffle_epi32::<IMM8>(*self).into() }
    }
    #[inline(always)]
    pub fn add32(self, other: impl Into<Self>) -> Self {
        unsafe { _mm_add_epi32(*self, *other.into()).into() }
    }
    #[inline(always)]
    pub unsafe fn from_slice_zero_pad(bytes: &[u8], offset: usize) -> Self {
        debug_assert!(bytes.len() + offset <= Self::BYTE_LEN);
        let mut buf = [0u8; Self::BYTE_LEN];
        copy_nonoverlapping(bytes.as_ptr(), buf.as_mut_ptr().add(offset), bytes.len());
        buf.into()
    }
    #[inline(always)]
    pub unsafe fn from_ptr_zero_pad(ptr: *const u8, len: usize, offset: usize) -> Self {
        debug_assert!(len + offset <= Self::BYTE_LEN);
        let mut buf = [0u8; Self::BYTE_LEN];
        copy_nonoverlapping(ptr, buf.as_mut_ptr().add(offset), len);
        buf.into()
    }
    #[inline(always)]
    pub fn left_bitshift64<const IMM8: i32>(self) -> Self {
        unsafe { _mm_slli_epi64::<IMM8>(*self).into() }
    }
    #[inline(always)]
    pub fn right_bitshift64<const IMM8: i32>(self) -> Self {
        unsafe { _mm_srli_epi64::<IMM8>(*self).into() }
    }
    #[inline(always)]
    pub fn left_byteshift<const IMM8: i32>(self) -> Self {
        unsafe { _mm_slli_si128::<IMM8>(*self).into() }
    }
    #[inline(always)]
    pub fn right_byteshift<const IMM8: i32>(self) -> Self {
        unsafe { _mm_srli_si128::<IMM8>(*self).into() }
    }
    #[inline(always)]
    pub fn unpacklo64(self, other: M128i) -> Self {
        unsafe { _mm_unpacklo_epi64(*self, *other).into() }
    }
    #[inline(always)]
    pub fn blend8(self, other: Self, mask: impl Into<Self>) -> Self {
        let mask = mask.into();
        unsafe { _mm_blendv_epi8(*self, *other, *mask).into() }
    }
    #[inline(always)]
    pub fn cmpgt32(self, other: M128i) -> Self {
        unsafe { _mm_cmpgt_epi32(*self, *other).into() }
    }
    #[inline(always)]
    pub fn shuffle8(self, shuffle: impl Into<M128i>) -> Self {
        unsafe { _mm_shuffle_epi8(*self, *shuffle.into()).into() }
    }
    #[inline(always)]
    pub fn byte_reverse(self) -> M128i {
        self.shuffle8([0x0c0d0e0f, 0x08090a0b, 0x04050607, 0x00010203])
    }
    #[inline(always)]
    pub fn aeskeygenassist<const IMM8: i32>(self) -> Self {
        unsafe { _mm_aeskeygenassist_si128::<IMM8>(*self).into() }
    }
    #[inline(always)]
    pub fn aesenc(self, round_key: Self) -> Self {
        unsafe { _mm_aesenc_si128(*self, round_key.0).into() }
    }
    #[inline(always)]
    pub fn aesenclast(self, round_key: Self) -> Self {
        unsafe { _mm_aesenclast_si128(*self, round_key.0).into() }
    }
    #[inline(always)]
    pub fn aesdec(self, round_key: Self) -> Self {
        unsafe { _mm_aesdec_si128(*self, round_key.0).into() }
    }
    #[inline(always)]
    pub fn aesdeclast(self, round_key: Self) -> Self {
        unsafe { _mm_aesdeclast_si128(*self, round_key.0).into() }
    }
    #[inline(always)]
    pub fn aesimc(self) -> Self {
        unsafe { _mm_aesimc_si128(*self).into() }
    }
    #[inline(always)]
    pub fn clmul<const IMM8: i32>(self, other: Self) -> Self {
        unsafe { _mm_clmulepi64_si128::<IMM8>(*self, *other).into() }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    impl<T: Into<Self> + Clone> core::cmp::PartialEq<T> for M128i {
        fn eq(&self, other: &T) -> bool {
            self.crypto_equals(other.clone().into())
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
    impl<const N: usize> M128iArray<N> {
        pub fn random() -> Self {
            [(); N].map(|_| M128i::random()).into()
        }
    }
    impl<const N: usize> core::fmt::Debug for M128iArray<N> {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            for block in self.0 {
                write!(f, "{block:?}")?;
            }
            Ok(())
        }
    }
    impl<const N: usize, T: Into<Self> + Clone> core::cmp::PartialEq<T> for M128iArray<N> {
        fn eq(&self, rhs: &T) -> bool {
            let rhs = rhs.clone().into();
            let mut result = M128i::zero();
            for i in 0..N {
                result |= self[i] ^ rhs[i];
            }
            result.is_zero()
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
}
