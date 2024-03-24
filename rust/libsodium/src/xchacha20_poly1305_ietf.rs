// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use libsodium_sys::*;
use nano_bench::Measure;

use crate::BenchmarkData;
use crate::Vtable;

const XCHACHA20_POLY1305_IETF_VTABLE: Vtable = Vtable {
    key_len: crypto_aead_xchacha20poly1305_ietf_KEYBYTES as usize,
    nonce_len: crypto_aead_xchacha20poly1305_ietf_NPUBBYTES as usize,
    tag_len: crypto_aead_xchacha20poly1305_ietf_ABYTES as usize,
    encrypt: crypto_aead_xchacha20poly1305_ietf_encrypt_detached,
    decrypt: crypto_aead_xchacha20poly1305_ietf_decrypt_detached,
};

#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:xchacha20_poly1305_ietf,
    operation:aad,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(XCHACHA20_POLY1305_IETF_VTABLE, length, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:xchacha20_poly1305_ietf,
    operation:encrypt_empty,
)]
fn encrypt_empty(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(XCHACHA20_POLY1305_IETF_VTABLE, 0, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:xchacha20_poly1305_ietf,
    operation:encrypt,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(XCHACHA20_POLY1305_IETF_VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:xchacha20_poly1305_ietf,
    operation:decrypt,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(XCHACHA20_POLY1305_IETF_VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.decrypt();
    }
    measure.stop();
}
