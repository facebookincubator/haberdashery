// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes192::Aes192;
use crate::clmulfoil::ClMulFoil;
use crate::counter128::CounterBe128;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;
use crate::ghash::ghash_key;
use crate::ghash::ByteReverse;
use crate::ghash::GhashState;
use crate::intrinsics::m128i::M128i;
use crate::ops::ArrayOps;
use crate::partial::PartialBlock;
use crate::polyval::PolyvalKey;

const KEY_LEN: usize = 24;
pub const NONCE_LEN: usize = 12;
const TAG_LEN: usize = 16;

const MAX_AAD_BYTES: usize = (1 << 61) - 1; // 2^64 - 1 bits >= 2^61 - 1 bytes
const MAX_CRYPT_BYTES: usize = (1 << 36) - 16; // 2^39 - 256 bits = 2^36 - 16 bytes

#[repr(C)]
pub struct Aes192GcmKey<const N: usize> {
    aes: Aes192,
    ghash: PolyvalKey<N>,
}
impl<const N: usize> Default for Aes192GcmKey<N> {
    #[inline]
    fn default() -> Self {
        Self {
            aes: Aes192::default(),
            ghash: PolyvalKey::<N>::default(),
        }
    }
}
impl<const N: usize> From<[M128i; 2]> for Aes192GcmKey<N> {
    #[inline]
    fn from(key: [M128i; 2]) -> Self {
        let aes = Aes192::from(key);
        let ghash = ghash_key(aes.encrypt(M128i::zero()));
        Self { aes, ghash }
    }
}
impl<const N: usize> From<[u8; KEY_LEN]> for Aes192GcmKey<N> {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        let aes = Aes192::from(key);
        let ghash = ghash_key(aes.encrypt(M128i::zero()));
        Self { aes, ghash }
    }
}

