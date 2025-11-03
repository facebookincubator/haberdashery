// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(target_arch = "x86_64"), allow(unused))]

use core::mem::transmute;

use crate::aes::AesRoundInput;
use crate::aes::AesRoundKeys;
use crate::block::Block128;

pub const NUM_ROUNDS: usize = 13;
pub(crate) const KEY_LEN: usize = 24;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct Aes192(AesRoundKeys<NUM_ROUNDS>);

impl core::ops::Index<usize> for Aes192 {
    type Output = Block128;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}

impl core::ops::IndexMut<usize> for Aes192 {
    #[inline]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

impl From<[Block128; 2]> for Aes192 {
    #[inline]
    fn from(key: [Block128; 2]) -> Self {
        let mut this = Self(AesRoundKeys::zero());
        this[0] = key[0];
        this[1] = key[1];
        this.expand();
        this
    }
}
impl From<[u8; KEY_LEN]> for Aes192 {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        let parts: [[u8; 8]; 3] = unsafe { transmute(key) };
        let parts = parts.map(u64::from_le_bytes);
        let mut this = Self(AesRoundKeys::zero());
        this[0] = [parts[0], parts[1]].into();
        this[1] = [parts[2], 0].into();
        this.expand();
        this
    }
}

impl From<Aes192> for AesRoundKeys<NUM_ROUNDS> {
    #[inline]
    fn from(aes: Aes192) -> Self {
        aes.0
    }
}

