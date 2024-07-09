// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::MaybeUninit;

use anyhow::Context;
use test_vectors::MacTestVector;

use crate::traits::mac::Mac;
use crate::traits::mac::MacInit;

pub fn verify<T: Mac>(s: &str) -> anyhow::Result<()> {
    let path = super::TEST_VECTORS.join(s);
    if !T::is_supported() {
        return Ok(());
    }
    let bytes = std::fs::read(&path).with_context(|| format!("Couldn't read file {path:?}, generate the file using: scripts/cargo.sh bindings/rust_lib --features=gen -- --test-threads=1"))?;
    let mut reader = bytes.as_slice();
    let v = MacTestVector::from_reader(&mut reader)
        .with_context(|| format!("Couldn't parse file {path:?}"))?;

    let mac = T::new(&v.key).unwrap();
    let mut tag = vec![0u8; T::TAG_LEN];
    assert!(mac.sign(&v.message, &mut tag));
    assert_eq!(tag, v.tag);

    let mac = MaybeUninit::<T>::uninit().init(&v.key).unwrap();
    let mut tag = vec![0u8; T::TAG_LEN];
    assert!(mac.sign(&v.message, &mut tag));
    assert_eq!(tag, v.tag);

    let mut tag = vec![MaybeUninit::<u8>::uninit(); T::TAG_LEN];
    let tag = mac.sign_raw(&v.message, &mut tag).unwrap();
    assert_eq!(tag, v.tag);

    let mut mac = mac;
    while !reader.is_empty() {
        let v = MacTestVector::from_reader(&mut reader).unwrap();
        mac.init(&v.key);
        {
            let mut tag = vec![0u8; T::TAG_LEN];
            assert!(mac.sign(&v.message, &mut tag));
            assert_eq!(tag, v.tag);
        }
        {
            let mut tag = vec![MaybeUninit::<u8>::uninit(); T::TAG_LEN];
            let tag = mac.sign_raw(&v.message, &mut tag).unwrap();
            assert_eq!(tag, v.tag);
        }
    }
    Ok(())
}
pub fn generate<T: Mac>(s: &str) -> anyhow::Result<()> {
    let mut out = Vec::<u8>::default();
    const SMALL_LIMIT: usize = 64;
    for i in 0..SMALL_LIMIT {
        let key = random::vec(T::KEY_LEN);
        let message = random::vec(i);
        let mut tag = vec![0u8; T::TAG_LEN];
        let mac = MaybeUninit::<T>::uninit().init(&key).unwrap();
        assert!(mac.sign(&message, &mut tag));
        MacTestVector { key, message, tag }.to_writer(&mut out)?;
    }
    const LARGE_LIMIT: usize = 256;
    const LARGE_COUNT: usize = 32;
    for _ in 0..LARGE_COUNT {
        // Choose a random length in [LARGE_LIMIT..2 * LARGE_LIMIT)
        let len = LARGE_LIMIT
            + (usize::from_le_bytes(random::array::<{ core::mem::size_of::<usize>() }>())
                % LARGE_LIMIT);
        let key = random::vec(T::KEY_LEN);
        let message = random::vec(len);
        let mut tag = vec![0u8; T::TAG_LEN];
        let mac = MaybeUninit::<T>::uninit().init(&key).unwrap();
        assert!(mac.sign(&message, &mut tag));
        MacTestVector { key, message, tag }.to_writer(&mut out)?;
    }
    Ok(std::fs::write(super::TEST_VECTORS.join(s), &out)?)
}