impl<const N: usize> Aes192GcmKey<N> {
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
        if aad.len() >= MAX_AAD_BYTES {
            return false;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return false;
        }
        let mut state = Aes192GcmState::default();
        if !state.init(self, nonce) {
            return false;
        }
        if aad.len() != state.aad_update(self, aad) {
            return false;
        }
        if data.is_empty() {
            state.finalize_aad(self);
        } else if data.len() != state.encrypt_update(self, data) {
            return false;
        }
        state.encrypt_finalize(self, tag) == TAG_LEN
    }
    #[inline]
    pub fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        if tag.len() != TAG_LEN {
            return false;
        }
        if aad.len() >= MAX_AAD_BYTES {
            return false;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return false;
        }
        let mut state = Aes192GcmState::default();
        if !state.init(self, nonce) {
            return false;
        }
        if aad.len() != state.aad_update(self, aad) {
            return false;
        }
        if data.is_empty() {
            state.finalize_aad(self);
        } else if data.len() != state.decrypt_update(self, data) {
            return false;
        }
        state.decrypt_finalize(self, tag)
    }
}
#[repr(C)]
#[derive(Default, Clone)]
pub struct Aes192GcmState<const N: usize> {
    ghash: M128i,
    tag_ctr: M128i,
    ctr: CounterBe128,
    partial: PartialBlock,
    aad_len: usize,
    crypt_len: usize,
}
#[allow(unused)]
impl<const N: usize> Aes192GcmState<N> {
    #[inline]
    pub fn init(&mut self, key: &Aes192GcmKey<N>, nonce: &[u8]) -> bool {
        let Ok(nonce) = <[u8; NONCE_LEN]>::try_from(nonce) else {
            return false;
        };
        let nonce: [[u8; 4]; 3] = unsafe { core::mem::transmute(nonce) };
        let ctr = M128i::from([
            u32::from_le_bytes(nonce[0]),
            u32::from_le_bytes(nonce[1]),
            u32::from_le_bytes(nonce[2]),
            0x01_00_00_00,
        ]);
        let mut ctr = CounterBe128::from(ctr);
        let tag_ctr = ctr.increment();
        *self = Aes192GcmState {
            tag_ctr,
            ctr,
            ..Aes192GcmState::default()
        };
        true
    }
    #[cfg_attr(feature = "asm_gen", inline(always))]
    pub fn aad_update(&mut self, key: &Aes192GcmKey<N>, mut aad: Reader) -> usize {
        if aad.is_empty() {
            return 0;
        }
        if aad.len() >= MAX_AAD_BYTES {
            return 0;
        }
        if aad.len() + self.aad_len >= MAX_AAD_BYTES {
            return 0;
        }
        if self.crypt_len > 0 {
            return 0;
        }
        let len = aad.len();
        let mut ghash = GhashState::new(key.ghash, self.ghash);
        if let Some(block) = self.partial.fill_aad(&mut aad) {
            ghash.hash(block);
        }
        if cfg!(feature = "avx512f") {
            for block in aad.iter::<[M128i; N]>() {
                ghash.hash(block);
            }
        } else if let Some(block) = aad.read::<[M128i; N]>() {
            let mut block = block.byte_reverse();
            block[0] ^= ghash.raw();
            let mut hash = key.ghash.clmul_foil(block);
            for block in aad.iter::<[M128i; N]>() {
                ghash.set_raw_hash(hash.reduce());
                let mut block = block.byte_reverse();
                block[0] ^= ghash.raw();
                hash = key.ghash.clmul_foil(block);
            }
            ghash.set_raw_hash(hash.reduce());
        }
        for block in aad.iter::<M128i>() {
            ghash.hash(block);
        }
        let remainder_len = aad.len();
        if let Some(block) = aad.remainder::<M128i>() {
            self.partial = PartialBlock::new_aad(block, remainder_len);
        }
        self.ghash = ghash.raw();
        self.aad_len += len;
        len
    }
    #[inline]
    fn finalize_aad(&mut self, key: &Aes192GcmKey<N>) {
        if let Some(block) = self.partial.remainder() {
            let mut ghash = GhashState::new(key.ghash, self.ghash);
            ghash.hash(block);
            self.ghash = ghash.raw();
            self.partial = PartialBlock::default();
        }
    }
    #[inline]
    pub fn iteration_asm(
        &mut self,
        key: &Aes192GcmKey<N>,
        hash: &mut GhashState<N>,
        auth: [M128i; N],
        counters: [M128i; N],
        plaintext: [M128i; N],
    ) -> [M128i; N] {
        let auth = auth.byte_reverse();
        // Constructor performs first round of AES and auth
        let mut state =
            crate::aesgcm::RoundState::new(key.aes, counters, auth, hash.keys(), hash.raw());
        // 11 rounds of aes + 6 rounds of auth
        state.crypt();
        state.crypt_cmul();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt_cmul();
        state.crypt();
        // Performs last round of AES
        let (pads, new_hash) = state.finish();
        hash.set_raw_hash(new_hash);
        plaintext.ops() ^ pads
    }
    #[inline]
    pub fn encrypt_update(&mut self, key: &Aes192GcmKey<N>, mut data: ReaderWriter) -> usize {
        if data.is_empty() {
            return 0;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return 0;
        }
        if data.len() + self.crypt_len >= MAX_CRYPT_BYTES {
            return 0;
        }
        if self.crypt_len == 0 {
            self.finalize_aad(key);
        }
        let len = data.len();
        let mut ghash = GhashState::new(key.ghash, self.ghash);
        if let Some((_, block)) = self.partial.fill_crypt(&mut data) {
            ghash.hash(block);
        }
        if let Some((block, writer)) = data.read::<[M128i; N]>() {
            let ctr = self.ctr.increment_traunch::<N>();
            let mut last_block = block.ops() ^ key.aes.encrypt(ctr);
            writer.write(last_block);
            for (block, writer) in data.iter::<[M128i; N]>() {
                let ctr = self.ctr.increment_traunch::<N>();
                last_block = match N {
                    6 => self.iteration_asm(key, &mut ghash, last_block, ctr, block),
                    _ => {
                        ghash.hash(last_block);
                        block.ops() ^ key.aes.encrypt(ctr)
                    }
                };
                writer.write(last_block);
            }
            ghash.hash(last_block);
        }
        for (block, writer) in data.iter::<M128i>() {
            let ctr = self.ctr.increment();
            let block = key.aes.encrypt(ctr) ^ block;
            writer.write(block);
            ghash.hash(block);
        }
        if let Some((block, writer)) = data.remainder::<M128i>() {
            let ctr = self.ctr.increment();
            let pad = key.aes.encrypt(ctr);
            let block = pad ^ block;
            let len = writer.len();
            writer.write(block);
            self.partial = PartialBlock::new(pad, block, len);
        }
        self.ghash = ghash.raw();
        self.crypt_len += len;
        len
    }
    #[inline]
    pub fn decrypt_update(&mut self, key: &Aes192GcmKey<N>, mut data: ReaderWriter) -> usize {
        if data.is_empty() {
            return 0;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return 0;
        }
        if data.len() + self.crypt_len >= MAX_CRYPT_BYTES {
            return 0;
        }
        if self.crypt_len == 0 {
            self.finalize_aad(key);
        }
        let len = data.len();
        let mut ghash = GhashState::new(key.ghash, self.ghash);
        if let Some((pad, block)) = self.partial.fill_crypt(&mut data) {
            ghash.hash(block ^ pad);
        }
        for (block, writer) in data.iter::<[M128i; N]>() {
            let ctr = self.ctr.increment_traunch::<N>();
            let block = match N {
                6 => self.iteration_asm(key, &mut ghash, block, ctr, block),
                _ => {
                    ghash.hash(block);
                    block.ops() ^ key.aes.encrypt(ctr)
                }
            };
            writer.write(block);
        }
        for (block, writer) in data.iter::<M128i>() {
            ghash.hash(block);
            let ctr = self.ctr.increment();
            let block = key.aes.encrypt(ctr) ^ block;
            writer.write(block);
        }
        if let Some((block, writer)) = data.remainder::<M128i>() {
            let ctr = self.ctr.increment();
            let pad = key.aes.encrypt(ctr);
            let block = pad ^ block;
            let len = writer.len();
            writer.write(block);
            self.partial = PartialBlock::new(pad, block, len);
        }
        self.ghash = ghash.raw();
        self.crypt_len += len;
        len
    }
    #[inline]
    pub fn encrypt_finalize(&mut self, key: &Aes192GcmKey<N>, mut tag: Writer) -> usize {
        tag.write(self.finalize(key, true))
    }
    #[inline]
    pub fn decrypt_finalize(&mut self, key: &Aes192GcmKey<N>, mut tag: Reader) -> bool {
        if tag.len() != TAG_LEN {
            return false;
        }
        let tag = tag.read::<M128i>().unwrap();
        let computed_tag = self.finalize(key, false);
        computed_tag.crypto_equals(tag)
    }
    #[inline]
    pub fn finalize(&mut self, key: &Aes192GcmKey<N>, is_encrypt: bool) -> M128i {
        let mut ghash = GhashState::new(key.ghash, self.ghash);
        if self.crypt_len == 0 {
            self.finalize_aad(key);
        }
        if self.crypt_len > 0 {
            if let Some(block) = self.partial.remainder_zero_pad(is_encrypt) {
                ghash.hash(block);
            }
            self.partial = PartialBlock::default();
        }
        ghash.hash_lengths(self.aad_len, self.crypt_len);
        let tag_mask = key.aes.encrypt(self.tag_ctr);
        tag_mask ^ ghash.result()
    }
}

