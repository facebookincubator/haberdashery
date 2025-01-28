// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256::Aes256;
use crate::clmul::clmul128foil::*;
use crate::counter128::CounterBe128;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;
use crate::intrinsics::m128i::M128i;
use crate::ops::ArrayOps;
use crate::ops::Cast;
use crate::partial::PartialBlock;

const KEY_LEN: usize = 32;
pub const NONCE_LEN: usize = 12;
const TAG_LEN: usize = 16;
#[allow(unused)]
const BLOCK_LEN: usize = 16;

#[allow(unused)]
const LANES: usize = 6;

const MAX_AAD_BYTES: usize = (1 << 61) - 1; // 2^64 - 1 bits >= 2^61 - 1 bytes
const MAX_CRYPT_BYTES: usize = (1 << 36) - 16; // 2^39 - 256 bits = 2^36 - 16 bytes

#[repr(C)]
#[derive(Default)]
pub struct Aes256GcmKey<const N: usize> {
    aes: Aes256,
    polyval: ClMul128FoilPowerTable<N>,
}
impl<const N: usize> From<[u8; KEY_LEN]> for Aes256GcmKey<N> {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self::new(key.cast())
    }
}

impl<const N: usize> Aes256GcmKey<N> {
    #[inline]
    pub fn new(key: [M128i; 2]) -> Self {
        let (aes, ghash) = Aes256::new_and_encrypt(key, [M128i::zero()]);
        let polyval = ClMul128FoilPowerTable::new_ghash(ghash[0]);
        Self { aes, polyval }
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
        if aad.len() >= MAX_AAD_BYTES {
            return false;
        }
        if data.len() >= MAX_CRYPT_BYTES {
            return false;
        }
        let mut state = Aes256GcmState::default();
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
        let mut state = Aes256GcmState::default();
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
pub struct Aes256GcmState<const N: usize> {
    ghash: M128i,
    tag_ctr: M128i,
    ctr: CounterBe128,
    partial: PartialBlock,
    aad_len: usize,
    crypt_len: usize,
}
#[allow(unused)]
impl<const N: usize> Aes256GcmState<N> {
    #[inline]
    pub fn init(&mut self, key: &Aes256GcmKey<N>, nonce: &[u8]) -> bool {
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
        *self = Aes256GcmState {
            tag_ctr,
            ctr,
            ..Aes256GcmState::default()
        };
        true
    }
    #[inline]
    pub fn aad_update(&mut self, key: &Aes256GcmKey<N>, mut aad: Reader) -> usize {
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
        if let Some(block) = self.partial.fill_aad(&mut aad) {
            self.ghash = key.polyval[0]
                .clmul128foil(self.ghash ^ block.byte_reverse())
                .reduce();
        }
        if cfg!(feature = "avx512f") {
            for block in aad.iter::<[M128i; N]>() {
                let mut block = block.map(M128i::byte_reverse);
                block[0] ^= self.ghash;
                self.ghash = key.polyval.clmul128foil(block).reduce();
            }
        } else if let Some(block) = aad.read::<[M128i; N]>() {
            let mut product = {
                let mut block = block.map(M128i::byte_reverse);
                block[0] ^= self.ghash;
                key.polyval.clmul128foil(block)
            };
            for block in aad.iter::<[M128i; N]>() {
                product = {
                    self.ghash = product.reduce();
                    let mut block = block.map(M128i::byte_reverse);
                    block[0] ^= self.ghash;
                    key.polyval.clmul128foil(block)
                };
            }
            self.ghash = product.reduce();
        }
        for block in aad.iter::<M128i>() {
            self.ghash = key.polyval[0]
                .clmul128foil(self.ghash ^ block.byte_reverse())
                .reduce();
        }
        let remainder_len = aad.len();
        if let Some(block) = aad.remainder::<M128i>() {
            self.partial = PartialBlock::new_aad(block, remainder_len);
        }
        self.aad_len += len;
        len
    }
    #[inline]
    fn finalize_aad(&mut self, key: &Aes256GcmKey<N>) {
        if let Some(block) = self.partial.remainder() {
            self.ghash = key.polyval[0]
                .clmul128foil(self.ghash ^ block.byte_reverse())
                .reduce();
            self.partial = PartialBlock::default();
        }
    }
    #[inline]
    pub fn iteration_asm(
        &mut self,
        key: &Aes256GcmKey<N>,
        auth: [M128i; N],
        counters: [M128i; N],
        plaintext: [M128i; N],
    ) -> [M128i; N] {
        let auth = auth.map(M128i::byte_reverse);
        // Constructor performs first round of AES and auth
        let mut state =
            crate::aesgcm::RoundState::new(key.aes, counters, auth, key.polyval.keys(), self.ghash);
        // 13 rounds of aes + 6 rounds of auth
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        state.crypt_cmul();
        state.crypt();
        // Performs last round of AES
        let (pads, ghash) = state.finish();
        self.ghash = ghash;
        plaintext.ops() ^ pads
    }
    #[inline]
    pub fn encrypt_update(&mut self, key: &Aes256GcmKey<N>, mut data: ReaderWriter) -> usize {
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
        if let Some((_, block)) = self.partial.fill_crypt(&mut data) {
            self.ghash = key.polyval[0]
                .clmul128foil(self.ghash ^ block.byte_reverse())
                .reduce();
        }
        if let Some((block, writer)) = data.read::<[M128i; N]>() {
            let ctr = self.ctr.increment_traunch::<N>();
            let mut last_block = block.ops() ^ key.aes.encrypt(ctr);
            writer.write(last_block);
            for (block, writer) in data.iter::<[M128i; N]>() {
                let ctr = self.ctr.increment_traunch::<N>();
                last_block = match N {
                    6 => self.iteration_asm(key, last_block, ctr, block),
                    _ => {
                        {
                            let mut block = last_block.map(M128i::byte_reverse);
                            block[0] ^= self.ghash;
                            self.ghash = key.polyval.clmul128foil(block).reduce();
                        }
                        block.ops() ^ key.aes.encrypt(ctr)
                    }
                };
                writer.write(last_block);
            }
            let mut block = last_block.map(M128i::byte_reverse);
            block[0] ^= self.ghash;
            self.ghash = key.polyval.clmul128foil(block).reduce();
        }
        for (block, writer) in data.iter::<M128i>() {
            let ctr = self.ctr.increment();
            let block = key.aes.encrypt(ctr) ^ block;
            writer.write(block);
            self.ghash = key.polyval[0]
                .clmul128foil(self.ghash ^ block.byte_reverse())
                .reduce();
        }
        if let Some((block, writer)) = data.remainder::<M128i>() {
            let ctr = self.ctr.increment();
            let pad = key.aes.encrypt(ctr);
            let block = pad ^ block;
            let len = writer.len();
            writer.write(block);
            self.partial = PartialBlock::new(pad, block, len);
        }
        self.crypt_len += len;
        len
    }
    #[inline]
    pub fn decrypt_update(&mut self, key: &Aes256GcmKey<N>, mut data: ReaderWriter) -> usize {
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
        if let Some((pad, block)) = self.partial.fill_crypt(&mut data) {
            let block = (block ^ pad).byte_reverse();
            self.ghash = key.polyval[0].clmul128foil(self.ghash ^ block).reduce();
        }
        for (block, writer) in data.iter::<[M128i; N]>() {
            let ctr = self.ctr.increment_traunch::<N>();
            let block = match N {
                6 => self.iteration_asm(key, block, ctr, block),
                _ => {
                    {
                        let mut block = block.map(M128i::byte_reverse);
                        block[0] ^= self.ghash;
                        self.ghash = key.polyval.clmul128foil(block).reduce();
                    }
                    block.ops() ^ key.aes.encrypt(ctr)
                }
            };
            writer.write(block);
        }
        for (block, writer) in data.iter::<M128i>() {
            self.ghash = key.polyval[0]
                .clmul128foil(self.ghash ^ block.byte_reverse())
                .reduce();
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
        self.crypt_len += len;
        len
    }
    #[inline]
    pub fn encrypt_finalize(&mut self, key: &Aes256GcmKey<N>, mut tag: Writer) -> usize {
        tag.write(self.finalize(key, true))
    }
    #[inline]
    pub fn decrypt_finalize(&mut self, key: &Aes256GcmKey<N>, mut tag: Reader) -> bool {
        if tag.len() != TAG_LEN {
            return false;
        }
        let tag = tag.read::<M128i>().unwrap();
        let computed_tag = self.finalize(key, false);
        computed_tag.crypto_equals(tag)
    }
    #[inline]
    pub fn finalize(&mut self, key: &Aes256GcmKey<N>, is_encrypt: bool) -> M128i {
        if self.crypt_len == 0 {
            self.finalize_aad(key);
        }
        if self.crypt_len > 0 {
            if let Some(block) = self.partial.remainder_zero_pad(is_encrypt) {
                let mut block = block.byte_reverse();
                block ^= self.ghash;
                self.ghash = key.polyval[0].clmul128foil(block).reduce();
            }
            self.partial = PartialBlock::default();
        }
        self.ghash = key.polyval[0]
            .clmul128foil(self.ghash ^ [self.crypt_len as u64 * 8, self.aad_len as u64 * 8])
            .reduce();
        let tag_mask = key.aes.encrypt(self.tag_ctr);
        tag_mask ^ self.ghash.byte_reverse()
    }
}

#[cfg(test)]
mod tests {
    use hex2::*;

    use super::*;
    impl<const N: usize> Aes256GcmKey<N> {
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
    impl<const N: usize> Aes256GcmState<N> {
        pub fn aad_update_from_slice(&mut self, key: &Aes256GcmKey<N>, aad: &[u8]) -> usize {
            self.aad_update(key, aad.into())
        }
        pub fn encrypt_update_from_slice(
            &mut self,
            key: &Aes256GcmKey<N>,
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
            key: &Aes256GcmKey<N>,
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

            let aes = Aes256GcmKey::<N>::from(key);
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

    // https://luca-giuzzi.unibs.it/corsi/Support/papers-cryptography/gcm-spec.pdf
    const VECTORS: [TestVector; 8] = [
        TestVector {
            plaintext: "",
            aad: "",
            key: "0000000000000000000000000000000000000000000000000000000000000000",
            nonce: "000000000000000000000000",
            tag: "530f8afbc74536b9a963b4f1c4cb738b",
            ciphertext: "",
        },
        TestVector {
            plaintext: "",
            aad: "00000000000000000000000000000000",
            key: "0000000000000000000000000000000000000000000000000000000000000000",
            nonce: "000000000000000000000000",
            tag: "2d45552d8575922b3ca3cc538442fa26",
            ciphertext: "",
        },
        TestVector {
            plaintext: "00000000000000000000000000000000",
            aad: "",
            key: "0000000000000000000000000000000000000000000000000000000000000000",
            nonce: "000000000000000000000000",
            tag: "d0d1c8a799996bf0265b98b5d48ab919",
            ciphertext: "cea7403d4d606b6e074ec5d3baf39d18",
        },
        TestVector {
            plaintext: "00000000000000000000000000000000",
            aad: "00000000000000000000000000000000",
            key: "0000000000000000000000000000000000000000000000000000000000000000",
            nonce: "000000000000000000000000",
            tag: "ae9b1771dba9cf62b39be017940330b4",
            ciphertext: "cea7403d4d606b6e074ec5d3baf39d18",
        },
        TestVector {
            plaintext: "",
            aad: "00",
            key: "0000000000000000000000000000000000000000000000000000000000000000",
            nonce: "000000000000000000000000",
            tag: "d94b2706a3663cf0803fb37be0c3eb11",
            ciphertext: "",
        },
        TestVector {
            plaintext: "00",
            aad: "",
            key: "0000000000000000000000000000000000000000000000000000000000000000",
            nonce: "000000000000000000000000",
            tag: "33ae4b7da7279a657bb29076a094d43e",
            ciphertext: "ce",
        },
        TestVector {
            plaintext: "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255",
            aad: "",
            key: "feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308",
            nonce: "cafebabefacedbaddecaf888",
            tag: "b094dac5d93471bdec1a502270e3cc6c",
            ciphertext: "522dc1f099567d07f47f37a32a84427d643a8cdcbfe5c0c97598a2bd2555d1aa8cb08e48590dbb3da7b08b1056828838c5f61e6393ba7a0abcc9f662898015ad",
        },
        TestVector {
            plaintext: "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39",
            aad: "feedfacedeadbeeffeedfacedeadbeefabaddad2",
            key: "feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308",
            nonce: "cafebabefacedbaddecaf888",
            tag: "76fc6ece0f4e1768cddf8853bb2d551b",
            ciphertext: "522dc1f099567d07f47f37a32a84427d643a8cdcbfe5c0c97598a2bd2555d1aa8cb08e48590dbb3da7b08b1056828838c5f61e6393ba7a0abcc9f662",
        },
    ];

    #[test]
    fn manuscript() {
        VECTORS.iter().for_each(|v| v.test::<1>());
        VECTORS.iter().for_each(|v| v.test::<LANES>());
    }

    #[test]
    fn aad_crypt_aad() {
        const AAD_LEN: usize = 1215;
        const CRYPT_LEN: usize = 42;

        let key = Aes256GcmKey::<LANES>::from(random::array::<KEY_LEN>());
        let nonce = random::array::<NONCE_LEN>();
        let mut state = Aes256GcmState::<LANES>::default();

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

        let key = Aes256GcmKey::<LANES>::from(random::array::<KEY_LEN>());
        let nonce = random::array::<NONCE_LEN>();
        let mut state = Aes256GcmState::<LANES>::default();

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
        let key = Aes256GcmKey::<1>::from(random::array::<KEY_LEN>());
        let mut state = Aes256GcmState::default();
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
        let key = Aes256GcmKey::<1>::from(random::array::<KEY_LEN>());
        let mut state = Aes256GcmState::default();

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
    fn comparison() {
        use aes_gcm::aead::generic_array::GenericArray;
        use aes_gcm::AeadInPlace;
        use aes_gcm::KeyInit;

        for _ in 0..128 {
            let crypt_len = 4 << 10;
            let aad_len = 4 << 10;
            let crypt_len = crypt_len + random::usize() % crypt_len;
            let aad_len = aad_len + random::usize() % aad_len;

            let key = random::array::<KEY_LEN>();
            let nonce = random::vec(NONCE_LEN);
            let aad = random::vec(aad_len);
            let plaintext = random::vec(crypt_len);
            let mut inout = plaintext.clone();
            let mut decrypted = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            {
                let other = aes_gcm::Aes256Gcm::new_from_slice(&key).unwrap();
                let tag = other
                    .encrypt_in_place_detached(GenericArray::from_slice(&nonce), &aad, &mut inout)
                    .unwrap();
                assert!(Aes256GcmKey::<1>::from(key).decrypt_from_slices(
                    &nonce,
                    &aad,
                    &inout,
                    &tag,
                    &mut decrypted,
                ));
                assert_eq!(hex::encode(&decrypted), hex::encode(&plaintext));
            }
            {
                assert!(Aes256GcmKey::<1>::from(key).encrypt_from_slices(
                    &nonce,
                    &aad,
                    &plaintext,
                    &mut inout,
                    tag.as_mut_slice(),
                ));
                let other = aes_gcm::Aes256Gcm::new_from_slice(&key).unwrap();
                other
                    .decrypt_in_place_detached(
                        GenericArray::from_slice(&nonce),
                        &aad,
                        &mut inout,
                        GenericArray::from_slice(&tag),
                    )
                    .unwrap();
                assert_eq!(plaintext, inout);
            }
        }
    }

    #[test]
    fn streaming() {
        for vector in VECTORS {
            vector.test::<LANES>();

            let key = hex::decode(vector.key).unwrap();
            let nonce = hex::decode(vector.nonce).unwrap();
            let aad = hex::decode(vector.aad).unwrap();
            let plaintext = hex::decode(vector.plaintext).unwrap();

            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            let mut aes_key = Aes256GcmKey::<LANES>::default();
            let mut state = Aes256GcmState::<LANES>::default();
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
        for vector in VECTORS {
            vector.test::<LANES>();

            let key = hex::decode(vector.key).unwrap();
            let nonce = hex::decode(vector.nonce).unwrap();
            let aad = hex::decode(vector.aad).unwrap();
            let plaintext = hex::decode(vector.plaintext).unwrap();

            for win_len in [1, 3, 31] {
                let mut ciphertext = vec![0u8; plaintext.len()];
                let mut tag = [0u8; TAG_LEN];
                let mut aes_key = Aes256GcmKey::<LANES>::default();
                let mut state = Aes256GcmState::<LANES>::default();

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
                let mut aes_key = Aes256GcmKey::<LANES>::default();
                let mut state = Aes256GcmState::<LANES>::default();

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
            std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes256gcm.cozybuf")).unwrap();
        let mut reader = bytes.as_slice();

        fn verify_cozybuf<const N: usize>(v: &AeadTestVector) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let aead = Aes256GcmKey::<N>::from(key);
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
