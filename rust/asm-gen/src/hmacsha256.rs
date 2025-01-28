// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::ffi::reader::Reader;
use crate::ffi::writer::Writer;
use crate::intrinsics::m128i::M128i;
use crate::ops::ArrayOps;
use crate::sha256;

const KEY_LEN: usize = 32;
const TAG_LEN: usize = 32;

const INNER_MASK: M128i = M128i::from_bytes([0x36; M128i::SIZE]);
const OUTER_MASK: M128i = M128i::from_bytes([0x5c; M128i::SIZE]);
const MASK: M128i = M128i::from_bytes([0x36 ^ 0x5c; M128i::SIZE]);

#[derive(Default)]
pub struct Hmac {
    key: [M128i; 2],
}
impl Hmac {
    #[inline]
    pub fn init(&mut self, key: &[u8]) -> bool {
        let Ok(key) = <[u8; KEY_LEN]>::try_from(key) else {
            return false;
        };
        let key: [[u8; 16]; 2] = key.ops().unflatten();
        self.key = key.map(|x| M128i::from(x) ^ INNER_MASK);
        true
    }
    #[inline(always)]
    pub fn sign_internal(&self, message: Reader) -> [M128i; 2] {
        self.sign_internal_exported::<()>(message)
    }
    #[inline(never)]
    #[export_name = "sign_internal"]
    pub fn sign_internal_exported<T>(&self, message: Reader) -> [M128i; 2] {
        let inner_key = [self.key[0], self.key[1], INNER_MASK, INNER_MASK];
        let outer_key = [
            self.key[0] ^ MASK,
            self.key[1] ^ MASK,
            OUTER_MASK,
            OUTER_MASK,
        ];

        let mut inner_sha256 = sha256::Sha256::default();
        let mut outer_sha256 = sha256::Sha256::default();

        inner_sha256.update_m128i(inner_key);
        outer_sha256.update_m128i(outer_key);

        inner_sha256.update(message);
        inner_sha256.finalize();
        let inner_digest = inner_sha256.digest_m128i();

        outer_sha256.update_m128i([
            inner_digest[0],
            inner_digest[1],
            M128i::from([0x80, 0]),                // one
            M128i::from([0, 0, 0, 0x00_03_00_00]), // len
        ]);
        let digest = outer_sha256.digest_m128i();
        let digest = digest.map(|x| x.byte_reverse());
        [
            digest[1].unpacklo64(digest[0]),
            digest[1].unpackhi64(digest[0]),
        ]
    }
    #[inline]
    pub fn sign(&self, message: Reader, mut tag_writer: Writer) -> bool {
        if tag_writer.len() != TAG_LEN {
            return false;
        }
        let tag = self.sign_internal(message);
        tag_writer.write(tag);
        true
    }
    #[inline]
    pub fn verify(&self, message: Reader, mut tag: Reader) -> bool {
        let Some(tag) = tag.read::<[M128i; 2]>() else {
            return false;
        };
        let computed = self.sign_internal(message);
        ((computed[0] ^ tag[0]) | (computed[1] ^ tag[1])).is_zero()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    impl Hmac {
        pub fn new(key: &[u8]) -> Option<Self> {
            let mut this = Self::default();
            this.init(key).then_some(this)
        }
    }

    #[test]
    fn empty() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }
        let key = hex::decode("0000000000000000000000000000000000000000000000000000000000000000")
            .unwrap();
        let hmac = Hmac::new(&key).unwrap();
        let message = [0u8; 0];
        let mut tag = [0u8; TAG_LEN];
        assert!(hmac.sign(message.as_slice().into(), tag.as_mut_slice().into()));
        assert_eq!(
            "b613679a0814d9ec772f95d778c35fc5ff1697c493715653c6c712144292c5ad",
            hex::encode(tag),
        );
    }

    #[test]
    fn compare() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }
        for len in 0..1024 {
            let key = random::array::<32>();
            let message = random::vec(len);
            let tag0 = {
                use hmac::Mac;
                let mut mac = hmac::Hmac::<sha2::Sha256>::new_from_slice(&key).unwrap();
                mac.update(&message);
                mac.finalize().into_bytes()
            };
            let tag1 = {
                let hmac = Hmac::new(&key).unwrap();
                let mut tag = [0u8; TAG_LEN];
                assert!(hmac.sign(message.as_slice().into(), tag.as_mut_slice().into()));
                tag
            };
            assert_eq!(hex::encode(tag0), hex::encode(tag1));
        }
    }
}
