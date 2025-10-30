// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(target_arch = "x86_64"), allow(unused))]

use crate::aes::AesRoundInput;
use crate::aes::AesRoundKeys;
use crate::block::Block128;

pub const NUM_ROUNDS: usize = 11;
pub(crate) const KEY_LEN: usize = 16;
#[allow(unused)]
const BLOCK_LEN: usize = 16;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct Aes128(AesRoundKeys<NUM_ROUNDS>);

impl core::ops::Index<usize> for Aes128 {
    type Output = Block128;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl core::ops::IndexMut<usize> for Aes128 {
    #[inline]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

impl From<[u8; KEY_LEN]> for Aes128 {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self::new(key.into())
    }
}

impl From<Aes128> for AesRoundKeys<NUM_ROUNDS> {
    #[inline]
    fn from(aes: Aes128) -> Self {
        aes.0
    }
}

impl Aes128 {
    #[inline]
    pub fn zero() -> Self {
        Self([Block128::zero(); NUM_ROUNDS].into())
    }
    #[inline]
    pub fn new(key: Block128) -> Self {
        Self::new_aeskeygenassist(key)
    }
    #[inline]
    pub fn new_aeskeygenassist(key: Block128) -> Self {
        let mut this = Self::zero();
        this.0[0] = key;
        this.expand_step_aeskeygenassist::<1>();
        this.expand_step_aeskeygenassist::<2>();
        this.expand_step_aeskeygenassist::<3>();
        this.expand_step_aeskeygenassist::<4>();
        this.expand_step_aeskeygenassist::<5>();
        this.expand_step_aeskeygenassist::<6>();
        this.expand_step_aeskeygenassist::<7>();
        this.expand_step_aeskeygenassist::<8>();
        this.expand_step_aeskeygenassist::<9>();
        this.expand_step_aeskeygenassist::<10>();
        this
    }
    #[inline]
    fn expand_step_aeskeygenassist<const N: usize>(&mut self) -> &mut Self {
        debug_assert!(N >= 1);
        debug_assert!(N < NUM_ROUNDS);

        let tmp = self[N - 1]
            ^ self[N - 1].left_byteshift::<4>()
            ^ self[N - 1].left_byteshift::<8>()
            ^ self[N - 1].left_byteshift::<12>();
        self[N] = match N {
            1 => self[N - 1].aeskeygenassist::<0x01>().shuffle32::<0xff>(),
            2 => self[N - 1].aeskeygenassist::<0x02>().shuffle32::<0xff>(),
            3 => self[N - 1].aeskeygenassist::<0x04>().shuffle32::<0xff>(),
            4 => self[N - 1].aeskeygenassist::<0x08>().shuffle32::<0xff>(),
            5 => self[N - 1].aeskeygenassist::<0x10>().shuffle32::<0xff>(),
            6 => self[N - 1].aeskeygenassist::<0x20>().shuffle32::<0xff>(),
            7 => self[N - 1].aeskeygenassist::<0x40>().shuffle32::<0xff>(),
            8 => self[N - 1].aeskeygenassist::<0x80>().shuffle32::<0xff>(),
            9 => self[N - 1].aeskeygenassist::<0x1b>().shuffle32::<0xff>(),
            10 => self[N - 1].aeskeygenassist::<0x36>().shuffle32::<0xff>(),
            _ => unimplemented!(),
        } ^ tmp;

        self
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
        (ciphertext ^ self[10])
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
impl Default for Aes128 {
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
                let key = Block128::from_hex(self.key[0]).unwrap();
                let aes = Aes128::new(key);
                for i in 0..self.key.len() {
                    assert_eq!(aes[i], self.key[i], "{i}");
                }
            }
        }

        [
            TestVector {
                key: [
                    "00000000000000000000000000000000",
                    "62636363626363636263636362636363",
                    "9b9898c9f9fbfbaa9b9898c9f9fbfbaa",
                    "90973450696ccffaf2f457330b0fac99",
                    "ee06da7b876a1581759e42b27e91ee2b",
                    "7f2e2b88f8443e098dda7cbbf34b9290",
                    "ec614b851425758c99ff09376ab49ba7",
                    "217517873550620bacaf6b3cc61bf09b",
                    "0ef903333ba9613897060a04511dfa9f",
                    "b1d4d8e28a7db9da1d7bb3de4c664941",
                    "b4ef5bcb3e92e21123e951cf6f8f188e",
                ],
            },
            // https://csrc.nist.gov/files/pubs/fips/197/final/docs/fips-197.pdf
            TestVector {
                key: [
                    "2b7e151628aed2a6abf7158809cf4f3c",
                    "a0fafe1788542cb123a339392a6c7605",
                    "f2c295f27a96b9435935807a7359f67f",
                    "3d80477d4716fe3e1e237e446d7a883b",
                    "ef44a541a8525b7fb671253bdb0bad00",
                    "d4d1c6f87c839d87caf2b8bc11f915bc",
                    "6d88a37a110b3efddbf98641ca0093fd",
                    "4e54f70e5f5fc9f384a64fb24ea6dc4f",
                    "ead27321b58dbad2312bf5607f8d292f",
                    "ac7766f319fadc2128d12941575c006e",
                    "d014f9a8c9ee2589e13f0cc8b6630ca6",
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
                let key = Block128::from_hex(self.key).unwrap();
                {
                    let aes = Aes128::new(key);
                    let plaintext = Block128::from_hex(self.plaintext).unwrap();
                    let ciphertext = aes.encrypt(plaintext);
                    assert_eq!(ciphertext, self.ciphertext);
                }
                {
                    let aes = Aes128::new(key);
                    let ciphertext = Block128::from_hex(self.ciphertext).unwrap();
                    let plaintext = aes.decrypt(ciphertext);
                    assert_eq!(plaintext, self.plaintext);
                }
                {
                    let aes = Aes128::new_aeskeygenassist(key);
                    let ciphertext = Block128::from_hex(self.ciphertext).unwrap();
                    let plaintext = aes.decrypt(ciphertext);
                    assert_eq!(plaintext, self.plaintext);
                }
            }
        }

        // https://csrc.nist.gov/files/pubs/fips/197/final/docs/fips-197.pdf
        [
            TestVector {
                key: "000102030405060708090a0b0c0d0e0f",
                plaintext: "00112233445566778899aabbccddeeff",
                ciphertext: "69c4e0d86a7b0430d8cdb78070b4c55a",
            },
            //
        ]
        .iter()
        .for_each(|x| x.test());
    }
    #[test]
    fn encrypt_traunch() {
        for _ in 0..128 {
            let key = random::array::<KEY_LEN>();
            let aes = Aes128::from(key);
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
            let aes = Aes128::from(key);
            let plaintext = Block128::random();
            let ciphertext = aes.encrypt(plaintext);
            let decrypted = aes.decrypt(ciphertext);
            assert_eq!(plaintext, decrypted);
        }
    }
}
