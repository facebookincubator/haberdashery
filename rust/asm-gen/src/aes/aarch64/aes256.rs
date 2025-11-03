// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::AesRoundInput;
use crate::aes::AesRoundKeys;
use crate::block::Block128;

pub const NUM_ROUNDS: usize = 15;
pub(crate) const KEY_LEN: usize = 32;

pub struct Aes256EncryptState<T: AesRoundInput> {
    aes: Aes256,
    data: T,
    pub index: usize,
}
impl<T: AesRoundInput + Copy> Aes256EncryptState<T> {
    #[inline]
    pub fn new(aes: Aes256, data: T) -> Self {
        Self {
            aes,
            data,
            index: 0,
        }
    }
    #[inline]
    pub fn aes_round(&mut self) {
        match self.index {
            0..13 => self.aes.encrypt_round(&mut self.data, self.index),
            13 => self.aes.encrypt_round_second_last(&mut self.data),
            14 => self.aes.encrypt_round_last(&mut self.data),
            _ => panic!("{} >= {}", self.index, NUM_ROUNDS),
        }
        self.index += 1;
    }
    #[inline]
    pub fn advance(&mut self) -> Block128 {
        debug_assert!(
            self.index < NUM_ROUNDS,
            "{index} >= {NUM_ROUNDS}",
            index = self.index
        );
        let key = self.aes[self.index];
        self.index += 1;
        key
    }
    #[inline]
    pub fn get_data_final(&self) -> T {
        debug_assert_eq!(self.index, NUM_ROUNDS);
        self.data
    }
    #[inline]
    pub fn get_data(&mut self) -> T {
        self.data
    }
    #[inline]
    pub fn set_data(&mut self, data: T) {
        self.data = data;
    }
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct Aes256(AesRoundKeys<NUM_ROUNDS>);

impl core::ops::Index<usize> for Aes256 {
    type Output = Block128;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}

impl core::ops::IndexMut<usize> for Aes256 {
    #[inline]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

impl From<[u8; KEY_LEN]> for Aes256 {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        let init_key_array: [[u8; Block128::SIZE]; 2] = unsafe { core::mem::transmute(key) };
        let init_key: [Block128; 2] = init_key_array.map(Into::into);
        Self::expand(init_key)
    }
}

impl From<[Block128; 2]> for Aes256 {
    #[inline]
    fn from(key: [Block128; 2]) -> Self {
        Self::expand(key)
    }
}

impl From<AesRoundKeys<NUM_ROUNDS>> for Aes256 {
    #[inline]
    fn from(roundkeys: AesRoundKeys<NUM_ROUNDS>) -> Self {
        Self(roundkeys)
    }
}

impl From<Aes256> for AesRoundKeys<NUM_ROUNDS> {
    #[inline]
    fn from(aes: Aes256) -> Self {
        aes.0
    }
}

impl Aes256 {
    #[inline]
    pub fn new_and_encrypt<const N: usize>(
        key: [Block128; 2],
        blocks: [Block128; N],
    ) -> (Self, [Block128; N]) {
        let aes = Aes256::from(key);
        let ciphertext = aes.encrypt(blocks);
        (aes, ciphertext)
    }
    #[inline]
    pub fn zero() -> Self {
        Self([Block128::ZERO; NUM_ROUNDS].into())
    }
    #[inline]
    pub fn expand(key: [Block128; 2]) -> Self {
        let mut this = Self::zero();
        this.0[0] = key[0];
        this.0[1] = key[1];
        let mut rcon = Block128::from([1, 1, 1, 1]);
        this.expand_step_via_enc::<2>(&mut rcon);
        this.expand_step_via_enc::<3>(&mut rcon);
        this.expand_step_via_enc::<4>(&mut rcon);
        this.expand_step_via_enc::<5>(&mut rcon);
        this.expand_step_via_enc::<6>(&mut rcon);
        this.expand_step_via_enc::<7>(&mut rcon);
        this.expand_step_via_enc::<8>(&mut rcon);
        this.expand_step_via_enc::<9>(&mut rcon);
        this.expand_step_via_enc::<10>(&mut rcon);
        this.expand_step_via_enc::<11>(&mut rcon);
        this.expand_step_via_enc::<12>(&mut rcon);
        this.expand_step_via_enc::<13>(&mut rcon);
        this.expand_step_via_enc::<14>(&mut rcon);
        this
    }