#[cfg(test)]
mod tests {
    use hex2::*;

    use super::*;

    const LANES: usize = 6;

    impl<const N: usize> Aes192GcmKey<N> {
        pub fn encrypt_from_slices(
            &self,
            nonce: &[u8],
            aad: &[u8],
            plaintext: &[u8],
            ciphertext: &mut [u8],
            tag: &mut [u8],
        ) -> bool {
            let Some(data) = ReaderWriter::from_slices(plaintext, ciphertext) else {
                return false;
            };
            self.encrypt(nonce, aad.into(), data, tag.into())
        }
        pub fn decrypt_from_slices(
            &self,
            nonce: &[u8],
            aad: &[u8],
            ciphertext: &[u8],
            tag: &[u8],
            plaintext: &mut [u8],
        ) -> bool {
            let Some(data) = ReaderWriter::from_slices(ciphertext, plaintext) else {
                return false;
            };
            self.decrypt(nonce, aad.into(), data, tag.into())
        }
    }
    impl<const N: usize> Aes192GcmState<N> {
        pub fn aad_update_from_slice(&mut self, key: &Aes192GcmKey<N>, aad: &[u8]) -> usize {
            self.aad_update(key, aad.into())
        }
        pub fn encrypt_update_from_slice(
            &mut self,
            key: &Aes192GcmKey<N>,
            plaintext: &[u8],
            ciphertext: &mut [u8],
        ) -> usize {
            self.encrypt_update(
                key,
                ReaderWriter::from_slices(plaintext, ciphertext).unwrap(),
            )
        }
        pub fn decrypt_update_from_slice(
            &mut self,
            key: &Aes192GcmKey<N>,
            ciphertext: &[u8],
            plaintext: &mut [u8],
        ) -> usize {
            self.decrypt_update(
                key,
                ReaderWriter::from_slices(ciphertext, plaintext).unwrap(),
            )
        }
    }

