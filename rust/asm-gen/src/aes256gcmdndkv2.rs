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
const NONCE_HEAD_LEN: usize = 15;
const NONCE_TAIL_LEN: usize = 9;
const NONCE_LEN: usize = NONCE_HEAD_LEN + NONCE_TAIL_LEN;
#[allow(unused)]
const TAG_LEN: usize = 16;

const MAX_AAD_BYTES: usize = (1 << 61) - 1; // 2^64 - 1 bits >= 2^61 - 1 bytes
const MAX_CRYPT_BYTES: usize = (1 << 36) - 16; // 2^39 - 256 bits = 2^36 - 16 bytes

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
    fn generate_block(nonce: [u8; NONCE_LEN]) -> [M128i; 3] {
        let config: [M128i; 3] = [
            [0, 0, 0, 0x60000000].into(),
            [0, 0, 0, 0x61000000].into(),
            [0, 0, 0, 0x62000000].into(),
        ];
        let mut head: M128i = unsafe { M128i::load(&nonce) };
        head = head.left_byteshift::<1>().right_byteshift::<1>();
        [head ^ config[0], head ^ config[1], head ^ config[2]]
    }
    #[inline]
    fn derive(&self, nonce: [u8; NONCE_LEN]) -> [M128i; 2] {
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
        [TestVector {
            key: "0100000000000000000000000000000000000000000000000000000000000000",
            nonce: "000102030405060708090a0b0c0d0e0f1011121314151617",
            derived: "d974a46fbbeb3dec953ce088ef6b608573248947acf51606de5a1e5b72629197",
            aad: "0100000011",
            plaintext: "11000001",
            ciphertext: "7f6e39cc",
            tag: "b61df0a502c167164e99fa23b7d12b9d",
        }]
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
