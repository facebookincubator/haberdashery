// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;
use ffi_util::Writer;

use crate::aes256::Aes256;
use crate::intrinsics::m128i::*;
use crate::polyval::PolyvalKey;

const KEY_LEN: usize = 32;
const TAG_LEN: usize = 16;

const MAX_BYTES: usize = 1 << 36;
const TAG_MASK: [u32; 4] = [0xff_ff_ff_ff, 0xff_ff_ff_ff, 0xff_ff_ff_ff, 0x7f_ff_ff_ff];

#[derive(Default)]
pub struct SivMacKey<const N: usize> {
    aes: Aes256,
    polyval: PolyvalKey<N>,
}

impl<const N: usize> From<[u8; KEY_LEN]> for SivMacKey<N> {
    #[inline(always)]
    fn from(key: [u8; KEY_LEN]) -> Self {
        let (_aes, subkeys) = Aes256::new_and_encrypt(
            M128iArray::from(key).into(),
            [
                M128i::from([0, 0, 0, 0]),
                M128i::from([1, 0, 0, 0]),
                M128i::from([2, 0, 0, 0]),
                M128i::from([3, 0, 0, 0]),
                M128i::from([4, 0, 0, 0]),
                M128i::from([5, 0, 0, 0]),
            ],
        );
        Self {
            aes: Aes256::new([
                subkeys[2].unpacklo64(subkeys[3]),
                subkeys[4].unpacklo64(subkeys[5]),
            ]),
            polyval: PolyvalKey::new(subkeys[0].unpacklo64(subkeys[1])),
        }
    }
}

impl<const N: usize> SivMacKey<N> {
    #[inline(always)]
    pub fn init(&mut self, key: &[u8]) -> bool {
        let Ok(key) = <[u8; KEY_LEN]>::try_from(key) else {
            return false;
        };
        *self = Self::from(key);
        true
    }
    #[inline(always)]
    fn sign_internal(&self, message: Reader) -> M128i {
        // Append the message as raw blocks and finalize the polyval by encoding the length.
        // This follows aes-256-gcms-siv when taking aad=message, plaintext=empty.
        let len = message.len();
        let hash = self
            .polyval
            .hash(message)
            .hash(M128i::from([8 * len as u64, 0]))
            .result();
        self.aes.encrypt(hash & TAG_MASK)
    }
    #[inline(always)]
    pub fn sign(&self, message: Reader, mut tag_writer: Writer) -> bool {
        if message.len() > MAX_BYTES {
            return false;
        }
        let tag = self.sign_internal(message);
        TAG_LEN == tag_writer.write(tag)
    }
    #[inline(always)]
    pub fn verify(&self, message: Reader, mut tag: Reader) -> bool {
        if message.len() > MAX_BYTES {
            return false;
        }
        let Some(tag) = tag.read::<M128i>() else {
            return false;
        };
        self.sign_internal(message).crypto_equals(tag)
    }
}

#[cfg(test)]
mod tests {
    use ffi_util::ReaderWriter;

    use super::*;

    const LANES: usize = 8;

