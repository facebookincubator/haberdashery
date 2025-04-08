// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use libsodium_sys::*;
use perf_caliper::Measure;

use crate::BenchmarkData;
use crate::Vtable;

const CHACHA20_POLY1305_VTABLE: Vtable = Vtable {
    key_len: crypto_aead_chacha20poly1305_KEYBYTES as usize,
    nonce_len: crypto_aead_chacha20poly1305_NPUBBYTES as usize,
    tag_len: crypto_aead_chacha20poly1305_ABYTES as usize,
    encrypt: crypto_aead_chacha20poly1305_encrypt_detached,
    decrypt: crypto_aead_chacha20poly1305_decrypt_detached,
};

#[perf_caliper::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305,
    operation:aad,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_VTABLE, length, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305,
    operation:encrypt_empty,
)]
fn encrypt_empty(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_VTABLE, 0, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305,
    operation:encrypt,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305,
    operation:decrypt,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.decrypt();
    }
    measure.stop();
}