impl Aes192 {
    #[inline]
    pub fn zero() -> Self {
        Self([Block128::zero(); NUM_ROUNDS].into())
    }
    #[inline]
    fn expand_triplet<const N: usize>(&mut self) {
        let (tmp0, tmp1) = match N {
            1 => Self::expand_step::<0x01>(self[0], self[1]),
            4 => Self::expand_step::<0x04>(self[3], self[4]),
            7 => Self::expand_step::<0x10>(self[6], self[7]),
            _ => unimplemented!(),
        };
        // Self[N].1 = tmp0.0
        self[N] = self[N].select64::<0b00>(tmp0);
        // Self[N + 1].0 = tmp0.1
        // Self[N + 1].1 = tmp1.0
        self[N + 1] = tmp0.select64::<0b01>(tmp1);
        (self[N + 2], self[N + 3]) = match N {
            1 => Self::expand_step::<0x02>(tmp0, tmp1),
            4 => Self::expand_step::<0x08>(tmp0, tmp1),
            7 => Self::expand_step::<0x20>(tmp0, tmp1),
            _ => unimplemented!(),
        };
    }
    #[inline]
    fn expand_step<const N: i32>(tmp0: Block128, tmp1: Block128) -> (Block128, Block128) {
        let tmp0 = tmp0
            ^ tmp0.left_byteshift::<4>()
            ^ tmp0.left_byteshift::<8>()
            ^ tmp0.left_byteshift::<12>();
        let tmp0 = tmp0 ^ tmp1.aeskeygenassist::<N>().shuffle32::<0x55>();
        let tmp1 = tmp1 ^ tmp0.shuffle32::<0xff>() ^ tmp1.left_byteshift::<4>();
        (tmp0, tmp1)
    }
    #[inline]
    fn expand(&mut self) {
        self.expand_triplet::<1>();
        self.expand_triplet::<4>();
        self.expand_triplet::<7>();
        let (tmp0, tmp1) = Self::expand_step::<0x40>(self[9], self[10]);
        // Self[10].1 = tmp0.0
        self[10] = self[10].select64::<0b00>(tmp0);
        // Self[11].0 = tmp0.1
        // Self[11].1 = tmp1.0
        self[11] = tmp0.select64::<0b01>(tmp1);
        self[12] = tmp0
            ^ tmp0.left_byteshift::<4>()
            ^ tmp0.left_byteshift::<8>()
            ^ tmp0.left_byteshift::<12>()
            ^ tmp1.aeskeygenassist::<0x80>().shuffle32::<0x55>();
    }
    #[inline]
    pub fn encrypt_round_first(&self, item: &mut impl AesRoundInput) {
        self.0.encrypt_round_first(item);
    }
    #[inline]
    pub fn encrypt_round(&self, item: &mut impl AesRoundInput, i: usize) {
        self.0.encrypt_round(item, i);
    }
    #[inline]
    pub fn encrypt_round_last(&self, item: &mut impl AesRoundInput) {
        self.0.encrypt_round_last(item);
    }
    #[inline]
    pub fn encrypt<T: AesRoundInput>(&self, plaintext: T) -> T {
        let mut ciphertext = plaintext;
        self.0.encrypt_round_first(&mut ciphertext);
        for i in 1..NUM_ROUNDS - 1 {
            self.0.encrypt_round(&mut ciphertext, i);
        }
        self.0.encrypt_round_last(&mut ciphertext);
        ciphertext
    }
    #[inline]
    pub fn decrypt(&self, ciphertext: Block128) -> Block128 {
        (ciphertext ^ self[12])
            .aesdec(self[11].aesimc())
            .aesdec(self[10].aesimc())
            .aesdec(self[9].aesimc())
            .aesdec(self[8].aesimc())
            .aesdec(self[7].aesimc())
            .aesdec(self[6].aesimc())
            .aesdec(self[5].aesimc())
            .aesdec(self[4].aesimc())
            .aesdec(self[3].aesimc())
            .aesdec(self[2].aesimc())
            .aesdec(self[1].aesimc())
            .aesdeclast(self[0])
    }
}
impl Default for Aes192 {
    #[inline]
    fn default() -> Self {
        Self::zero()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn expand() {
        struct TestVector {
            key: [&'static str; NUM_ROUNDS],
        }
        impl TestVector {
            fn test(&self) {
                let key = [self.key[0], self.key[1]].concat();
                let key = hex::decode(key).unwrap();
                let key: [u8; KEY_LEN] = key[..KEY_LEN].try_into().unwrap();
                let aes = Aes192::from(key);
                for i in 0..self.key.len() {
                    assert_eq!(aes[i], self.key[i], "{i}");
                }
            }
        }

        [
            TestVector {
                // https://csrc.nist.gov/files/pubs/fips/197/final/docs/fips-197.pdf
                key: [
                    "8e73b0f7da0e6452c810f32b809079e5",
                    "62f8ead2522c6b7bfe0c91f72402f5a5",
                    "ec12068e6c827f6b0e7a95b95c56fec2",
                    "4db7b4bd69b5411885a74796e92538fd",
                    "e75fad44bb095386485af05721efb14f",
                    "a448f6d94d6dce24aa326360113b30e6",
                    "a25e7ed583b1cf9a27f939436a94f767",
                    "c0a69407d19da4e1ec1786eb6fa64971",
                    "485f703222cb8755e26d135233f0b7b3",
                    "40beeb282f18a2596747d26b458c553e",
                    "a7e1466c9411f1df821f750aad07d753",
                    "ca4005388fcc5006282d166abc3ce7b5",
                    "e98ba06f448c773c8ecc720401002202",
                ],
            },
            //
        ]
        .iter()
        .for_each(|x| x.test());
    }
    #[test]
    fn encrypt() {
        struct TestVector {
            key: &'static str,
            plaintext: &'static str,
            ciphertext: &'static str,
        }
        impl TestVector {
            fn test(&self) {
                let key: [u8; KEY_LEN] = hex::decode(self.key).unwrap().try_into().unwrap();
                {
                    let aes = Aes192::from(key);
                    let plaintext = Block128::from_hex(self.plaintext).unwrap();
                    let ciphertext = aes.encrypt(plaintext);
                    assert_eq!(ciphertext, self.ciphertext);
                }
                {
                    let aes = Aes192::from(key);
                    let ciphertext = Block128::from_hex(self.ciphertext).unwrap();
                    let plaintext = aes.decrypt(ciphertext);
                    assert_eq!(plaintext, self.plaintext);
                }
            }
        }

        [
            // https://csrc.nist.gov/files/pubs/fips/197/final/docs/fips-197.pdf
            TestVector {
                key: "000102030405060708090a0b0c0d0e0f1011121314151617",
                plaintext: "00112233445566778899aabbccddeeff",
                ciphertext: "dda97ca4864cdfe06eaf70a0ec0d7191",
            },
            // https://nvlpubs.nist.gov/nistpubs/legacy/sp/nistspecialpublication800-38a.pdf
            TestVector {
                key: "8e73b0f7da0e6452c810f32b809079e562f8ead2522c6b7b",
                plaintext: "6bc1bee22e409f96e93d7e117393172a",
                ciphertext: "bd334f1d6e45f25ff712a214571fa5cc",
            },
        ]
        .iter()
        .for_each(|x| x.test());
    }
    #[test]
    fn encrypt_traunch() {
        for _ in 0..128 {
            let key = random::array::<KEY_LEN>();
            let aes = Aes192::from(key);
            let plaintext = Block128::random();
            let ciphertext = aes.encrypt(plaintext);

            const N: usize = 8;
            let traunch = [plaintext; N];
            let traunch = aes.encrypt(traunch);
            for block in traunch {
                assert_eq!(ciphertext, block);
            }
        }
    }
    #[test]
    fn encrypt_decrypt() {
        for _ in 0..128 {
            let key = random::array::<KEY_LEN>();
            let aes = Aes192::from(key);
            let plaintext = Block128::random();
            let ciphertext = aes.encrypt(plaintext);
            let decrypted = aes.decrypt(ciphertext);
            assert_eq!(plaintext, decrypted);
        }
    }
}
