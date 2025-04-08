// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use aes_gcm::AeadInPlace;
use aes_gcm::Aes256Gcm;
use aes_gcm::KeyInit;

#[perf_caliper::benchmark(
    library:rust-crypto,
    algorithm:aes256gcm,
    primitive:aead,
)]
fn init(iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 32;
    let key = [0; KEY_LEN];

    measure.start();
    for _ in 0..iters {
        Aes256Gcm::new_from_slice(&key).unwrap();
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:rust-crypto,
    algorithm:aes256gcm,
    primitive:aead,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];
    let aad = vec![0u8; length];
    let mut data = vec![0u8; TAG_LEN];

    let aead = Aes256Gcm::new_from_slice(&key).unwrap();
    aead.encrypt_in_place(nonce.as_slice().into(), &aad, &mut data)
        .unwrap();

    measure.start();
    for _ in 0..iters {
        aead.encrypt_in_place(nonce.as_slice().into(), &aad, &mut data);
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:rust-crypto,
    algorithm:aes256gcm,
    primitive:aead,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];
    let aad = vec![];
    let mut data = vec![0u8; length + TAG_LEN];

    let aead = Aes256Gcm::new_from_slice(&key).unwrap();
    aead.encrypt_in_place(nonce.as_slice().into(), &aad, &mut data)
        .unwrap();

    measure.start();
    for _ in 0..iters {
        aead.encrypt_in_place(nonce.as_slice().into(), &aad, &mut data);
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:rust-crypto,
    algorithm:aes256gcm,
    primitive:aead,
)]
fn encrypt_decrypt(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];
    let aad = vec![];
    let mut data = vec![0u8; length + TAG_LEN];

    let aead = Aes256Gcm::new_from_slice(&key).unwrap();
    aead.encrypt_in_place(nonce.as_slice().into(), &aad, &mut data)
        .unwrap();
    aead.decrypt_in_place(nonce.as_slice().into(), &aad, &mut data)
        .unwrap();

    measure.start();
    for _ in 0..iters {
        aead.encrypt_in_place(nonce.as_slice().into(), &aad, &mut data);
        aead.decrypt_in_place(nonce.as_slice().into(), &aad, &mut data);
    }
    measure.stop();
}