    struct TestVector {
        plaintext: &'static str,
        aad: &'static str,
        key: &'static str,
        nonce: &'static str,
        tag: &'static str,
        ciphertext: &'static str,
    }
    impl TestVector {
        fn test<const N: usize>(&self) {
            let key: [u8; KEY_LEN] = hex::decode(self.key).unwrap().try_into().unwrap();
            let nonce = hex::decode(self.nonce).unwrap();
            let aad = hex::decode(self.aad).unwrap();
            let plaintext = hex::decode(self.plaintext).unwrap();
            let mut ciphertext = vec![1u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];

            let aes = Aes192GcmKey::<N>::from(key);
            assert!(aes.encrypt_from_slices(&nonce, &aad, &plaintext, &mut ciphertext, &mut tag));
            assert_eq!(hex::encode(tag), self.tag, "tag");
            assert_eq!(hex::encode(&ciphertext), self.ciphertext, "ciphertext");
            let mut plaintext = vec![0u8; plaintext.len()];
            assert!(aes.decrypt_from_slices(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
            assert_eq!(hex::encode(&plaintext), self.plaintext, "plaintext");

            {
                let mut tag = tag.clone();
                tag[0] ^= 0x01;
                assert!(!aes.decrypt_from_slices(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
            }
            {
                let mut nonce = nonce.clone();
                nonce[0] ^= 0x01;
                assert!(!aes.decrypt_from_slices(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
            }
            if !aad.is_empty() {
                let mut aad = aad.clone();
                aad[0] ^= 0x01;
                assert!(!aes.decrypt_from_slices(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
            }
            if !ciphertext.is_empty() {
                let mut ciphertext = ciphertext.clone();
                ciphertext[0] ^= 0x01;
                assert!(!aes.decrypt_from_slices(
                    &nonce,
                    &ciphertext,
                    &ciphertext,
                    &tag,
                    &mut plaintext
                ));
            }
        }
    }

    fn vectors() -> Vec<TestVector> {
        // https://luca-giuzzi.unibs.it/corsi/Support/papers-cryptography/gcm-spec.pdf
        [
            TestVector {
                plaintext: "",
                aad: "",
                key: "000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000",
                tag: "cd33b28ac773f74ba00ed1f312572435",
                ciphertext: "",
            },
            TestVector {
                plaintext: "",
                aad: "00000000000000000000000000000000",
                key: "000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000",
                tag: "7f0d6248b11f290f4067435fad0587dd",
                ciphertext: "",
            },
            TestVector {
                plaintext: "00000000000000000000000000000000",
                aad: "",
                key: "000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000",
                tag: "2ff58d80033927ab8ef4d4587514f0fb",
                ciphertext: "98e7247c07f0fe411c267e4384b0f600",
            },
            TestVector {
                plaintext: "00000000000000000000000000000000",
                aad: "00000000000000000000000000000000",
                key: "000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000",
                tag: "9dcb5d427555f9ef6e9d46f4ca465313",
                ciphertext: "98e7247c07f0fe411c267e4384b0f600",
            },
            TestVector {
                plaintext: "",
                aad: "00",
                key: "000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000",
                tag: "27105f86e0153aafee0848d9d9a20e0b",
                ciphertext: "",
            },
            TestVector {
                plaintext: "00",
                aad: "",
                key: "000000000000000000000000000000000000000000000000",
                nonce: "000000000000000000000000",
                tag: "f8f188f251ffdd27a71f5f9531a7fb9a",
                ciphertext: "98",
            },
            TestVector {
                plaintext: "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255",
                aad: "",
                key: "feffe9928665731c6d6a8f9467308308feffe9928665731c",
                nonce: "cafebabefacedbaddecaf888",
                tag: "9924a7c8587336bfb118024db8674a14",
                ciphertext: "3980ca0b3c00e841eb06fac4872a2757859e1ceaa6efd984628593b40ca1e19c7d773d00c144c525ac619d18c84a3f4718e2448b2fe324d9ccda2710acade256",
            },
            TestVector {
                plaintext: "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39",
                aad: "feedfacedeadbeeffeedfacedeadbeefabaddad2",
                key: "feffe9928665731c6d6a8f9467308308feffe9928665731c",
                nonce: "cafebabefacedbaddecaf888",
                tag: "2519498e80f1478f37ba55bd6d27618c",
                ciphertext: "3980ca0b3c00e841eb06fac4872a2757859e1ceaa6efd984628593b40ca1e19c7d773d00c144c525ac619d18c84a3f4718e2448b2fe324d9ccda2710",
            },
        ]
        .into()
    }

    #[test]
    fn manuscript() {
        vectors().iter().for_each(|v| v.test::<1>());
        vectors().iter().for_each(|v| v.test::<LANES>());
    }

    #[test]
    fn aad_crypt_aad() {
        const AAD_LEN: usize = 1215;
        const CRYPT_LEN: usize = 42;

        let key = Aes192GcmKey::<LANES>::from(random::array::<KEY_LEN>());
        let nonce = random::array::<NONCE_LEN>();
        let mut state = Aes192GcmState::<LANES>::default();

        let aad = random::array::<AAD_LEN>();
        let plaintext = random::array::<CRYPT_LEN>();
        let mut ciphertext = [0x00; CRYPT_LEN];
        let mut decrypted = [0x00; CRYPT_LEN];
        let mut tag = [0u8; TAG_LEN];

        // Grab a reference tag
        let reference_tag = {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.encrypt_update_from_slice(&key, &plaintext, &mut ciphertext),
                plaintext.len()
            );
            assert_eq!(
                state.encrypt_finalize(&key, tag.as_mut_slice().into()),
                TAG_LEN
            );
            tag
        };

        // Verify the tag, as a sanity check
        {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.decrypt_update_from_slice(&key, &ciphertext, &mut decrypted),
                decrypted.len()
            );
            assert!(state.decrypt_finalize(&key, reference_tag.as_slice().into()));
            assert_eq!(decrypted.to_hex(), plaintext.to_hex());
        }

        // aad, encrypt, aad. The second aad is skipped
        {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.encrypt_update_from_slice(&key, &plaintext, &mut ciphertext),
                plaintext.len()
            );
            assert_eq!(state.aad_update_from_slice(&key, &aad), 0); // Skipped
            assert_eq!(
                state.encrypt_finalize(&key, tag.as_mut_slice().into()),
                TAG_LEN
            );
            assert_eq!(reference_tag.to_hex(), tag.to_hex());
        }

        // aad, decrypt, aad. The second aad is skipped
        {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.decrypt_update_from_slice(&key, &ciphertext, &mut decrypted),
                decrypted.len()
            );
            assert_eq!(state.aad_update_from_slice(&key, &aad), 0); // Skipped
            assert!(state.decrypt_finalize(&key, reference_tag.as_slice().into()));
            assert_eq!(decrypted.to_hex(), plaintext.to_hex());
        }
    }

    #[test]
    fn aad_empty_crypt_aad() {
        const AAD_LEN: usize = 1215;

        let key = Aes192GcmKey::<LANES>::from(random::array::<KEY_LEN>());
        let nonce = random::array::<NONCE_LEN>();
        let mut state = Aes192GcmState::<LANES>::default();

        let aad = random::array::<AAD_LEN>();
        let empty = [0x00; 0];
        let mut empty_mut = [0x00; 0];
        let mut tag = [0u8; TAG_LEN];

        // Grab a reference tag
        let reference_tag = {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            // We expect the following to be a no-op, so we construct our reference tag accordingly
            // state.encrypt_update_from_slice(&key, &empty, &mut empty_mut)
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.encrypt_finalize(&key, tag.as_mut_slice().into()),
                TAG_LEN
            );
            tag
        };

        // Verify the tag, as a sanity check
        {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert!(state.decrypt_finalize(&key, reference_tag.as_slice().into()));
        }

        // aad, encrypt, aad. The encrypt is skipped
        {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.encrypt_update_from_slice(&key, &empty, &mut empty_mut),
                0
            ); // Skipped
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.encrypt_finalize(&key, tag.as_mut_slice().into()),
                TAG_LEN
            );
            assert_eq!(reference_tag.to_hex(), tag.to_hex());
        }

        // aad, decrypt, aad. The decrypt is skipped
        {
            assert!(state.init(&key, &nonce));
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert_eq!(
                state.decrypt_update_from_slice(&key, &empty, &mut empty_mut),
                0
            ); // Skipped
            assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len());
            assert!(state.decrypt_finalize(&key, tag.as_slice().into()));
        }
    }