    #[test]
    fn vectors() {
        struct TestVector {
            key: &'static str,
            aes_key: Option<&'static str>,
            polyval_key: Option<&'static str>,
            message: &'static str,
            hash: Option<&'static str>,
            pre_hash: Option<&'static str>,
            tag: &'static str,
        }
        impl TestVector {
            fn test<const N: usize>(&self) {
                let key: [u8; KEY_LEN] = hex::decode(self.key).unwrap().try_into().unwrap();
                let message = hex::decode(self.message).unwrap();
                let mut tag = [0u8; TAG_LEN];
                let mac = SivMacKey::<N>::from(key);
                mac.sign(message.as_slice().into(), tag.as_mut_slice().into());
                assert_eq!(hex::encode(tag), self.tag);
                assert!(mac.verify(message.as_slice().into(), tag.as_slice().into()));
                if let Some(aes_key) = self.aes_key {
                    assert_eq!(
                        [mac.aes[0].encode_hex(), mac.aes[1].encode_hex()].concat(),
                        aes_key,
                    );
                }
                if let Some(polyval_key) = self.polyval_key {
                    assert_eq!(mac.polyval[0], polyval_key);
                }
                if let Some(hash) = self.hash {
                    assert_eq!(
                        mac.polyval
                            .hash(message.as_slice())
                            .hash(M128i::from([8 * message.len() as u64, 0]))
                            .result(),
                        hash
                    );
                }
                if let Some(pre_hash) = self.pre_hash {
                    assert_eq!(mac.aes.decrypt(tag.into()), pre_hash);
                }
                let mut bad_tag = tag.clone();
                bad_tag[0] ^= 0x01;
                assert!(!mac.verify(message.as_slice().into(), bad_tag.as_slice().into()));
            }
        }
        // A modified subset of the vectors from aes256gcmsiv.rs
        let vectors = [
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                aes_key: None,
                polyval_key: None,
                message: "",
                hash: None,
                pre_hash: None,
                tag: "bc1298ad14efe708f1d69b2ff37cb0a5",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                aes_key: None,
                polyval_key: None,
                message: "01",
                hash: None,
                pre_hash: None,
                tag: "b6706b2478a5bc5f2357edc7fbf36ad9",
            },
            TestVector {
                key: "3c535de192eaed3822a2fbbe2ca9dfc88255e14a661b8aa82cc54236093bbc23",
                aes_key: None,
                polyval_key: None,
                message: "734320ccc9d9bbbb19cb81b2af4ecbc3e72834321f7aa0f70b7282b4f33df23f167541",
                hash: None,
                pre_hash: None,
                tag: "be30422236fe953a6aff5629570ae44d",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                aes_key: Some("d77cdb05a40231d5c88735cffb99fd5cfbb80145a67c9687bc48f171147e8cdd"),
                polyval_key: Some("52917f3ae957d523cae89d363b6b2950"),
                message: "00000000000000000000000000000000",
                hash: Some("ba46a1d51da4814617a6ae0c0b5feb1b"),
                pre_hash: Some("ba46a1d51da4814617a6ae0c0b5feb1b"),
                tag: "635bb5054f7e911b4a047a8727fee8f7",
            },
            TestVector {
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                aes_key: Some("d77cdb05a40231d5c88735cffb99fd5cfbb80145a67c9687bc48f171147e8cdd"),
                polyval_key: Some("52917f3ae957d523cae89d363b6b2950"),
                message: "0100000000000000000000000000000000",
                hash: Some("be488da32dbd981f67191239e2bf13f9"),
                pre_hash: Some("be488da32dbd981f67191239e2bf1379"),
                tag: "42a7c17b1a91b6de226e671b8b26618e",
            },
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000001",
                aes_key: Some("ac6e07c904688816590c4d5dd22a8f21a2bc27f1039a443a1f3ecef50909a2b0"),
                polyval_key: Some("6b6cfe160a62636356594f075995d63d"),
                message: "00000000000000000000000000000000",
                hash: Some("55ce9e09c6a46666338dde9abbc4eba5"),
                pre_hash: Some("55ce9e09c6a46666338dde9abbc4eb25"),
                tag: "fe9467bcedd09fe79e91f7112960f209",
            },
            TestVector {
                key: "0000000000000000000000000000000000000000000000000000000000000001",
                aes_key: Some("ac6e07c904688816590c4d5dd22a8f21a2bc27f1039a443a1f3ecef50909a2b0"),
                polyval_key: Some("6b6cfe160a62636356594f075995d63d"),
                message: "0000000000000000000000000000000001",
                hash: Some("193cc51bc5394a52328a7d2ad90fff92"),
                pre_hash: Some("193cc51bc5394a52328a7d2ad90fff12"),
                tag: "d80bb61968fc09152e54e35b4d3123aa",
            },
        ];
        vectors.iter().for_each(|v| v.test::<1>());
        vectors.iter().for_each(|v| v.test::<LANES>());
    }

    #[test]
    fn cozybuf() {
        use hex2::ToHex;
        use test_vectors::MacTestVector;
        let bytes = std::fs::read(crate::PROJECT_PATH.join("test_vectors/sivmac.cozybuf")).unwrap();
        let mut reader = bytes.as_slice();

        fn verify_cozybuf<const N: usize>(v: &MacTestVector) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let mac = SivMacKey::<N>::from(key);
            let mut tag = [0u8; TAG_LEN];
            assert!(mac.sign(v.message.as_slice().into(), tag.as_mut_slice().into()));
            assert_eq!(tag.to_hex(), v.tag.to_hex());
            assert!(mac.verify(v.message.as_slice().into(), tag.as_slice().into()));
        }

        while let Ok(v) = MacTestVector::from_reader(&mut reader) {
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
            verify_cozybuf::<1024>(&v);
        }
        assert!(reader.is_empty());
    }

    #[test]
    fn aes256gcmsiv_comparison() {
        fn sivmac(key: [u8; KEY_LEN], message: &[u8]) -> [u8; TAG_LEN] {
            let mac = SivMacKey::<LANES>::from(key);
            let mut tag = [0u8; TAG_LEN];
            assert!(mac.sign(message.into(), tag.as_mut_slice().into()));
            assert!(mac.verify(message.into(), tag.as_slice().into()));

            tag
        }
        fn aes256gcmsivmac(key: [u8; KEY_LEN], message: &[u8]) -> [u8; TAG_LEN] {
            let aead = crate::aes256gcmsiv::Aes256GcmSivKey::from(key);
            let nonce = [0u8; crate::aes256gcmsiv::NONCE_LEN];
            let aad = message;
            let plaintext = [];
            let mut ciphertext = [];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt::<LANES>(
                &nonce,
                aad.into(),
                ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into()
            ));
            tag
        }
        let key = random::array::<KEY_LEN>();
        let message = random::vec(1024);
        for len in 0..message.len() {
            let message = &message[..len];
            assert_eq!(sivmac(key, message), aes256gcmsivmac(key, message));
        }
    }
}
