// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::AesRoundInput;
use crate::aes::AesRoundKeys;
use crate::intrinsics::m128i::*;

pub const NUM_ROUNDS: usize = 15;
pub(crate) const KEY_LEN: usize = 32;
#[allow(unused)]
const BLOCK_LEN: usize = 16;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct Aes256(AesRoundKeys<NUM_ROUNDS>);

impl core::ops::Index<usize> for Aes256 {
    type Output = M128i;
    #[inline(always)]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl core::ops::IndexMut<usize> for Aes256 {
    #[inline(always)]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

impl From<[u8; KEY_LEN]> for Aes256 {
    #[inline(always)]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self::new(M128iArray::from(key).into())
    }
}

impl From<Aes256> for AesRoundKeys<NUM_ROUNDS> {
    #[inline(always)]
    fn from(aes: Aes256) -> Self {
        aes.0
    }
}

#[allow(unused)]
impl Aes256 {
    #[inline(always)]
    pub fn zero() -> Self {
        Self([M128i::zero(); NUM_ROUNDS].into())
    }
    #[inline(always)]
    pub fn new(key: [M128i; 2]) -> Self {
        Self::new_aesenclast(key)
    }
    #[inline(always)]
    pub fn new_and_encrypt<const N: usize>(
        key: [M128i; 2],
        mut blocks: [M128i; N],
    ) -> (Self, [M128i; N]) {
        match N {
            #[cfg(feature = "skylake")]
            1 | 6 => {
                use crate::asm::vaesenc_expand_and_crypt::expand_and_crypt_step;
                let mut rcon = M128i::from([1, 1, 1, 1]);
                let mut aes = Self::zero();
                aes.0[0] = key[0];
                aes.0[1] = key[1];
                aes.encrypt_round_first(&mut blocks);
                aes.expand_step_aesenclast::<2>(&mut rcon);
                aes.encrypt_round(&mut blocks, 1);
                aes.expand_step_aesenclast::<3>(&mut rcon);
                expand_and_crypt_step(&mut aes, 4, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 5, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 6, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 7, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 8, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 9, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 10, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 11, &mut rcon, &mut blocks);
                expand_and_crypt_step(&mut aes, 12, &mut rcon, &mut blocks);
                aes.expand_step_aesenclast::<13>(&mut rcon);
                aes.expand_step_aesenclast::<14>(&mut rcon);
                aes.encrypt_round(&mut blocks, 11);
                aes.encrypt_round(&mut blocks, 12);
                aes.encrypt_round(&mut blocks, 13);
                aes.encrypt_round_last(&mut blocks);
                (aes, blocks)
            }
            _ => {
                let aes = Self::new_aesenclast(key);
                let blocks = aes.encrypt(blocks);
                (aes, blocks)
            }
        }
    }
    #[inline(always)]
    pub fn new_aesenclast(key: [M128i; 2]) -> Self {
        let mut this = Self::zero();
        this.0[0] = key[0];
        this.0[1] = key[1];
        let mut rcon = M128i::from([1, 1, 1, 1]);
        this.expand_step_aesenclast::<2>(&mut rcon);
        this.expand_step_aesenclast::<3>(&mut rcon);
        this.expand_step_aesenclast::<4>(&mut rcon);
        this.expand_step_aesenclast::<5>(&mut rcon);
        this.expand_step_aesenclast::<6>(&mut rcon);
        this.expand_step_aesenclast::<7>(&mut rcon);
        this.expand_step_aesenclast::<8>(&mut rcon);
        this.expand_step_aesenclast::<9>(&mut rcon);
        this.expand_step_aesenclast::<10>(&mut rcon);
        this.expand_step_aesenclast::<11>(&mut rcon);
        this.expand_step_aesenclast::<12>(&mut rcon);
        this.expand_step_aesenclast::<13>(&mut rcon);
        this.expand_step_aesenclast::<14>(&mut rcon);
        this
    }
    #[inline(always)]
    pub fn new_aeskeygenassist(key: [M128i; 2]) -> Self {
        let mut this = Self::zero();
        this.0[0] = key[0];
        this.0[1] = key[1];
        this.expand_step_aeskeygenassist::<2>();
        this.expand_step_aeskeygenassist::<3>();
        this.expand_step_aeskeygenassist::<4>();
        this.expand_step_aeskeygenassist::<5>();
        this.expand_step_aeskeygenassist::<6>();
        this.expand_step_aeskeygenassist::<7>();
        this.expand_step_aeskeygenassist::<8>();
        this.expand_step_aeskeygenassist::<9>();
        this.expand_step_aeskeygenassist::<10>();
        this.expand_step_aeskeygenassist::<11>();
        this.expand_step_aeskeygenassist::<12>();
        this.expand_step_aeskeygenassist::<13>();
        this.expand_step_aeskeygenassist::<14>();
        this
    }
    #[inline(always)]
    pub fn expand_step_aesenclast<const N: usize>(&mut self, even_rcon: &mut M128i) -> &mut Self {
        debug_assert!(N >= 2);
        debug_assert!(N < NUM_ROUNDS);

        let tmp = self[N - 2]
            ^ self[N - 2].left_byteshift::<4>()
            ^ self[N - 2].left_byteshift::<8>()
            ^ self[N - 2].left_byteshift::<12>();
        self[N] = if N % 2 == 0 {
            let rcon = *even_rcon;
            *even_rcon = even_rcon.left_bitshift64::<1>();
            self[N - 1]
                .shuffle8([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d])
                .aesenclast(rcon)
                ^ tmp
        } else {
            let rcon = M128i::zero();
            self[N - 1].shuffle32::<0xff>().aesenclast(rcon) ^ tmp
        };

        self
    }
    #[inline(always)]
    fn expand_step_aeskeygenassist<const N: usize>(&mut self) -> &mut Self {
        debug_assert!(N >= 2);
        debug_assert!(N < NUM_ROUNDS);

        let tmp = self[N - 2]
            ^ self[N - 2].left_byteshift::<4>()
            ^ self[N - 2].left_byteshift::<8>()
            ^ self[N - 2].left_byteshift::<12>();
        self[N] = match N {
            3 | 5 | 7 | 9 | 11 | 13 => self[N - 1].aeskeygenassist::<0x00>().shuffle32::<0xaa>(),
            2 => self[N - 1].aeskeygenassist::<0x01>().shuffle32::<0xff>(),
            4 => self[N - 1].aeskeygenassist::<0x02>().shuffle32::<0xff>(),
            6 => self[N - 1].aeskeygenassist::<0x04>().shuffle32::<0xff>(),
            8 => self[N - 1].aeskeygenassist::<0x08>().shuffle32::<0xff>(),
            10 => self[N - 1].aeskeygenassist::<0x10>().shuffle32::<0xff>(),
            12 => self[N - 1].aeskeygenassist::<0x20>().shuffle32::<0xff>(),
            14 => self[N - 1].aeskeygenassist::<0x40>().shuffle32::<0xff>(),
            _ => unimplemented!(),
        } ^ tmp;

        self
    }
    #[inline(always)]
    pub fn encrypt_round_first(&self, item: &mut impl AesRoundInput) {
        self.0.encrypt_round_first(item);
    }
    #[inline(always)]
    pub fn encrypt_round(&self, item: &mut impl AesRoundInput, i: usize) {
        self.0.encrypt_round(item, i);
    }
    #[inline(always)]
    pub fn encrypt_round_last(&self, item: &mut impl AesRoundInput) {
        self.0.encrypt_round_last(item);
    }
    #[inline(always)]
    pub fn encrypt<T: AesRoundInput>(&self, plaintext: T) -> T {
        let mut ciphertext = plaintext;
        self.0.encrypt_round_first(&mut ciphertext);
        for i in 1..NUM_ROUNDS - 1 {
            self.0.encrypt_round(&mut ciphertext, i);
        }
        self.0.encrypt_round_last(&mut ciphertext);
        ciphertext
    }
    #[inline(always)]
    pub fn decrypt(&self, ciphertext: M128i) -> M128i {
        (ciphertext ^ self[14])
            .aesdec(self[13].aesimc())
            .aesdec(self[12].aesimc())
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
impl Default for Aes256 {
    #[inline(always)]
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
                let key = [
                    M128i::from_hex(self.key[0]).unwrap(),
                    M128i::from_hex(self.key[1]).unwrap(),
                ];
                let aes = Aes256::new(key);
                for i in 0..self.key.len() {
                    assert_eq!(aes[i], self.key[i], "{i}");
                }
            }
        }

