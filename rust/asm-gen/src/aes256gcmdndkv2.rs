// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::aes256::Aes256;
use crate::aes256gcm::Aes256GcmKey;
use crate::block::Block128;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;

const KEY_LEN: usize = 32;
const NONCE_LEN: usize = 24;
#[allow(unused)]
const TAG_LEN: usize = 16;

const MAX_AAD_BYTES: usize = (1 << 61) - 1; // 2^64 - 1 bits >= 2^61 - 1 bytes
const MAX_CRYPT_BYTES: usize = (1 << 36) - 32; // 2^39 - 256 bits = 2^36 - 32 bytes

#[repr(C)]
pub struct Aes256GcmDndkKey {
    aes: Aes256,
}
impl From<[u8; KEY_LEN]> for Aes256GcmDndkKey {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self { aes: key.into() }
    }
}
#[allow(unused)]
impl Aes256GcmDndkKey {
    #[inline]
    fn generate_block(nonce: [u8; NONCE_LEN]) -> [Block128; 3] {
        let config: [Block128; 3] = [
            [0, 0, 0, 0x60000000].into(),
            [0, 0, 0, 0x61000000].into(),
            [0, 0, 0, 0x62000000].into(),
        ];
        let mut head: Block128 = unsafe { Block128::load(&nonce) };
        #[cfg(target_arch = "x86_64")]
        {
            head = head.left_byteshift::<1>().right_byteshift::<1>();
        }
        #[cfg(not(target_arch = "x86_64"))]
        {
            head = unsafe { head.mov_range(0..15) };
        }

        [head ^ config[0], head ^ config[1], head ^ config[2]]
    }
    #[inline]
    fn derive(&self, nonce: [u8; NONCE_LEN]) -> [Block128; 2] {
        let b = Self::generate_block(nonce);
        let x = [
            self.aes.encrypt(b[0]),
            self.aes.encrypt(b[1]),
            self.aes.encrypt(b[2]),
        ];
        [x[1] ^ x[0], x[2] ^ x[0]]
    }
    #[inline]
    fn make_state(
        &self,
        nonce: [u8; NONCE_LEN],
    ) -> ([u8; crate::aes256gcm::NONCE_LEN], Aes256GcmDndkState) {
        let iv: [u8; crate::aes256gcm::NONCE_LEN] = [
            nonce[15], nonce[16], nonce[17], nonce[18], //
            nonce[19], nonce[20], nonce[21], nonce[22], //
            nonce[23], 0, 0, 0,
        ];
        let key = self.derive(nonce);
        (iv, Aes256GcmDndkState(Aes256GcmKey::new(key)))
    }
    #[inline]
    pub fn init(&mut self, key: &[u8]) -> bool {
        let Ok(key) = <[u8; KEY_LEN]>::try_from(key) else {
            return false;
        };
        *self = Self::from(key);
        true
    }
    #[inline]
    pub fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
        let mut tag = tag;
        if tag.len() != TAG_LEN {
            return false;
        }
        if nonce.len() != NONCE_LEN {
            return false;
        }
        if aad.len() >= MAX_AAD_BYTES {
            return false;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return false;
        }
        let Ok(nonce) = <[u8; NONCE_LEN]>::try_from(nonce) else {
            return false;
        };
        let (iv, state) = self.make_state(nonce);
        state.encrypt(iv, aad, data, tag)
    }
    #[inline]
    pub fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        let mut tag = tag;
        if tag.len() != TAG_LEN {
            return false;
        }
        if nonce.len() != NONCE_LEN {
            return false;
        }
        if aad.len() >= MAX_AAD_BYTES {
            return false;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return false;
        }
        let Ok(nonce) = <[u8; NONCE_LEN]>::try_from(nonce) else {
            return false;
        };
        let (iv, state) = self.make_state(nonce);
        state.decrypt(iv, aad, data, tag)
    }
}