    #[inline]
    pub fn expand_step_via_enc<const INDEX: usize>(
        &mut self,
        even_rcon: &mut Block128,
    ) -> &mut Self {
        debug_assert!(INDEX >= 2);
        debug_assert!(INDEX <= NUM_ROUNDS);
        // perform XOR on the four words of the (N-2)th Block128
        // least significant word is XOR'd to the rest words in a recursive way
        let tmp = self[INDEX - 2]
            ^ self[INDEX - 2].leftshift_word::<1>()
            ^ self[INDEX - 2].leftshift_word::<2>()
            ^ self[INDEX - 2].leftshift_word::<3>();
        self[INDEX] = if INDEX % 2 == 0 {
            // for even round, left shift each word by 1 bit for the next even round
            let rcon = *even_rcon;
            *even_rcon = even_rcon.wordwise_bitshiftleft::<1>();
            // RotWord-SubWord-XOR of the index-1's last word then copy to the whole block128
            // then XOR with tmp
            self[INDEX - 1].expansion_lastword_rotsubxor(rcon) ^ tmp
        } else {
            // for odd round, SubWord of the index-1's last word then copy to the whole block128
            // then XOR with tmp
            self[INDEX - 1].expansion_lastword_sub() ^ tmp
        };
        self
    }
    #[inline]
    pub fn encrypt_round(&self, item: &mut impl AesRoundInput, i: usize) {
        self.0.encrypt_round(item, i);
    }
    #[inline]
    pub fn encrypt_round_second_last(&self, item: &mut impl AesRoundInput) {
        self.0.encrypt_round_second_last(item);
    }
    #[inline]
    pub fn encrypt_round_last(&self, item: &mut impl AesRoundInput) {
        self.0.encrypt_round_last(item);
    }
    #[inline]
    pub fn encrypt<T: AesRoundInput>(&self, plaintext: T) -> T {
        let mut ciphertext = plaintext;
        for i in 0..NUM_ROUNDS - 2 {
            self.0.encrypt_round(&mut ciphertext, i);
        }
        self.0.encrypt_round_second_last(&mut ciphertext);
        self.0.encrypt_round_last(&mut ciphertext);
        ciphertext
    }
    #[inline]
    pub fn decrypt(&self, ciphertext: Block128) -> Block128 {
        // EQINVCIPHER algorithm (not the reverse of CIPHER)
        ciphertext
            .aesdec(self[14])
            .aesimc() // First round: XOR-InvShiftRow-InvSubByte-InvMixColumn
            .aesdec(self[13].aesimc())
            .aesimc() // XORWithIMCKey-InvShiftRow-InvSubByte-InvMixColumn
            .aesdec(self[12].aesimc())
            .aesimc()
            .aesdec(self[11].aesimc())
            .aesimc()
            .aesdec(self[10].aesimc())
            .aesimc()
            .aesdec(self[9].aesimc())
            .aesimc()
            .aesdec(self[8].aesimc())
            .aesimc()
            .aesdec(self[7].aesimc())
            .aesimc()
            .aesdec(self[6].aesimc())
            .aesimc()
            .aesdec(self[5].aesimc())
            .aesimc()
            .aesdec(self[4].aesimc())
            .aesimc()
            .aesdec(self[3].aesimc())
            .aesimc()
            .aesdec(self[2].aesimc())
            .aesimc()
            .aesdec(self[1].aesimc()) // No InvMixColumn in the second last round
            ^self[0] // directly XOR with the last round key in the last round
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn fips197_appendix_a3() {
        // FIPS 197, Appendix A.3: AES256 key expansion
        let key1 = Block128::from_hex("603deb1015ca71be2b73aef0857d7781").unwrap();
        let key2 = Block128::from_hex("1f352c073b6108d72d9810a30914dff4").unwrap();
        let roundkey = AesRoundKeys::from([
            key1,
            key2,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
            Block128::ZERO,
        ]);
        let mut aes256 = Aes256::from(roundkey);
        let mut rcon = Block128::from([1, 1, 1, 1]);
        aes256.expand_step_via_enc::<2>(&mut rcon);
        assert_eq!(aes256[2], "9ba354118e6925afa51a8b5f2067fcde");
        assert_eq!(rcon, "02000000020000000200000002000000");
        aes256.expand_step_via_enc::<3>(&mut rcon);
        assert_eq!(aes256[3], "a8b09c1a93d194cdbe49846eb75d5b9a");
        assert_eq!(rcon, "02000000020000000200000002000000");
        aes256.expand_step_via_enc::<4>(&mut rcon);
        aes256.expand_step_via_enc::<5>(&mut rcon);
        aes256.expand_step_via_enc::<6>(&mut rcon);
        aes256.expand_step_via_enc::<7>(&mut rcon);
        aes256.expand_step_via_enc::<8>(&mut rcon);
        aes256.expand_step_via_enc::<9>(&mut rcon);
        aes256.expand_step_via_enc::<10>(&mut rcon);
        aes256.expand_step_via_enc::<11>(&mut rcon);
        aes256.expand_step_via_enc::<12>(&mut rcon);
        aes256.expand_step_via_enc::<13>(&mut rcon);
        aes256.expand_step_via_enc::<14>(&mut rcon);
        assert_eq!(aes256[14], "fe4890d1e6188d0b046df344706c631e");

        assert_eq!(
            Aes256::from([key1, key2])[14],
            "fe4890d1e6188d0b046df344706c631e"
        );
    }

    #[test]
    fn encrypt_test1() {
        let aes = Aes256::from([
            Block128::from_hex("000102030405060708090a0b0c0d0e0f").unwrap(),
            Block128::from_hex("101112131415161718191a1b1c1d1e1f").unwrap(),
        ]);
        let plaintext = Block128::from_hex("00112233445566778899aabbccddeeff").unwrap();
        let expected_ciphertext = Block128::from_hex("8ea2b7ca516745bfeafc49904b496089").unwrap();
        let ciphertext = aes.encrypt(plaintext);
        assert_eq!(ciphertext, expected_ciphertext);
        let decrypted_plaintext = aes.decrypt(ciphertext);
        assert_eq!(decrypted_plaintext, plaintext);
    }

    #[test]
    fn encrypt_test2() {
        // https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Standards-and-Guidelines/documents/examples/AES_Core256.pdf
        let aes = Aes256::from([
            Block128::from_hex("603DEB1015CA71BE2B73AEF0857D7781").unwrap(),
            Block128::from_hex("1F352C073B6108D72D9810A30914DFF4").unwrap(),
        ]);
        let plaintext = [
            Block128::from_hex("6BC1BEE22E409F96E93D7E117393172A").unwrap(),
            Block128::from_hex("AE2D8A571E03AC9C9EB76FAC45AF8E51").unwrap(),
            Block128::from_hex("30C81C46A35CE411E5FBC1191A0A52EF").unwrap(),
            Block128::from_hex("F69F2445DF4F9B17AD2B417BE66C3710").unwrap(),
        ];
        let ciphertext = aes.encrypt(plaintext);
        assert_eq!(
            ciphertext[0],
            Block128::from_hex("F3EED1BDB5D2A03C064B5A7E3DB181F8").unwrap()
        );
        assert_eq!(
            ciphertext[1],
            Block128::from_hex("591CCB10D410ED26DC5BA74A31362870").unwrap()
        );
        assert_eq!(
            ciphertext[2],
            Block128::from_hex("B6ED21B99CA6F4F9F153E7B1BEAFED1D").unwrap()
        );
        assert_eq!(
            ciphertext[3],
            Block128::from_hex("23304B7A39F9F3FF067D8D8F9E24ECC7").unwrap()
        );
        let decrypted_plaintext = ciphertext.map(|c| aes.decrypt(c));
        assert_eq!(decrypted_plaintext, plaintext);
    }
}