    #[test]
    fn max_aad() {
        const LEN: usize = 42;
        let key = Aes192GcmKey::<1>::from(random::array::<KEY_LEN>());
        let mut state = Aes192GcmState::default();
        assert!(state.init(&key, &random::array::<NONCE_LEN>()));

        let aad = [0x00; LEN];
        // tweak the internals of the state to pretend we consumed lots of aad
        state.aad_len = MAX_AAD_BYTES - 1 - aad.len();
        assert_eq!(state.aad_update_from_slice(&key, &aad), aad.len()); // Works
        assert_eq!(state.aad_update_from_slice(&key, &aad), 0); // Overflow
    }

    #[test]
    fn max_crypt() {
        const LEN: usize = 42;
        let key = Aes192GcmKey::<1>::from(random::array::<KEY_LEN>());
        let mut state = Aes192GcmState::default();

        let plaintext = [0x00; LEN];
        let mut ciphertext = [0x00; LEN];
        let mut decrypted = [0x00; LEN];

        {
            assert!(state.init(&key, &random::array::<NONCE_LEN>()));
            // tweak the internals of the state to pretend we consumed lots of plaintext
            state.crypt_len = MAX_CRYPT_BYTES - 1 - plaintext.len();
            // Works
            assert_eq!(
                state.encrypt_update_from_slice(&key, &plaintext, &mut ciphertext),
                plaintext.len()
            );
            // Overflow
            assert_eq!(
                state.encrypt_update_from_slice(&key, &plaintext, &mut ciphertext),
                0
            );
        }
        {
            assert!(state.init(&key, &random::array::<NONCE_LEN>()));
            // tweak the internals of the state to pretend we consumed lots of plaintext
            state.crypt_len = MAX_CRYPT_BYTES - 1 - ciphertext.len();
            // Works
            assert_eq!(
                state.decrypt_update_from_slice(&key, &ciphertext, &mut decrypted),
                ciphertext.len()
            );
            // Overflow
            assert_eq!(
                state.decrypt_update_from_slice(&key, &ciphertext, &mut decrypted),
                0
            );
        }
    }

