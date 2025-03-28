// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use aegis::aegis128l::Aegis128L;

#[perf_caliper::benchmark(
    library:libaegis,
    algorithm:aegis128l,
    primitive:aead,
)]
fn init(iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 16;
    const NONCE_LEN: usize = 16;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];

    measure.start();
    for _ in 0..iters {
        let aead = Aegis128L::<TAG_LEN>::new(&key, &nonce);
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:libaegis,
    algorithm:aegis128l,
    primitive:aead,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 16;
    const NONCE_LEN: usize = 16;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];
    let aad = vec![0u8; length];
    let mut data = vec![];

    let aead = Aegis128L::<TAG_LEN>::new(&key, &nonce);
    measure.start();
    for _ in 0..iters {
        aead.encrypt_in_place(&mut data, &aad);
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:libaegis,
    algorithm:aegis128l,
    primitive:aead,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 16;
    const NONCE_LEN: usize = 16;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];
    let aad = vec![];
    let mut data = vec![0u8; length];

    let aead = Aegis128L::<TAG_LEN>::new(&key, &nonce);
    measure.start();
    for _ in 0..iters {
        aead.encrypt_in_place(&mut data, &aad);
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:libaegis,
    algorithm:aegis128l,
    primitive:aead,
)]
fn encrypt_decrypt(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    const KEY_LEN: usize = 16;
    const NONCE_LEN: usize = 16;
    const TAG_LEN: usize = 16;
    let key = [0; KEY_LEN];
    let nonce = [0; NONCE_LEN];
    let aad = vec![];
    let mut data = vec![0u8; length];

    let aead = Aegis128L::<TAG_LEN>::new(&key, &nonce);
    measure.start();
    for _ in 0..iters {
        let tag = aead.encrypt_in_place(&mut data, &aad);
        aead.decrypt_in_place(&mut data, &tag, &aad);
    }
    measure.stop();
}
