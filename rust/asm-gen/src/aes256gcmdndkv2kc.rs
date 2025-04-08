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
    fn generate_block(nonce: [u8; NONCE_LEN]) -> [M128i; 5] {
        let config: [M128i; 5] = [
            [0, 0, 0, 0xe0000000].into(),
            [0, 0, 0, 0xe1000000].into(),
            [0, 0, 0, 0xe2000000].into(),
            [0, 0, 0, 0xe3000000].into(),
            [0, 0, 0, 0xe4000000].into(),
        ];
        let mut head: M128i = unsafe { M128i::load(&nonce) };
        head = head.left_byteshift::<1>().right_byteshift::<1>();
        [
            head ^ config[0],
            head ^ config[1],
            head ^ config[2],
            head ^ config[3],
            head ^ config[4],
        ]
    }
    #[inline]
    fn derive(&self, nonce: [u8; NONCE_LEN]) -> ([M128i; 2], [M128i; 2]) {
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
        [M128i; 2],
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
        tag.write(commit);
        state.encrypt(iv, aad, data, tag)
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
        let Some(input_kc) = tag.read::<[M128i; 2]>() else {
            return false;
        };

        // If the key commitment is not equal to the expected value, then the key is not valid.
        if (!((kc[0] ^ input_kc[0]) | (kc[1] ^ input_kc[1])).is_zero()) {
            return false;
        }
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
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
                derived: "3d1480ee39a968d581d16a578bdaf0e6719dcfff6e127b40bbdd844accea7e1c",
                commit: "2baf00efd298de13055c9a6c39e05aee571583384357635e144fa21444239968",
                aad: "0100000011",
                plaintext: "11000001",
                ciphertext: "8eee8a4b",
                tag: "2baf00efd298de13055c9a6c39e05aee571583384357635e144fa214442399688a1c8d0ceb7e07e3c834cafe75aa001f",
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
