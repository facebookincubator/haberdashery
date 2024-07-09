// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256::Aes256;
use crate::counter128::Counter128;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;
use crate::intrinsics::m128i::M128i;
use crate::ops::ArrayOps;
use crate::polyval::PolyvalKey;
use crate::polyval::PolyvalState;

pub const KEY_LEN: usize = 32;
pub const NONCE_LEN: usize = 12;
pub const TAG_LEN: usize = 16;

const MAX_AAD_BYTES: usize = 1 << 36;
const MAX_CRYPT_BYTES: usize = 1 << 36;

const COUNTER_MASK: [u32; 4] = [0, 0, 0, 0x80000000];
const TAG_MASK: [u32; 4] = [0xff_ff_ff_ff, 0xff_ff_ff_ff, 0xff_ff_ff_ff, 0x7f_ff_ff_ff];

#[repr(C)]
#[derive(Default)]
pub struct Aes256GcmSivKey {
    aes: Aes256,
}
impl From<[u8; KEY_LEN]> for Aes256GcmSivKey {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self { aes: key.into() }
    }
}
impl Aes256GcmSivKey {
    #[inline]
    pub fn init(&mut self, key: &[u8]) -> bool {
        let Ok(key) = <[u8; KEY_LEN]>::try_from(key) else {
            return false;
        };
        *self = Self::from(key);
        true
    }
    #[inline]
    pub fn encrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Writer,
    ) -> bool {
        let Ok(nonce) = <[u8; NONCE_LEN]>::try_from(nonce) else {
            return false;
        };
        if aad.len() > MAX_AAD_BYTES {
            return false;
        }
        if data.len() > MAX_CRYPT_BYTES {
            return false;
        }
        if tag.len() != TAG_LEN {
            return false;
        }

        Context::<N>::derive(&self.aes, nonce).encrypt(aad, data, tag);
        true
    }
    #[inline]
    pub fn decrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Reader,
    ) -> bool {
        let Ok(nonce) = <[u8; NONCE_LEN]>::try_from(nonce) else {
            return false;
        };
        if aad.len() > MAX_AAD_BYTES {
            return false;
        }
        if data.len() > MAX_CRYPT_BYTES {
            return false;
        }

        Context::<N>::derive(&self.aes, nonce).decrypt(aad, data, tag)
    }
}