        [
            TestVector {
                key: [
                    "00000000000000000000000000000000",
                    "00000000000000000000000000000000",
                    "62636363626363636263636362636363",
                    "aafbfbfbaafbfbfbaafbfbfbaafbfbfb",
                    "6f6c6ccf0d0f0fac6f6c6ccf0d0f0fac",
                    "7d8d8d6ad77676917d8d8d6ad7767691",
                    "5354edc15e5be26d31378ea23c38810e",
                    "968a81c141fcf7503c717a3aeb070cab",
                    "9eaa8f28c0f16d45f1c6e3e7cdfe62e9",
                    "2b312bdf6acddc8f56bca6b5bdbbaa1e",
                    "6406fd52a4f79017553173f098cf1119",
                    "6dbba90b0776758451cad331ec71792f",
                    "e7b0e89c4347788b16760b7b8eb91a62",
                    "74ed0ba1739b7e252251ad14ce20d43b",
                    "10f80a1753bf729c45c979e7cb706385",
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
            key: [&'static str; 2],
            plaintext: &'static str,
            ciphertext: &'static str,
        }
        impl TestVector {
            fn test(&self) {
                let key = [
                    M128i::from_hex(self.key[0]).unwrap(),
                    M128i::from_hex(self.key[1]).unwrap(),
                ];
                {
                    let aes = Aes256::new(key);
                    let plaintext = M128i::from_hex(self.plaintext).unwrap();
                    let ciphertext = aes.encrypt(plaintext);
                    assert_eq!(ciphertext, self.ciphertext);
                }
                {
                    let aes = Aes256::new(key);
                    let ciphertext = M128i::from_hex(self.ciphertext).unwrap();
                    let plaintext = aes.decrypt(ciphertext);
                    assert_eq!(plaintext, self.plaintext);
                }
                {
                    let aes = Aes256::new_aeskeygenassist(key);
                    let ciphertext = M128i::from_hex(self.ciphertext).unwrap();
                    let plaintext = aes.decrypt(ciphertext);
                    assert_eq!(plaintext, self.plaintext);
                }
                {
                    let aes = Aes256::new_aesenclast(key);
                    let ciphertext = M128i::from_hex(self.ciphertext).unwrap();
                    let plaintext = aes.decrypt(ciphertext);
                    assert_eq!(plaintext, self.plaintext);
                }
            }
        }

        // https://csrc.nist.gov/files/pubs/fips/197/final/docs/fips-197.pdf
        [
            TestVector {
                key: [
                    "000102030405060708090a0b0c0d0e0f",
                    "101112131415161718191a1b1c1d1e1f",
                ],
                plaintext: "00112233445566778899aabbccddeeff",
                ciphertext: "8ea2b7ca516745bfeafc49904b496089",
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
            let aes = Aes256::from(key);
            let plaintext = M128i::random();
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
            let aes = Aes256::from(key);
            let plaintext = M128i::random();
            let ciphertext = aes.encrypt(plaintext);
            let decrypted = aes.decrypt(ciphertext);
            assert_eq!(plaintext, decrypted);
        }
    }
    #[test]
    fn new_and_encrypt() {
        fn test_new_and_encrypt<const N: usize>() {
            for _ in 0..128 {
                let key = M128iArray::<2>::random().into();
                let plaintext = M128iArray::<N>::random();
                let (aes, ciphertext) = Aes256::new_and_encrypt(key, plaintext.into());
                assert_eq!(aes.encrypt(plaintext), ciphertext);
                assert_eq!(Aes256::new(key).encrypt(plaintext), ciphertext);
            }
        }
        test_new_and_encrypt::<1>();
        test_new_and_encrypt::<2>();
        test_new_and_encrypt::<3>();
        test_new_and_encrypt::<4>();
        test_new_and_encrypt::<5>();
        test_new_and_encrypt::<6>();
    }
}
