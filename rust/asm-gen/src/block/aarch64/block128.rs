// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::aarch64::*;
use core::mem::size_of;
use core::ops::Range;
use core::ptr::copy_nonoverlapping;

use crate::ffi::pod::Pod;

#[repr(transparent)]
#[derive(Copy, Clone)]
pub struct Block128(pub uint8x16_t);

impl Block128 {
    pub const SIZE: usize = size_of::<Self>();
    pub const ZERO: Self = Self::from_bytes([0u8; Self::SIZE]);

    #[inline]
    pub unsafe fn load<T>(ptr: *const T) -> Self {
        unsafe { vld1q_u8(ptr as *const u8) }.into()
    }
    #[inline]
    pub unsafe fn store<T>(self, ptr: *mut T) {
        unsafe { vst1q_u8(ptr as *mut u8, self.0) };
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
    pub const fn from_u64(bytes: [u64; 2]) -> Self {
        unsafe { core::mem::transmute(bytes) }
    }
    // single round AES encryption
    #[inline]
    pub fn aesenc(self, round_key: Self) -> Self {
        unsafe { vaeseq_u8(self.0, round_key.0) }.into()
    }
    // single round AES decryption
    #[inline]
    pub fn aesdec(self, round_key: Self) -> Self {
        unsafe { vaesdq_u8(self.0, round_key.0) }.into()
    }
    // mix columns
    #[inline]
    pub fn aesmc(self) -> Self {
        unsafe { vaesmcq_u8(self.0) }.into()
    }
    // inverse mix columns
    #[inline]
    pub fn aesimc(self) -> Self {
        unsafe { vaesimcq_u8(self.0) }.into()
    }
    // set the u32 at index INDEX
    #[inline]
    pub fn set_u32word<const INDEX: i32>(self, word: u32) -> Self {
        debug_assert!(INDEX <= 4);
        unsafe { vsetq_lane_u32(word, self.into(), INDEX) }.into()
    }
    // get the u32 at index INDEX
    #[inline]
    pub fn get_u32word<const INDEX: i32>(self) -> u32 {
        debug_assert!(INDEX <= 4);
        unsafe { vgetq_lane_u32(self.into(), INDEX) }
    }
    // bit shift left of each word by BITLEN
    #[inline]
    pub fn wordwise_bitshiftleft<const BITLEN: i32>(self) -> Self {
        unsafe { vshlq_n_u32(self.into(), BITLEN) }.into()
    }
    // left shift the u32 word by NUM_WORD, padded with 0
    #[inline]
    pub fn leftshift_word<const NUM_WORD: i32>(self) -> Self {
        debug_assert!(NUM_WORD <= 4);
        match NUM_WORD {
            1 => Block128::ZERO
                .set_u32word::<1>(self.get_u32word::<0>())
                .set_u32word::<2>(self.get_u32word::<1>())
                .set_u32word::<3>(self.get_u32word::<2>()),
            2 => Block128::ZERO
                .set_u32word::<2>(self.get_u32word::<0>())
                .set_u32word::<3>(self.get_u32word::<1>()),
            3 => Block128::ZERO.set_u32word::<3>(self.get_u32word::<0>()),
            _ => Block128::ZERO,
        }
    }
    // right shift the u32 word by NUM_WORD, padded with 0
    #[inline]
    pub fn rightshift_word<const NUM_WORD: i32>(self) -> Self {
        debug_assert!(NUM_WORD <= 4);
        match NUM_WORD {
            1 => Block128::ZERO
                .set_u32word::<0>(self.get_u32word::<1>())
                .set_u32word::<1>(self.get_u32word::<2>())
                .set_u32word::<2>(self.get_u32word::<3>()),
            2 => Block128::ZERO
                .set_u32word::<0>(self.get_u32word::<2>())
                .set_u32word::<1>(self.get_u32word::<3>()),
            3 => Block128::ZERO.set_u32word::<0>(self.get_u32word::<3>()),
            _ => Block128::ZERO,
        }
    }
    // shuffle self into [self[INDEX1], [self[INDEX2], self[INDEX3], self[INDEX4]]
    #[inline]
    pub fn shuffle_words<
        const INDEX0: i32,
        const INDEX1: i32,
        const INDEX2: i32,
        const INDEX3: i32,
    >(
        self,
    ) -> Self {
        debug_assert!(INDEX0 <= 4);
        debug_assert!(INDEX1 <= 4);
        debug_assert!(INDEX2 <= 4);
        debug_assert!(INDEX3 <= 4);
        Block128::ZERO
            .set_u32word::<0>(self.get_u32word::<INDEX0>())
            .set_u32word::<1>(self.get_u32word::<INDEX1>())
            .set_u32word::<2>(self.get_u32word::<INDEX2>())
            .set_u32word::<3>(self.get_u32word::<INDEX3>())
    }
    // copy the u32 word at INDEX to rest of words
    #[inline]
    pub fn copy_word_to_rest<const INDEX: i32>(self) -> Self {
        debug_assert!(INDEX <= 4);
        // convert to u32x4_t then copy the target word to rest
        [self.get_u32word::<INDEX>(); 4].into()
    }
    // rotword and then copy the rottated word to the rest
    #[inline]
    pub fn rotlastword_then_copy_to_rest(self) -> Self {
        // convert to u32x4_t then rot the last u32 and then copy to the rest
        let mut lastword: u32 = self.get_u32word::<3>();
        lastword = (lastword << 24) & 0xff000000 | (lastword >> 8) & 0x00ffffff;
        [lastword; 4].into()
    }
    // substep in 4-word-parallel expansion: rotword, shiftrows, subword, then XOR rcon
    #[inline]
    pub fn expansion_lastword_rotsubxor(self, rcon: Self) -> Self {
        // rotword
        let mut tmp = self.rotlastword_then_copy_to_rest();
        // shiftrows -> subword
        tmp = tmp.aesenc(Block128::ZERO);
        // cancel the shiftrows by only taking the first word
        tmp = tmp.copy_word_to_rest::<0>();
        // xor the rcon
        tmp ^ rcon
    }
    // substep in 4-word-parallel expansion: subword
    #[inline]
    pub fn expansion_lastword_sub(self) -> Self {
        // copy the lastword to the rest words
        let mut tmp = self.copy_word_to_rest::<3>();
        // shiftrows -> subword
        tmp = tmp.aesenc(Block128::ZERO);
        // cancel the shiftrows by only taking the first word
        tmp.copy_word_to_rest::<0>()
    }
    #[inline]
    pub fn clmul_lo(self, other: Self) -> Self {
        unsafe {
            vmull_p64(
                vgetq_lane_p64(self.into(), 0),
                vgetq_lane_p64(other.into(), 0),
            )
        }
        .into()
    }
    #[inline]
    pub fn clmul_hi(self, other: Self) -> Self {
        unsafe { vmull_high_p64(self.into(), other.into()) }.into()
    }
    #[inline]
    pub fn swap_lanes64(self) -> Self {
        unsafe { vextq_u64::<1>(self.into(), self.into()) }.into()
    }
    #[inline]
    pub fn unpacklo64(self, rhs: Block128) -> Self {
        unsafe { vtrn1q_u64(self.into(), rhs.into()) }.into()
    }
    #[inline]
    pub fn unpackhi64(self, rhs: Block128) -> Self {
        unsafe { vtrn2q_u64(self.into(), rhs.into()) }.into()
    }
    #[inline]
    pub fn add32(self, rhs: impl Into<Self>) -> Self {
        let rhs = rhs.into();
        unsafe { vaddq_u32(self.into(), rhs.into()) }.into()
    }
    #[inline]
    pub fn is_zero(self) -> bool {
        let [a, b]: [u64; 2] = self.into();
        a == 0 && b == 0
    }
    #[inline]
    pub fn crypto_equals(self, rhs: Self) -> bool {
        (self ^ rhs).is_zero()
    }
    #[inline]
    pub fn left_bitshift64<const IMM8: i32>(self) -> Self {
        unsafe { vshlq_n_u64(self.into(), IMM8) }.into()
    }
    #[inline]
    pub fn right_bitshift64<const IMM8: i32>(self) -> Self {
        unsafe { vshrq_n_u64(self.into(), IMM8) }.into()
    }
    #[inline]
    pub fn byte_rev64(self) -> Self {
        unsafe { vrev64q_u8(self.into()) }.into()
    }
    #[inline]
    pub fn byte_rev32(self) -> Self {
        unsafe { vrev32q_u8(self.into()) }.into()
    }
    #[inline]
    pub fn bcax(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { vbcaxq_u64(self.into(), b.into().into(), c.into().into()) }.into()
    }
    #[inline]
    pub fn byte_reverse(self) -> Self {
        self.byte_rev64().swap_lanes64()
    }
    /// Loads the bytes from ptr into to Block128 at the given range.
    /// For the range [a..b], the 'a'-th byte of Block128 will contain *ptr and the 'b'-th byte will contain *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    #[track_caller]
    pub unsafe fn load_range(ptr: *const u8, range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid Block128::load_range length: {} > {}",
            range.end,
            Self::SIZE
        );
        let Range { start, end } = range;
        let start = start.min(end);
        let mut buf = [0u8; Self::SIZE];
        unsafe { copy_nonoverlapping(ptr, buf.as_mut_ptr().add(start), end - start) };
        buf.into()
    }
    #[inline]
    #[track_caller]
    pub unsafe fn mov_range(self, range: Range<usize>) -> Self {
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { Self::load_range(buf.as_ptr().add(range.start), range) }
    }
}
impl Default for Block128 {
    #[inline]
    fn default() -> Self {
        Self::ZERO
    }
}
impl core::ops::Not for Block128 {
    type Output = Self;
    #[inline]
    fn not(self) -> Self::Output {
        unsafe { vmvnq_u8(self.into()) }.into()
    }
}
impl<T: Into<Self>> core::ops::BitXor<T> for Block128 {
    type Output = Self;
    #[inline]
    fn bitxor(self, other: T) -> Self::Output {
        Self(unsafe { veorq_u8(self.0, other.into().0) })
    }
}
impl core::ops::BitXorAssign for Block128 {
    #[inline]
    fn bitxor_assign(&mut self, other: Self) {
        *self = *self ^ other;
    }
}
impl<T: Into<Self>> core::ops::BitOr<T> for Block128 {
    type Output = Self;
    #[inline]
    fn bitor(self, other: T) -> Self::Output {
        Self(unsafe { vorrq_u8(self.0, other.into().0) })
    }
}
impl core::ops::BitOrAssign for Block128 {
    #[inline]
    fn bitor_assign(&mut self, other: Self) {
        *self = *self | other;
    }
}
impl<T: Into<Self>> core::ops::BitAnd<T> for Block128 {
    type Output = Self;
    #[inline]
    fn bitand(self, other: T) -> Self::Output {
        Self(unsafe { vandq_u8(self.0, other.into().0) })
    }
}
impl core::ops::BitAndAssign for Block128 {
    #[inline]
    fn bitand_assign(&mut self, other: Self) {
        *self = *self & other;
    }
}
impl From<uint8x16_t> for Block128 {
    #[inline]
    fn from(v: uint8x16_t) -> Self {
        Self(v)
    }
}
impl From<uint32x4_t> for Block128 {
    #[inline]
    fn from(v: uint32x4_t) -> Self {
        unsafe { vreinterpretq_u8_u32(v) }.into()
    }
}
impl From<uint64x2_t> for Block128 {
    #[inline]
    fn from(v: uint64x2_t) -> Self {
        unsafe { vreinterpretq_u8_u64(v) }.into()
    }
}
impl From<[u8; Self::SIZE]> for Block128 {
    #[inline]
    fn from(array: [u8; Self::SIZE]) -> Self {
        unsafe { vld1q_u8(array.as_ptr()) }.into()
    }
}
impl From<[u32; 4]> for Block128 {
    #[inline]
    fn from(array: [u32; 4]) -> Self {
        unsafe { vreinterpretq_u8_u32(vld1q_u32(array.as_ptr())) }.into()
    }
}
impl From<u128> for Block128 {
    #[inline]
    fn from(v: u128) -> Self {
        v.to_le_bytes().into()
    }
}
impl From<Block128> for [u8; Block128::SIZE] {
    #[inline]
    fn from(block: Block128) -> Self {
        let mut buf = [0u8; Block128::SIZE];
        unsafe { vst1q_u8(buf.as_mut_ptr(), block.0) };
        buf
    }
}
impl From<Block128> for uint8x16_t {
    #[inline]
    fn from(block: Block128) -> Self {
        block.0
    }
}
impl From<Block128> for uint32x4_t {
    #[inline]
    fn from(block: Block128) -> Self {
        unsafe { vreinterpretq_u32_u8(block.0) }
    }
}
impl From<Block128> for poly64x2_t {
    #[inline]
    fn from(block: Block128) -> Self {
        unsafe { vreinterpretq_p64_u8(block.0) }
    }
}
impl From<Block128> for uint64x2_t {
    #[inline]
    fn from(block: Block128) -> Self {
        unsafe { vreinterpretq_u64_u8(block.0) }
    }
}
impl From<[u64; 2]> for Block128 {
    #[inline]
    fn from(v: [u64; 2]) -> Self {
        unsafe { vreinterpretq_u8_u64(vld1q_u64(v.as_ptr())) }.into()
    }
}
impl From<Block128> for [u64; 2] {
    #[inline]
    fn from(reg: Block128) -> Self {
        let mut result = [0u64; 2];
        unsafe { vst1q_u64(result.as_mut_ptr(), reg.into()) };
        result
    }
}
unsafe impl Pod for Block128 {
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
        debug_assert!(len <= Self::SIZE);
        let buf: [u8; Self::SIZE] = (*self).into();
        unsafe { copy_nonoverlapping(buf.as_ptr(), ptr, len) };
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    impl Block128 {
        pub fn from_hex(hex: &str) -> Result<Self, hex::FromHexError> {
            use hex::FromHex;
            Ok(<[u8; Self::SIZE]>::from_hex(hex)?.into())
        }
        pub fn encode_hex(self) -> String {
            let bytes: [u8; Self::SIZE] = self.into();
            hex::encode(bytes)
        }
        pub fn random() -> Self {
            random::array().into()
        }
    }
    impl<T: Into<Self> + Clone> core::cmp::PartialEq<T> for Block128 {
        fn eq(&self, other: &T) -> bool {
            let lhs: [u8; Self::SIZE] = self.clone().into();
            let rhs: [u8; Self::SIZE] = other.clone().into().into();
            lhs == rhs
        }
    }
    impl core::cmp::PartialEq<&str> for Block128 {
        fn eq(&self, other: &&str) -> bool {
            self.encode_hex() == *other
        }
    }
    impl core::fmt::Debug for Block128 {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            write!(f, r#""{}""#, &self.encode_hex())
        }
    }
    impl core::fmt::Display for Block128 {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            write!(f, "{}", &self.encode_hex())
        }
    }

    #[test]
    fn test_expansion_building_blocks() {
        let input = Block128::from_hex("0102030405060708090a0b0c0d0e0f01").unwrap();
        assert_eq!(
            input.leftshift_word::<1>(),
            "000000000102030405060708090a0b0c"
        );
        assert_eq!(
            input.leftshift_word::<2>(),
            "00000000000000000102030405060708"
        );
        assert_eq!(
            input.leftshift_word::<3>(),
            "00000000000000000000000001020304"
        );
        assert_eq!(
            input.leftshift_word::<4>(),
            "00000000000000000000000000000000"
        );
        assert_eq!(
            input.copy_word_to_rest::<0>(),
            "01020304010203040102030401020304"
        );
        assert_eq!(
            input.rotlastword_then_copy_to_rest(),
            "0e0f010d0e0f010d0e0f010d0e0f010d"
        );
        assert_eq!(
            input.wordwise_bitshiftleft::<1>(),
            "020406080a0c0e10121416181a1c1e02"
        );

        let word: u32 = 0x0914dff4;
        assert_eq!(
            (word >> 24) & 0x000000ff | (word << 8) & 0xffffff00,
            0x14dff409
        );

        let key = Block128::from_hex("0000000000000000000000000914dff4").unwrap();
        assert_eq!(
            key.expansion_lastword_rotsubxor([1u32, 1u32, 1u32, 1u32].into()),
            "fb9ebf01fb9ebf01fb9ebf01fb9ebf01"
        );
    }

    #[test]
    fn aesenc() {
        for _i in 0..128 {
            let key = Block128::random();
            let input = Block128::random();
            assert_eq!((key ^ input).aesenc(Block128::ZERO), key.aesenc(input));
        }
        let key = Block128::from_hex("551b9ba091fba324a7ad66257aa46c85").unwrap();
        assert_eq!(
            key.aesenc(Block128::ZERO),
            "fc0f3397819550e05c491436daaf0a3f"
        );
        assert_eq!(
            key.aesenc(Block128::ZERO).aesmc(),
            "562037160da08f8641c467d570be20ae"
        );
        let input = Block128::from(hex_literal::hex!("f8752d94c86666af0729a80437ecff71"));
        assert_eq!(
            key.aesenc(Block128::ZERO).aesmc() ^ input,
            "ae551a82c5c6e92946edcfd14752dfdf"
        );
    }

    #[test]
    fn test_aes_operations() {
        // FIPS 197, Apendix B: Cipher Example

        // single XOR-SubBytes-ShiftRows
        let input = Block128::from_hex("3243f6a8885a308d313198a2e0370734").unwrap();
        let key = Block128::from_hex("2b7e151628aed2a6abf7158809cf4f3c").unwrap();
        let after_shiftrows_r1 = input.aesenc(key);
        assert_eq!(after_shiftrows_r1, "d4bf5d30e0b452aeb84111f11e2798e5");

        // single MixColumns
        let after_mixcolumns_r1 = after_shiftrows_r1.aesmc();
        assert_eq!(after_mixcolumns_r1, "046681e5e0cb199a48f8d37a2806264c");

        // next XOR-SubBytes-ShiftRows
        let subkey_1 = Block128::from_hex("A0FAFE1788542cb123a339392a6c7605").unwrap();
        let after_shiftrows_r2 = after_mixcolumns_r1.aesenc(subkey_1);
        assert_eq!(after_shiftrows_r2, "49db873b453953897f02d2f177de961a");

        // check the last round
        let subkey_10 = Block128::from_hex("d014f9a8c9ee2589e13f0cc8b6630ca6").unwrap();
        let after_shiftrows_r10 = Block128::from_hex("e9317db5cb322c723d2e895faf090794").unwrap();
        let output = subkey_10 ^ after_shiftrows_r10;
        assert_eq!(output, "3925841d02dc09fbdc118597196a0b32");
    }

    #[test]
    fn shuffle_words() {
        let reg = Block128::from([0x00000000, 0x11111111, 0x22222222, 0x33333333]);
        assert_eq!(reg.shuffle_words::<0, 1, 2, 3>(), reg);
        assert_eq!(
            reg.shuffle_words::<0, 0, 0, 0>(),
            "00000000000000000000000000000000"
        );
        assert_eq!(
            reg.shuffle_words::<1, 1, 1, 1>(),
            "11111111111111111111111111111111"
        );
        assert_eq!(
            reg.shuffle_words::<2, 2, 2, 2>(),
            "22222222222222222222222222222222"
        );
        assert_eq!(
            reg.shuffle_words::<3, 3, 3, 3>(),
            "33333333333333333333333333333333"
        );
        assert_eq!(
            reg.shuffle_words::<3, 2, 1, 0>(),
            "33333333222222221111111100000000"
        );
    }

    #[test]
    fn pmull() {
        unsafe {
            let lhs: u64 = random::u32().into();
            let rhs: u64 = random::u32().into();
            let result_lo: Block128 = vmull_p64(lhs, rhs).into();
            let result_hi: Block128 = (vmull_p64(lhs << 32, rhs << 32) >> 64).into();
            assert_eq!(result_lo, result_hi);
        }
    }

    #[test]
    fn pmull2() {
        unsafe {
            let lhs = Block128::random();
            let rhs = Block128::random();
            let result: Block128 = vmull_high_p64(lhs.into(), rhs.into()).into();

            let lhs: [u64; 2] = lhs.into();
            let rhs: [u64; 2] = rhs.into();
            assert_eq!(result, Block128::from(vmull_p64(lhs[1], rhs[1])));
        }
    }
    #[test]
    fn bitshift64() {
        let base = Block128::from([0x01; 16]);
        assert_eq!(base.left_bitshift64::<1>(), [0x02; 16]);
        assert_eq!(base.right_bitshift64::<1>(), [0x00_80_80_80_80_80_80_80; 2]);

        let base = Block128::from([0xff; 16]);
        assert_eq!(base.left_bitshift64::<4>(), [0xff_ff_ff_ff_ff_ff_ff_f0; 2]);
        assert_eq!(base.right_bitshift64::<4>(), [0x0f_ff_ff_ff_ff_ff_ff_ff; 2]);
        assert_eq!(base.left_bitshift64::<60>(), [0xf0_00_00_00_00_00_00_00; 2]);
        assert_eq!(base.right_bitshift64::<60>(), [0x0f; 2]);
    }

    #[test]
    fn byte_reverse() {
        for _ in 0..128 {
            let base: [u8; 16] = random::random();
            let reversed: [u8; 16] = core::array::from_fn(|i| base[Block128::SIZE - i - 1]);
            let base = Block128::from(base);
            let reversed = Block128::from(reversed);
            assert_eq!(base.byte_reverse().byte_reverse(), base);
            assert_eq!(base.byte_reverse(), reversed);
        }
    }

    #[test]
    fn mov_range() {
        let input_bytes: [u8; Block128::SIZE] = core::array::from_fn(|i| i as u8 | 0x80);
        let input_block: Block128 = input_bytes.into();

        for i in 0..input_bytes.len() {
            for j in i..input_bytes.len() {
                let block = unsafe { input_block.mov_range(i..j) };
                let bytes: [u8; Block128::SIZE] = block.into();
                for k in 0..input_bytes.len() {
                    match i <= k && k < j {
                        true => assert_eq!(bytes[k], input_bytes[k]),
                        false => assert_eq!(bytes[k], 0),
                    }
                }
            }
        }
    }

    #[test]
    fn bcax() {
        for _ in 0..128 {
            let a = Block128::random();
            let b = Block128::random();
            let c = Block128::random();
            assert_eq!(a.bcax(b, c), a ^ b & !c);
        }
    }

    #[test]
    fn swap_lanes64() {
        for _ in 0..128 {
            let base = Block128::random();
            let [lo, hi]: [u64; 2] = base.into();
            assert_eq!(base.swap_lanes64(), [hi, lo]);
        }
    }
}
