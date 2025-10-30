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
#[allow(unused)]
const KEY_COMMITMENT_LEN: usize = 32;

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
    fn generate_block(nonce: [u8; NONCE_LEN]) -> [Block128; 5] {
        let config: [Block128; 5] = [
            [0, 0, 0, 0xe0000000].into(),
            [0, 0, 0, 0xe1000000].into(),
            [0, 0, 0, 0xe2000000].into(),
            [0, 0, 0, 0xe3000000].into(),
            [0, 0, 0, 0xe4000000].into(),
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
        [
            head ^ config[0],
            head ^ config[1],
            head ^ config[2],
            head ^ config[3],
            head ^ config[4],
        ]
    }
    #[inline]
    fn derive(&self, nonce: [u8; NONCE_LEN]) -> ([Block128; 2], [Block128; 2]) {
        let b = Self::generate_block(nonce);
        let x = [
            self.aes.encrypt(b[0]),
            self.aes.encrypt(b[1]),
            self.aes.encrypt(b[2]),
            self.aes.encrypt(b[3]),
            self.aes.encrypt(b[4]),
        ];
        let key = [x[1] ^ x[0], x[2] ^ x[0]];
        let commit = [x[3] ^ x[0], x[4] ^ x[0]];
        (key, commit)
    }
    #[inline]
    fn make_state(
        &self,
        nonce: [u8; NONCE_LEN],
    ) -> (
        [u8; crate::aes256gcm::NONCE_LEN],
        Aes256GcmDndkState,
        [Block128; 2],
    ) {
        let iv: [u8; crate::aes256gcm::NONCE_LEN] = [
            nonce[15], nonce[16], nonce[17], nonce[18], //
            nonce[19], nonce[20], nonce[21], nonce[22], //
            nonce[23], 0, 0, 0,
        ];
        let (key, commit) = self.derive(nonce);
        (iv, Aes256GcmDndkState(Aes256GcmKey::new(key)), commit)
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
        if tag.len() != TAG_LEN + KEY_COMMITMENT_LEN {
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
        let (iv, state, commit) = self.make_state(nonce);
        let (mut tag_writer, mut commit_writer) = tag.split(TAG_LEN);
        commit_writer.write(commit);
        state.encrypt(iv, aad, data, tag_writer)
    }
    #[inline]
    pub fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        let mut tag = tag;
        if tag.len() != TAG_LEN + KEY_COMMITMENT_LEN {
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
        let (iv, state, kc) = self.make_state(nonce);
        let (mut tag_reader, mut commit_reader) = tag.split(TAG_LEN);
        let Some(input_kc) = commit_reader.read::<[Block128; 2]>() else {
            return false;
        };

        // If the key commitment is not equal to the expected value, then the key is not valid.
        if (!((kc[0] ^ input_kc[0]) | (kc[1] ^ input_kc[1])).is_zero()) {
            return false;
        }
        state.decrypt(iv, aad, data, tag_reader)
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
        commit: &'static str,
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
                let (derived, commit) = aead.derive(nonce);
                assert_eq!(
                    derived[0].to_string() + &derived[1].to_string(),
                    self.derived
                );
                assert_eq!(commit[0].to_string() + &commit[1].to_string(), self.commit);
            }

            let aad = hex::decode(self.aad).unwrap();
            let plaintext = hex::decode(self.plaintext).unwrap();
            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN + KEY_COMMITMENT_LEN];
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
                derived: "49ea31f2e73c17671676fc4d8e67e14577ecce71d5a5658351e3308078ff60e8",
                commit: "405e2a1d62695608922a776a670af5b5206098b4eddeb1a0d4bb45b47bc4e334",
                aad: "0000000000000000",
                plaintext: "0000000000000000",
                ciphertext: "d1d3ce9fc6d40bd2",
                tag: "5f902595e36f7b21fdf67628a14b4f84405e2a1d62695608922a776a670af5b5206098b4eddeb1a0d4bb45b47bc4e334",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "3d1480ee39a968d581d16a578bdaf0e6719dcfff6e127b40bbdd844accea7e1c",
                commit: "2baf00efd298de13055c9a6c39e05aee571583384357635e144fa21444239968",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "8eee8a4b",
                tag: "8a1c8d0ceb7e07e3c834cafe75aa001f2baf00efd298de13055c9a6c39e05aee571583384357635e144fa21444239968",
            },
            TestVector {
                key: "01ff000000000000000000000000000000000000000000000000000000000000",
                nonce: "17161514131211100f0e0d0c0b0a09080706050403020100",
                derived: "a0bd1592528594f8767df9ade956b6cc0c64488716f858294ab8fb8b4e836ea5",
                commit: "43924266113da4f22863713f2b27a3d4d68bdc2c40a809f04fc1af10e87fbb11",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "7e70225c",
                tag: "c0dcedd1234456029beaab06958c4d6b43924266113da4f22863713f2b27a3d4d68bdc2c40a809f04fc1af10e87fbb11",
            },
            TestVector {
                key: "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "1992d0f34a0ec29efe5ce0b97528b8d4cf7b314ed8cc6700e472988f04ef5614",
                commit: "e3e8759933cd89395fb5c5fbec98d256c9b086b19d5b28372b0323c08c0f200e",
                aad: "aabbccddeeff",
                plaintext: "deadbeef",
                ciphertext: "4739d3b5",
                tag: "f456730fd7598a165279237209e68effe3e8759933cd89395fb5c5fbec98d256c9b086b19d5b28372b0323c08c0f200e",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "a6103cb727fd9bc8fadd911a264648a239aec05177f7d0fb84381b2be3ad6bee",
                commit: "4ce4767f41022ab687520b07ca4a2f0abd0e88eb6fbcbf8fe8cacd3ca5efef59",
                aad: "",
                plaintext: "828bdfe3ef1fbe",
                ciphertext: "2a3c2ad69b8d94",
                tag: "f9efd965f9b08a83810000395255ea5d4ce4767f41022ab687520b07ca4a2f0abd0e88eb6fbcbf8fe8cacd3ca5efef59",
            },
            TestVector {
                key: "ac26691099c7538d03aa670a25c13747917e09edd0f7a71844218b4bd0664d3e",
                nonce: "9a01aa58977d7589e0de2f7eaae921330f215260767c7dc5",
                derived: "a6103cb727fd9bc8fadd911a264648a239aec05177f7d0fb84381b2be3ad6bee",
                commit: "4ce4767f41022ab687520b07ca4a2f0abd0e88eb6fbcbf8fe8cacd3ca5efef59",
                aad: "912fe205339c18",
                plaintext: "828bdfe3ef1fbe",
                ciphertext: "2a3c2ad69b8d94",
                tag: "ec8e11cf2c89e4e0d19e88a7598fc7604ce4767f41022ab687520b07ca4a2f0abd0e88eb6fbcbf8fe8cacd3ca5efef59",
            },
            TestVector {
                key: "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
                nonce: "0102030405060708090a0b0c0d0e0f101112131415161718",
                derived: "bf1298db4c837b1ed336be3e9070781a99c44cd7432b463e5892e667b5ce3769",
                commit: "f2bc4dfc1b2f1dcacd10ab9e51646daa683e66f7f16804838b2a037177877ac3",
                aad: "0011223344",
                plaintext: "cafebabe",
                ciphertext: "5cdb2887",
                tag: "0c289f943442e5446bcf0fda06c2c5e1f2bc4dfc1b2f1dcacd10ab9e51646daa683e66f7f16804838b2a037177877ac3",
            },
        ]
        .iter()
        .for_each(|v| v.test());
    }

    #[test]
    fn cozybuf() {
        use test_vectors::AeadTestVector;
        let bytes =
            std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes256gcmdndkv2kc.cozybuf"))
                .unwrap();
        let mut reader = bytes.as_slice();

        // Dndk derives a separate per-nonce aes-gcm key which is used to by aes-gcm to encrypt the actual message.
        // Since we already get multi-lane coverage from aes-gcm's tests, we don't bother verifying against multiple lanes here
        while let Ok(v) = AeadTestVector::from_reader(&mut reader) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let aead = Aes256GcmDndkKey::from(key);
            let mut ciphertext = vec![0u8; v.plaintext.len()];
            let mut tag = [0u8; TAG_LEN + KEY_COMMITMENT_LEN];
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