struct Context<const N: usize> {
    polyval: PolyvalKey<N>,
    aes: Aes256,
    ctr: M128i,
}
impl<const N: usize> Context<N> {
    #[inline]
    fn derive(aes: &Aes256, nonce: [u8; NONCE_LEN]) -> Self {
        let nonce: [[u8; 4]; 3] = unsafe { core::mem::transmute(nonce) };
        let nonce = [
            u32::from_le_bytes(nonce[0]),
            u32::from_le_bytes(nonce[1]),
            u32::from_le_bytes(nonce[2]),
        ];
        let ctr = M128i::from([nonce[0], nonce[1], nonce[2], 0]);
        let nonce = M128i::from([0, nonce[0], nonce[1], nonce[2]]);
        let subkeys = aes.encrypt([
            nonce ^ [0, 0, 0, 0],
            nonce ^ [1, 0, 0, 0],
            nonce ^ [2, 0, 0, 0],
            nonce ^ [3, 0, 0, 0],
            nonce ^ [4, 0, 0, 0],
            nonce ^ [5, 0, 0, 0],
        ]);
        Self {
            polyval: PolyvalKey::new(subkeys[0].unpacklo64(subkeys[1])),
            aes: Aes256::new([
                subkeys[2].unpacklo64(subkeys[3]),
                subkeys[4].unpacklo64(subkeys[5]),
            ]),
            ctr,
        }
    }
    #[allow(unused)]
    pub fn tag(&mut self, hash: M128i) -> M128i {
        let tag = (hash ^ self.ctr) & TAG_MASK;
        self.aes.encrypt(tag)
    }
    #[allow(unused)]
    fn encrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Writer) {
        debug_assert_eq!(tag.len(), TAG_LEN);
        let lengths = M128i::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let (ptr, len) = unsafe { data.reader_ptr() };
        let plaintext = unsafe { Reader::new(ptr, len) };
        let hash = self
            .polyval
            .hash(aad)
            .hash(plaintext)
            .hash(lengths)
            .result();
        let computed_tag = self.tag(hash);
        tag.write(computed_tag);
        let mut ctr: Counter128 = (computed_tag | COUNTER_MASK).into();
        for (block, writer) in data.iter::<[M128i; N]>() {
            let counters = ctr.increment_traunch::<N>();
            let block = block.ops() ^ self.aes.encrypt(counters);
            writer.write(block);
        }
        for (block, writer) in data.iter::<M128i>() {
            let ctr = ctr.increment();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
        }
        if let Some((block, writer)) = data.remainder::<M128i>() {
            let ctr = M128i::from(ctr);
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
        }
    }

    #[allow(unused)]
    pub fn iteration_asm(
        &mut self,
        auth: [M128i; N],
        counters: [M128i; N],
        plaintext: [M128i; N],
        polyval: &mut PolyvalState<N>,
    ) -> [M128i; N] {
        // Constructor performs first round of AES and auth
        let mut state = crate::aesgcm::RoundState::new(
            self.aes,
            counters,
            auth,
            self.polyval.keys(),
            polyval.result(),
        );
        // 13 rounds of aes + 6 rounds of auth
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        // Performs last round of AES
        let (pads, new_hash) = state.finish();
        *polyval = PolyvalState::new(self.polyval, new_hash);
        plaintext.ops() ^ pads
    }
    #[allow(unused)]
    fn decrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Reader) -> bool {
        let lengths = M128i::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let Some(tag) = tag.read::<M128i>() else {
            return false;
        };
        let mut hash = self.polyval.hash(aad);

        let mut ctr: Counter128 = (tag | COUNTER_MASK).into();
        if let Some((block, writer)) = data.read::<[M128i; N]>() {
            let counters = ctr.increment_traunch::<N>();
            let mut last_block = block.ops() ^ self.aes.encrypt(counters);
            writer.write(last_block);
            for (block, writer) in data.iter::<[M128i; N]>() {
                let counters = ctr.increment_traunch::<N>();
                last_block = match N {
                    6 => self.iteration_asm(last_block, counters, block, &mut hash),
                    _ => {
                        hash.hash(last_block);
                        block.ops() ^ self.aes.encrypt(counters)
                    }
                };
                writer.write(last_block);
            }
            hash.hash(last_block);
        }
        for (block, writer) in data.iter::<M128i>() {
            let ctr = ctr.increment();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
            hash.hash(block);
        }
        if let Some((block, writer)) = data.remainder::<M128i>() {
            let ctr = M128i::from(ctr);
            let block = block ^ self.aes.encrypt(ctr);
            let block = writer.write(block);
            hash.hash(block);
        }
        hash.hash(lengths);
        self.tag(hash.result()).crypto_equals(tag)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    const ENCRYPT_LANES: usize = 8;
    const DECRYPT_LANES: usize = 6;

    struct TestVector {
        plaintext: &'static str,
        aad: &'static str,
        key: &'static str,
        nonce: &'static str,
        auth_key: &'static str,
        crypt_key: &'static str,
        tag: &'static str,
        ciphertext: &'static str,
    }
    impl TestVector {
        fn test<const N: usize>(&self) {
            let key = hex::decode(self.key).unwrap();
            let nonce = hex::decode(self.nonce).unwrap();
            let aad = hex::decode(self.aad).unwrap();
            let plaintext = hex::decode(self.plaintext).unwrap();
            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            {
                let mut aes = Aes256GcmSivKey::default();
                assert!(aes.init(&key));
                assert!(aes.encrypt::<N>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                    tag.as_mut_slice().into()
                ));
                assert_eq!(hex::encode(&ciphertext), self.ciphertext, "ciphertext");
                assert_eq!(hex::encode(tag), self.tag, "tag");
                let mut plaintext = vec![0u8; plaintext.len()];
                assert!(aes.decrypt::<N>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into()
                ));
                assert_eq!(hex::encode(&plaintext), self.plaintext, "plaintext");

                {
                    let mut tag = tag.clone();
                    tag[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
                {
                    let mut nonce = nonce.clone();
                    nonce[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
                if !aad.is_empty() {
                    let mut aad = aad.clone();
                    aad[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
                if !ciphertext.is_empty() {
                    let mut ciphertext = ciphertext.clone();
                    ciphertext[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
            }
            let key: [u8; KEY_LEN] = key.try_into().unwrap();
            let nonce: [u8; NONCE_LEN] = nonce.try_into().unwrap();
            {
                let aes = Aes256::from(key);
                let mut ctx = Context::<N>::derive(&aes, nonce);
                assert_eq!(ctx.polyval.keys()[0], self.auth_key, "auth_key");
                assert_eq!(
                    [ctx.aes[0].encode_hex(), ctx.aes[1].encode_hex()].concat(),
                    self.crypt_key,
                    "crypt_key"
                );
                ctx.encrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                    tag.as_mut_slice().into(),
                );
                assert_eq!(hex::encode(tag), self.tag, "tag");
                assert_eq!(hex::encode(&ciphertext), self.ciphertext, "ciphertext");
            }
            {
                let aes = Aes256::from(key);
                let mut ctx = Context::<N>::derive(&aes, nonce);
                let mut plaintext = vec![0u8; plaintext.len()];
                assert!(ctx.decrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into()
                ));
                assert_eq!(hex::encode(&plaintext), self.plaintext, "plaintext");

                let mut bad_tag = tag.clone();
                bad_tag[0] ^= 0x01;
                assert!(!ctx.decrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    bad_tag.as_slice().into()
                ));
                let mut bad_nonce = nonce.clone();
                bad_nonce[0] ^= 0x01;
                assert!(!Context::<N>::derive(&aes, bad_nonce).decrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into(),
                ));
            }
        }
    }
    #[test]
    fn rfc8452() {
        // https://www.rfc-editor.org/rfc/rfc8452.html#appendix-C.2
        let vectors = [
            TestVector {
                plaintext: "",
                aad: "",
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "030000000000000000000000",
                auth_key: "b5d3c529dfafac43136d2d11be284d7f",
                crypt_key: "b914f4742be9e1d7a2f84addbf96dec3456e3c6c05ecc157cdbf0700fedad222",
                tag: "07f5f4169bbf55a8400cd47ea6fd400f",
                ciphertext: "",
            },
            TestVector {
                plaintext: "0100000000000000",
                aad: "",
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "030000000000000000000000",
                auth_key: "b5d3c529dfafac43136d2d11be284d7f",
                crypt_key: "b914f4742be9e1d7a2f84addbf96dec3456e3c6c05ecc157cdbf0700fedad222",
                tag: "843122130f7364b761e0b97427e3df28",
                ciphertext: "c2ef328e5c71c83b",
            },
            TestVector {
                plaintext: "0200000000000000",
                aad: "01",
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "030000000000000000000000",
                auth_key: "b5d3c529dfafac43136d2d11be284d7f",
                crypt_key: "b914f4742be9e1d7a2f84addbf96dec3456e3c6c05ecc157cdbf0700fedad222",
                tag: "91213f267e3b452f02d01ae33e4ec854",
                ciphertext: "1de22967237a8132",
            },
            TestVector {
                plaintext: "ced532ce4159b035277d4dfbb7db62968b13cd4eec",
                aad: "734320ccc9d9bbbb19cb81b2af4ecbc3e72834321f7aa0f70b7282b4f33df23f167541",
                key: "3c535de192eaed3822a2fbbe2ca9dfc88255e14a661b8aa82cc54236093bbc23",
                nonce: "688089e55540db1872504e1c",
                auth_key: "cb8c3aa3f8dbaeb4b28a3e86ff6625f8",
                crypt_key: "02426ce1aa3ab31313b0848469a1b5fc6c9af9602600b195b04ad407026bc06d",
                tag: "9d6c7029675b89eaf4ba1ded1a286594",
                ciphertext: "626660c26ea6612fb17ad91e8e767639edd6c9faee",
            },
        ];
        vectors.iter().for_each(|v| v.test::<1>());
        vectors.iter().for_each(|v| v.test::<ENCRYPT_LANES>());
        vectors.iter().for_each(|v| v.test::<DECRYPT_LANES>());
    }

    #[test]
    #[cfg(feature = "uses_cargo")]
    fn comparison() {
        use aes_gcm_siv::AeadInPlace;
        use aes_gcm_siv::KeyInit;

        // Conformance test
        {
            let key =
                hex::decode("3c535de192eaed3822a2fbbe2ca9dfc88255e14a661b8aa82cc54236093bbc23")
                    .unwrap();
            let nonce = hex::decode("688089e55540db1872504e1c").unwrap();
            let mut inout = hex::decode("ced532ce4159b035277d4dfbb7db62968b13cd4eec").unwrap();
            let aad = hex::decode(
                "734320ccc9d9bbbb19cb81b2af4ecbc3e72834321f7aa0f70b7282b4f33df23f167541",
            )
            .unwrap();

            let other = aes_gcm_siv::Aes256GcmSiv::new_from_slice(&key).unwrap();
            let tag = other
                .encrypt_in_place_detached(nonce.as_slice().into(), &aad, &mut inout)
                .unwrap();
            assert_eq!(
                hex::encode(tag.as_slice()),
                "9d6c7029675b89eaf4ba1ded1a286594"
            );
            assert_eq!(
                hex::encode(inout),
                "626660c26ea6612fb17ad91e8e767639edd6c9faee"
            );
        }

        for _ in 0..128 {
            let crypt_len = 4 << 10;
            let aad_len = 4 << 10;
            let crypt_len = crypt_len + random::usize() % crypt_len;
            let aad_len = aad_len + random::usize() % aad_len;

            let key = random::vec(KEY_LEN);
            let nonce = random::vec(NONCE_LEN);
            let plaintext = random::vec(crypt_len);
            let aad = random::vec(aad_len);
            let mut ciphertext = plaintext.clone();
            {
                let other = aes_gcm_siv::Aes256GcmSiv::new_from_slice(&key).unwrap();
                let tag = other
                    .encrypt_in_place_detached(nonce.as_slice().into(), &aad, &mut ciphertext)
                    .unwrap();
                let mut aes = Aes256GcmSivKey::default();
                assert!(aes.init(&key));
                let mut decrypted = vec![0u8; plaintext.len()];
                assert!(aes.decrypt::<6>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut decrypted).unwrap(),
                    tag.as_slice().into()
                ));
                assert_eq!(plaintext, decrypted);
            }
            {
                let mut aes = Aes256GcmSivKey::default();
                assert!(aes.init(&key));
                let mut tag = [0u8; TAG_LEN];
                assert!(aes.encrypt::<6>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                    tag.as_mut_slice().into()
                ));
                let other = aes_gcm_siv::Aes256GcmSiv::new_from_slice(&key).unwrap();
                other
                    .decrypt_in_place_detached(
                        nonce.as_slice().into(),
                        &aad,
                        &mut ciphertext,
                        tag.as_slice().into(),
                    )
                    .unwrap();
                assert_eq!(plaintext, ciphertext);
            }
        }
    }

    #[test]
    fn cozybuf() {
        use test_vectors::AeadTestVector;
        let bytes =
            std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes256gcmsiv.cozybuf")).unwrap();
        let mut reader = bytes.as_slice();

        fn verify_cozybuf<const N: usize>(v: &AeadTestVector) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let aead = Aes256GcmSivKey::from(key);
            let mut ciphertext = vec![0u8; v.plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt::<N>(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into()
            ));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag.as_slice());
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt::<N>(
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