    #[test]
    fn streaming() {
        for vector in vectors() {
            vector.test::<LANES>();

            let key = hex::decode(vector.key).unwrap();
            let nonce = hex::decode(vector.nonce).unwrap();
            let aad = hex::decode(vector.aad).unwrap();
            let plaintext = hex::decode(vector.plaintext).unwrap();

            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            let mut aes_key = Aes192GcmKey::<LANES>::default();
            let mut state = Aes192GcmState::<LANES>::default();
            assert!(aes_key.init(&key), "key");
            assert!(state.init(&aes_key, &nonce), "nonce");
            assert_eq!(
                state.aad_update_from_slice(&aes_key, &aad),
                aad.len(),
                "aad for encrypt"
            );
            assert_eq!(
                state.encrypt_update_from_slice(&aes_key, &plaintext, &mut ciphertext),
                plaintext.len(),
                "encrypt"
            );

            assert_eq!(
                state.encrypt_finalize(&aes_key, tag.as_mut_slice().into()),
                tag.len(),
                "finalize encrypt"
            );
            assert_eq!(hex::encode(tag), vector.tag, "tag");
            assert_eq!(hex::encode(ciphertext), vector.ciphertext, "ciphertext");
        }
        for vector in vectors() {
            vector.test::<LANES>();

            let key = hex::decode(vector.key).unwrap();
            let nonce = hex::decode(vector.nonce).unwrap();
            let aad = hex::decode(vector.aad).unwrap();
            let plaintext = hex::decode(vector.plaintext).unwrap();

            for win_len in [1, 3, 31] {
                let mut ciphertext = vec![0u8; plaintext.len()];
                let mut tag = [0u8; TAG_LEN];
                let mut aes_key = Aes192GcmKey::<LANES>::default();
                let mut state = Aes192GcmState::<LANES>::default();

                assert!(aes_key.init(&key), "key");
                assert!(state.init(&aes_key, &nonce), "nonce");

                if aad.len() < win_len {
                    assert_eq!(
                        state.aad_update_from_slice(&aes_key, &aad),
                        aad.len(),
                        "aad encrypt"
                    );
                } else {
                    for aad_chunk in aad.chunks(win_len) {
                        assert_eq!(
                            state.aad_update_from_slice(&aes_key, aad_chunk),
                            aad_chunk.len(),
                            "aad window {win_len}"
                        );
                    }
                }

                if plaintext.len() < win_len {
                    assert_eq!(
                        state.encrypt_update_from_slice(&aes_key, &plaintext, &mut ciphertext),
                        plaintext.len(),
                        "encrypt"
                    );
                } else {
                    for (plaintext_chunk, ciphertext_chunk) in plaintext
                        .chunks(win_len)
                        .zip(ciphertext.chunks_mut(win_len))
                    {
                        assert_eq!(
                            state.encrypt_update_from_slice(
                                &aes_key,
                                plaintext_chunk,
                                ciphertext_chunk
                            ),
                            plaintext_chunk.len(),
                            "encrypt window {win_len}"
                        );
                    }
                }

                assert_eq!(
                    state.encrypt_finalize(&aes_key, tag.as_mut_slice().into()),
                    tag.len(),
                    "encrypt finalize"
                );
                assert_eq!(hex::encode(tag), vector.tag, "tag");
                assert_eq!(hex::encode(ciphertext), vector.ciphertext, "ciphertext");
            }

            let ciphertext = hex::decode(vector.ciphertext).unwrap();
            let tag = hex::decode(vector.tag).unwrap();
            for win_len in [1, 3, 31] {
                let mut plaintext = vec![0u8; ciphertext.len()];
                let mut aes_key = Aes192GcmKey::<LANES>::default();
                let mut state = Aes192GcmState::<LANES>::default();

                assert!(aes_key.init(&key), "key");
                assert!(state.init(&aes_key, &nonce), "nonce");

                if aad.len() < win_len {
                    assert_eq!(
                        state.aad_update_from_slice(&aes_key, &aad),
                        aad.len(),
                        "aad decrypt"
                    );
                } else {
                    for aad_chunk in aad.chunks(win_len) {
                        assert_eq!(
                            state.aad_update_from_slice(&aes_key, aad_chunk),
                            aad_chunk.len(),
                            "aad decrypt window {win_len}"
                        );
                    }
                }

                if plaintext.len() < win_len {
                    assert_eq!(
                        state.decrypt_update_from_slice(&aes_key, &ciphertext, &mut plaintext),
                        ciphertext.len(),
                        "decrypt"
                    );
                } else {
                    for (ciphertext_chunk, plaintext_chunk) in ciphertext
                        .chunks(win_len)
                        .zip(plaintext.chunks_mut(win_len))
                    {
                        assert_eq!(
                            state.decrypt_update_from_slice(
                                &aes_key,
                                ciphertext_chunk,
                                plaintext_chunk
                            ),
                            ciphertext_chunk.len(),
                            "decrypt window {win_len}"
                        );
                    }
                }

                assert!(
                    state.decrypt_finalize(&aes_key, tag.as_slice().into()),
                    "decrypt finalize"
                );
                assert_eq!(hex::encode(plaintext), vector.plaintext, "plaintext");
            }
        }
    }

    #[test]
    fn cozybuf() {
        use test_vectors::AeadTestVector;
        let bytes =
            std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes192gcm.cozybuf")).unwrap();
        let mut reader = bytes.as_slice();

        fn verify_cozybuf<const N: usize>(v: &AeadTestVector) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let aead = Aes192GcmKey::<N>::from(key);
            let mut ciphertext = vec![0u8; v.plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into()
            ));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag.as_slice());
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.ciphertext, &mut plaintext).unwrap(),
                v.tag.as_slice().into()
            ));
            assert_eq!(plaintext, v.plaintext);
        }

        while let Ok(v) = AeadTestVector::from_reader(&mut reader) {
            verify_cozybuf::<1>(&v);
            verify_cozybuf::<2>(&v);
            verify_cozybuf::<3>(&v);
            verify_cozybuf::<4>(&v);
            verify_cozybuf::<5>(&v);
            verify_cozybuf::<6>(&v);
            verify_cozybuf::<7>(&v);
            verify_cozybuf::<8>(&v);
            verify_cozybuf::<16>(&v);
            verify_cozybuf::<32>(&v);
            verify_cozybuf::<256>(&v);
        }
        assert!(reader.is_empty());
    }
}