struct Aes256GcmDndkState(Aes256GcmKey<6>);
impl Aes256GcmDndkState {
    #[inline]
    fn encrypt(
        &self,
        iv: [u8; crate::aes256gcm::NONCE_LEN],
        aad: Reader,
        data: ReaderWriter,
        tag: Writer,
    ) -> bool {
        self.0.encrypt(&iv, aad, data, tag)
    }
    #[inline]
    fn decrypt(
        &self,
        iv: [u8; crate::aes256gcm::NONCE_LEN],
        aad: Reader,
        data: ReaderWriter,
        tag: Reader,
    ) -> bool {
        self.0.decrypt(&iv, aad, data, tag)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    struct TestVector {
        key: &'static str,
        nonce: &'static str,
        derived: &'static str,
        aad: &'static str,
        plaintext: &'static str,
        ciphertext: &'static str,
        tag: &'static str,
    }
    impl TestVector {
        fn test(&self) {
            let key: [u8; KEY_LEN] = hex::decode(self.key).unwrap().try_into().unwrap();
            let nonce = hex::decode(self.nonce).unwrap();
            let aead = Aes256GcmDndkKey::from(key);
            {
                let nonce = nonce.clone().try_into().unwrap();
                let derived = aead.derive(nonce);
                assert_eq!(
                    derived[0].to_string() + &derived[1].to_string(),
                    self.derived
                );
            }

            let aad = hex::decode(self.aad).unwrap();
            let plaintext = hex::decode(self.plaintext).unwrap();
            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt(
                &nonce,
                aad.as_slice().into(),
                ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into(),
            ));
            assert_eq!(hex::encode(tag), self.tag, "tag");
            assert_eq!(hex::encode(&ciphertext), self.ciphertext, "ciphertext");
            let mut plaintext = vec![0u8; plaintext.len()];
            assert!(aead.decrypt(
                &nonce,
                aad.as_slice().into(),
                ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                tag.as_slice().into(),
            ));
            assert_eq!(hex::encode(&plaintext), self.plaintext, "plaintext");

            {
                let mut tag = tag.clone();
                tag[0] ^= 0x01;
                assert!(!aead.decrypt(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into(),
                ));
            }
            {
                let mut nonce = nonce.clone();
                nonce[0] ^= 0x01;
                assert!(!aead.decrypt(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into(),
                ));
            }
            if !aad.is_empty() {
                let mut aad = aad.clone();
                aad[0] ^= 0x01;
                assert!(!aead.decrypt(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into(),
                ));
            }
            if !ciphertext.is_empty() {
                let mut ciphertext = ciphertext.clone();
                ciphertext[0] ^= 0x01;
                assert!(!aead.decrypt(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into(),
                ));
            }
        }
    }

    #[test]
    fn crypt_vectors() {
        [
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000000000000000000000000000",
                derived: "6dd86131283a6ee15d34297610a2fd262b9c906a9a76e4f17bf420c8c723d80c",
                aad: "0000000000000000",
                plaintext: "0000000000000000",
                ciphertext: "0acfad6e1f5de5cd",
                tag: "37dd83b43cb9e0c57e1ff32f23aff55a",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "d974a46fbbeb3dec953ce088ef6b608573248947acf51606de5a1e5b72629197",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "7f6e39cc",
                tag: "b61df0a502c167164e99fa23b7d12b9d",
            },
            TestVector {
                key: "01ff000000000000000000000000000000000000000000000000000000000000",
                nonce: "17161514131211100f0e0d0c0b0a09080706050403020100",
                derived: "cc01983b80085610b9116ede3cd13d7768d1981bd5f33a1e73b586eb95ab1142",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "df510e36",
                tag: "1ab683fd667ebf4456a691f67f390ed5",
            },
            TestVector {
                key: "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "3728d086a6d7e1d6491f8a5215825cf02ca859f6b94255d277587a0cc68bc005",
                aad: "aabbccddeeff",
                plaintext: "deadbeef",
                ciphertext: "2a8e8088",
                tag: "fb47056cef3ed0174f9c2fb279c151b9",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "49b385db6081d6c0e624dd93529f788fedb1eed043639731da7ed64747017d53",
                aad: "",
                plaintext: "828bdfe3ef1fbe",
                ciphertext: "293c8d9360e186",
                tag: "6a73237aa6fe2afe89cca8d5bdc7df69",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "49b385db6081d6c0e624dd93529f788fedb1eed043639731da7ed64747017d53",
                aad: "912fe205339c18",
                plaintext: "828bdfe3ef1fbe",
                ciphertext: "293c8d9360e186",
                tag: "ae9987238abaea27b685fbe151174ac9",
            },
            TestVector {
                key: "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
                nonce: "0102030405060708090a0b0c0d0e0f101112131415161718",
                derived: "88dd3c958ea4222f9d83f535cc6de39327001250295eff96168e6a1026cbe940",
                aad: "0011223344",
                plaintext: "cafebabe",
                ciphertext: "2d2f0fbf",
                tag: "0a1f72c6ab6b98fa236688410c10dd7b",
            },
        ]
        .iter()
        .for_each(|v| v.test());
    }

    #[test]
    fn cozybuf() {
        use test_vectors::AeadTestVector;
        let bytes = std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes256gcmdndkv2.cozybuf"))
            .unwrap();
        let mut reader = bytes.as_slice();

        // Dndk derives a separate per-nonce aes-gcm key which is used to by aes-gcm to encrypt the actual message.
        // Since we already get multi-lane coverage from aes-gcm's tests, we don't bother verifying against multiple lanes here
        while let Ok(v) = AeadTestVector::from_reader(&mut reader) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let aead = Aes256GcmDndkKey::from(key);
            let mut ciphertext = vec![0u8; v.plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into(),
            ));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag.as_slice());
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.ciphertext, &mut plaintext).unwrap(),
                v.tag.as_slice().into(),
            ));
            assert_eq!(plaintext, v.plaintext);
        }
        assert!(reader.is_empty());
    }
}
