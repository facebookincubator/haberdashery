// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256::Aes256;
use crate::aes256gcm::Aes256GcmKey;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;
use crate::intrinsics::m128i::M128i;

const KEY_LEN: usize = 32;
const HALF_NONCE_LEN: usize = 12;
const NONCE_LEN: usize = HALF_NONCE_LEN * 2;
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
    fn split_nonce(nonce: [u8; NONCE_LEN]) -> (M128i, M128i) {
        let nonce: [[u8; 4]; 6] = unsafe { core::mem::transmute(nonce) };
        let nonce: [u32; 6] = nonce.map(u32::from_le_bytes);
        (
            [0, nonce[0], nonce[1], nonce[2]].into(),
            [1, nonce[3], nonce[4], nonce[5]].into(),
        )
    }
    #[inline]
    fn derive(&self, nonce: [u8; NONCE_LEN]) -> [M128i; 2] {
        let nonce = Self::split_nonce(nonce);
        let b = [
            nonce.0 ^ [0, 0, 0, 0], // B0
            nonce.1 ^ [0, 0, 0, 0], // B1
            nonce.0 ^ [2, 0, 0, 0], // B2
            nonce.1 ^ [2, 0, 0, 0], // B3
            nonce.0 ^ [4, 0, 0, 0], // B4
            nonce.1 ^ [4, 0, 0, 0], // B5
        ];
        let x = self.aes.encrypt(b);
        let y = [
            x[2] ^ x[0], // Y0
            x[3] ^ x[1], // Y1
            x[4] ^ x[0], // Y2
            x[5] ^ x[1], // Y3
        ];
        [
            y[0] ^ y[1], //
            y[2] ^ y[3], //
        ]
    }
    #[inline]
    fn make_state(&self, nonce: [u8; NONCE_LEN]) -> Aes256GcmDndkState {
        let key = self.derive(nonce);
        Aes256GcmDndkState(Aes256GcmKey::new(key))
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
        self.make_state(nonce).encrypt(aad, data, tag)
    }
    #[inline]
    pub fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
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
        self.make_state(nonce).decrypt(aad, data, tag)
    }
}

struct Aes256GcmDndkState(Aes256GcmKey<6>);
impl Aes256GcmDndkState {
    #[inline]
    fn encrypt(&self, aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
        // The aes-gcm key is single-use, derived from the DNDK nonce, so it's safe to pass an
        // all-zero nonce to aes-gcm internally.
        let nonce = [0u8; crate::aes256gcm::NONCE_LEN];
        self.0.encrypt(&nonce, aad, data, tag)
    }
    #[inline]
    fn decrypt(&self, aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        // The aes-gcm key is single-use, derived from the DNDK nonce, so it's safe to pass an
        // all-zero nonce to aes-gcm internally.
        let nonce = [0u8; crate::aes256gcm::NONCE_LEN];
        self.0.decrypt(&nonce, aad, data, tag)
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
                derived: "c0ade2dfe459352f99fd0affc01ba7d47f6d55e8639dac8c45b515a168a7c499",
                aad: "",
                plaintext: "",
                ciphertext: "",
                tag: "74c465925ee50c417434ec76bb9080b9",
            },
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000000000000000000000000000",
                derived: "c0ade2dfe459352f99fd0affc01ba7d47f6d55e8639dac8c45b515a168a7c499",
                aad: "",
                plaintext: "0000000000000000",
                ciphertext: "4354b64869429b05",
                tag: "c799e345165253cbda9e625a377d5588",
            },
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000000000000000000000000000",
                derived: "c0ade2dfe459352f99fd0affc01ba7d47f6d55e8639dac8c45b515a168a7c499",
                aad: "0000000000000000",
                plaintext: "",
                ciphertext: "",
                tag: "a8295234e961eb3cf601d418ec80d4c7",
            },
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000000000000000000000000000",
                derived: "c0ade2dfe459352f99fd0affc01ba7d47f6d55e8639dac8c45b515a168a7c499",
                aad: "0000000000000000",
                plaintext: "0000000000000000",
                ciphertext: "4354b64869429b05",
                tag: "1b74d4e3a1d6b4b658ab5a34606d01f6",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "ce67fb719e2c9fee140fb5be3985baf4564f47ecf8b3d81ae9be425f9adcd1cf",
                aad: "",
                plaintext: "",
                ciphertext: "",
                tag: "516137de2fcf65fc8fdbe44f868d356b",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "ce67fb719e2c9fee140fb5be3985baf4564f47ecf8b3d81ae9be425f9adcd1cf",
                aad: "",
                plaintext: "828bdfe3ef1fbe",
                ciphertext: "a909fd0a9d4f1b",
                tag: "4a7f2d9f4edfcb5d1ac1054cf9ff577b",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "ce67fb719e2c9fee140fb5be3985baf4564f47ecf8b3d81ae9be425f9adcd1cf",
                aad: "912fe205339c18",
                plaintext: "",
                ciphertext: "",
                tag: "e4fed8db9320b63319a66aeb550460fd",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "ce67fb719e2c9fee140fb5be3985baf4564f47ecf8b3d81ae9be425f9adcd1cf",
                aad: "912fe205339c18",
                plaintext: "828bdfe3ef1fbe",
                ciphertext: "a909fd0a9d4f1b",
                tag: "eadd3bd96869b17673b2fc28308207a1",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "18c272b0158afa71ed99b64e5e39daaaaae37e70fa1b46407256c0b6f8531a64",
                aad: "1100000001",
                plaintext: "11000001",
                ciphertext: "e6de36f2",
                tag: "16f308f22e331cd1c6efdf90d4ba9fad",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "18c272b0158afa71ed99b64e5e39daaaaae37e70fa1b46407256c0b6f8531a64",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "e6de36f2",
                tag: "e5973b407bafcd39a20f92ac8d1f5629",
            },
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000000000000000000000000000",
                derived: "c0ade2dfe459352f99fd0affc01ba7d47f6d55e8639dac8c45b515a168a7c499",
                aad: "",
                plaintext: "",
                ciphertext: "",
                tag: "74c465925ee50c417434ec76bb9080b9",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "18c272b0158afa71ed99b64e5e39daaaaae37e70fa1b46407256c0b6f8531a64",
                aad: "0100000011",
                plaintext: "",
                ciphertext: "",
                tag: "d56b282beefcf28562e1edd0e40c24f5",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "18c272b0158afa71ed99b64e5e39daaaaae37e70fa1b46407256c0b6f8531a64",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "e6de36f2",
                tag: "e5973b407bafcd39a20f92ac8d1f5629",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "18c272b0158afa71ed99b64e5e39daaaaae37e70fa1b46407256c0b6f8531a64",
                aad: "",
                plaintext: "11000001",
                ciphertext: "e6de36f2",
                tag: "b91e812064989a7c561ad8c4bab25ae1",
            },
        ]
        .iter()
        .for_each(|v| v.test());
    }

    #[test]
    fn cozybuf() {
        use test_vectors::AeadTestVector;
        let bytes =
            std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes256gcmdndk.cozybuf")).unwrap();
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
