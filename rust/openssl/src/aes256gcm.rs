// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use nano_bench::Measure;
use openssl_sys::*;

use crate::aead::Aead;
use crate::evp_cipher_ctx::CipherCtx;

pub struct Aes256Gcm {
    ctx: CipherCtx,
}
impl Aead for Aes256Gcm {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;

    #[inline(always)]
    fn ctx(&mut self) -> &mut CipherCtx {
        &mut self.ctx
    }
    #[inline(always)]
    fn cipher() -> *const EVP_CIPHER {
        unsafe { EVP_aes_256_gcm() }
    }
}

impl Default for Aes256Gcm {
    #[inline(always)]
    fn default() -> Self {
        Self {
            ctx: Self::cipher().into(),
        }
    }
}

type BenchmarkData = crate::aead::BenchmarkData<Aes256Gcm>;

#[test]
fn encrypt_decrypt() {
    BenchmarkData::new(1, 1);
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn cipher_init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.cipher_init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn key_init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.key_init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn encrypt_init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt_init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn decrypt_init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, 0);
    measure.start();
    for _ in 0..iters {
        data.decrypt_init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(length, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, length);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:aead,
    algorithm:aes256gcm,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0, length);
    measure.start();
    for _ in 0..iters {
        data.decrypt();
    }
    measure.stop();
}
