// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::MaybeUninit;

use anyhow::Context;
use test_vectors::AeadTestVector;

use crate::traits::aead::Aead;
use crate::traits::aead::AeadInit;

pub fn verify<T: Aead>(s: &str) -> anyhow::Result<()> {
    let path = super::TEST_VECTORS.join(s);
    if !T::is_supported() {
        return Ok(());
    }
    let bytes = std::fs::read(&path).with_context(|| format!("Couldn't read file {path:?}, generate the file using: scripts/cargo.sh bindings/rust_lib --features=gen -- --test-threads=1"))?;
    assert!(!bytes.is_empty());
    let mut reader = bytes.as_slice();
    let v = AeadTestVector::from_reader(&mut reader)
        .with_context(|| format!("Couldn't parse file {path:?}"))?;

    let aead = T::new(&v.key).unwrap();
    {
        let mut tag = vec![0u8; T::TAG_LEN];
        let mut ciphertext = vec![0u8; v.ciphertext.len()];
        assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
        assert_eq!(ciphertext, v.ciphertext);
        assert_eq!(tag, v.tag);
    }
    {
        let mut plaintext = vec![0u8; v.plaintext.len()];
        assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
        assert_eq!(plaintext, v.plaintext);
    }
    {
        let mut tag = vec![MaybeUninit::<u8>::uninit(); T::TAG_LEN];
        let mut ciphertext = vec![MaybeUninit::<u8>::uninit(); v.ciphertext.len()];
        let (ciphertext, tag) = aead
            .encrypt_raw(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag)
            .unwrap();
        assert_eq!(ciphertext, v.ciphertext);
        assert_eq!(tag, v.tag);
    }
    {
        let mut plaintext = vec![MaybeUninit::<u8>::uninit(); v.plaintext.len()];
        let plaintext = aead
            .decrypt_raw(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext)
            .unwrap();
        assert_eq!(plaintext, v.plaintext);
    }

    let aead = MaybeUninit::<T>::uninit().init(&v.key).unwrap();
    {
        let mut tag = vec![0u8; T::TAG_LEN];
        let mut ciphertext = vec![0u8; v.ciphertext.len()];
        assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
        assert_eq!(ciphertext, v.ciphertext);
        assert_eq!(tag, v.tag);
    }
    {
        let mut plaintext = vec![0u8; v.plaintext.len()];
        assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
        assert_eq!(plaintext, v.plaintext);
    }

    let mut aead = aead;
    while !reader.is_empty() {
        let v = AeadTestVector::from_reader(&mut reader).unwrap();
        aead.init(&v.key);
        {
            let mut tag = vec![0u8; T::TAG_LEN];
            let mut ciphertext = vec![0u8; v.ciphertext.len()];
            assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag);
        }
        {
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
            assert_eq!(plaintext, v.plaintext);
        }
        {
            let mut tag = vec![MaybeUninit::<u8>::uninit(); T::TAG_LEN];
            let mut ciphertext = vec![MaybeUninit::<u8>::uninit(); v.ciphertext.len()];
            let (ciphertext, tag) = aead
                .encrypt_raw(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag)
                .unwrap();
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag);
        }
        {
            let mut plaintext = vec![MaybeUninit::<u8>::uninit(); v.plaintext.len()];
            let plaintext = aead
                .decrypt_raw(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext)
                .unwrap();
            assert_eq!(plaintext, v.plaintext);
        }
    }
    Ok(())
}
pub fn generate<T: Aead>(s: &str) -> anyhow::Result<()> {
    let path = super::TEST_VECTORS.join(s);
    let mut out = Vec::<u8>::default();

    let empty = vec![0u8; 0];
    let mut empty_mut = vec![0u8; 0];
    const SMALL_LIMIT: usize = 64;
    for i in 0..SMALL_LIMIT {
        {
            let key = random::vec(T::KEY_LEN);
            let nonce = random::vec(T::NONCE_LEN);
            let mut plaintext = random::vec(i);
            let mut ciphertext = vec![0; i];
            let mut tag = vec![0u8; T::TAG_LEN];
            let aead = MaybeUninit::<T>::uninit().init(&key).unwrap();
            assert!(aead.encrypt(&nonce, &empty, &plaintext, &mut ciphertext, &mut tag));
            assert!(aead.decrypt(&nonce, &empty, &ciphertext, &tag, &mut plaintext));
            AeadTestVector {
                key,
                nonce,
                aad: empty.clone(),
                plaintext,
                ciphertext,
                tag,
            }
            .to_writer(&mut out)?;
        }
        {
            let key = random::vec(T::KEY_LEN);
            let nonce = random::vec(T::NONCE_LEN);
            let aad = random::vec(i);
            let mut tag = vec![0u8; T::TAG_LEN];
            let aead = MaybeUninit::<T>::uninit().init(&key).unwrap();
            assert!(aead.encrypt(&nonce, &aad, &empty, &mut empty_mut, &mut tag));
            assert!(aead.decrypt(&nonce, &aad, &empty, &tag, &mut empty_mut));
            let vector = AeadTestVector {
                key,
                nonce,
                aad,
                plaintext: empty.clone(),
                ciphertext: empty.clone(),
                tag,
            };
            vector.to_writer(&mut out)?;
        }
    }
    const LARGE_LIMIT: usize = 256;
    const LARGE_COUNT: usize = 32;
    for _ in 0..LARGE_COUNT {
        // Choose a random length in [LARGE_LIMIT..2 * LARGE_LIMIT)
        let aad_len = LARGE_LIMIT
            + (usize::from_le_bytes(random::array::<{ core::mem::size_of::<usize>() }>())
                % LARGE_LIMIT);
        debug_assert!(LARGE_LIMIT <= aad_len);
        debug_assert!(aad_len < 2 * LARGE_LIMIT);
        // Choose a random length in [LARGE_LIMIT..2 * LARGE_LIMIT)
        let crypt_len = LARGE_LIMIT
            + (usize::from_le_bytes(random::array::<{ core::mem::size_of::<usize>() }>())
                % LARGE_LIMIT);
        debug_assert!(LARGE_LIMIT <= crypt_len);
        debug_assert!(crypt_len < 2 * LARGE_LIMIT);
        let key = random::vec(T::KEY_LEN);
        let nonce = random::vec(T::NONCE_LEN);
        let aad = random::vec(aad_len);
        let mut plaintext = random::vec(crypt_len);
        let mut ciphertext = vec![0; crypt_len];
        let mut tag = vec![0u8; T::TAG_LEN];
        let aead = MaybeUninit::<T>::uninit().init(&key).unwrap();
        assert!(aead.encrypt(&nonce, &aad, &plaintext, &mut ciphertext, &mut tag));
        assert!(aead.decrypt(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
        AeadTestVector {
            key,
            nonce,
            aad,
            plaintext,
            ciphertext,
            tag,
        }
        .to_writer(&mut out)?;
    }
    std::fs::write(&path, &out).with_context(|| format!("Couldn't write file {path:?}"))
}
