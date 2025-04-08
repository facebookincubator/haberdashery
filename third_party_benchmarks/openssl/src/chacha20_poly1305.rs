// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use openssl_sys::*;
use perf_caliper::Measure;

use crate::aead::Aead;
use crate::wrapper::evp_cipher_ctx::EvpCipherCtx;

pub struct ChaCha20Poly1305(EvpCipherCtx);
impl Aead for ChaCha20Poly1305 {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;

    #[inline]
    fn ctx(&mut self) -> &mut EvpCipherCtx {
        &mut self.0
    }
    #[inline]
    fn cipher() -> *const EVP_CIPHER {
        unsafe { EVP_chacha20_poly1305() }
    }
}

impl Default for ChaCha20Poly1305 {
    #[inline]
    fn default() -> Self {
        Self(unsafe { EvpCipherCtx::from_cipher(Self::cipher()).unwrap() })
    }
}

type BenchmarkData = crate::aead::BenchmarkData<ChaCha20Poly1305>;

#[test]
fn encrypt_decrypt() {
    BenchmarkData::new(1, 1);
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn cipher_init(iters: u64, measure: &mut dyn Measure) {
    use core::ptr::null;
    use core::ptr::null_mut;
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.cipher_init();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn key_init(iters: u64, measure: &mut dyn Measure) {
    use core::ptr::null;
    use core::ptr::null_mut;
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.key_init();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn encrypt_init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt_init();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn decrypt_init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.decrypt_init();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(length, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, length);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[perf_caliper::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:chacha20_poly1305,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, length);
    measure.start();
    for _ in 0..iters {
        data.decrypt();
    }
    measure.stop();
}
