// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub const SRC: &str = r#"use haberdashery_sys::aead::{algorithm:Flat}_{profile}::*;
pub use haberdashery_sys::aead::{algorithm:Flat}_{profile}::{algorithm:UpperCamel};
pub use crate::traits::aead::Aead;

impl Aead for {algorithm:UpperCamel} {
    const KEY_LEN: usize = Self::KEY_LEN;
    const NONCE_LEN: usize = Self::NONCE_LEN;
    const TAG_LEN: usize = Self::TAG_LEN;

    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32 =
        {prefix}_{algorithm:Flat}_{profile}_init;
    const FN_ENCRYPT: unsafe extern "C" fn(
        this: *const Self,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32 = {prefix}_{algorithm:Flat}_{profile}_encrypt;
    const FN_DECRYPT: unsafe extern "C" fn(
        this: *const Self,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        ciphertext: *const u8,
        ciphertext_len: usize,
        tag: *const u8,
        tag_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32 = {prefix}_{algorithm:Flat}_{profile}_decrypt;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32 =
        {prefix}_{algorithm:Flat}_{profile}_is_supported;
}
#[cfg(feature = "bench")]
mod benchmarks {
    #[perf_caliper::benchmark(
        library:haberdashery,
        algorithm:{algorithm:Flat},
        primitive:aead,
        profile:{profile},
    )]
    fn init(iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::{algorithm:UpperCamel}>::aad(0) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.init();
        }
        measure.stop();
    }
    #[perf_caliper::benchmark(
        library:haberdashery,
        algorithm:{algorithm:Flat},
        primitive:aead,
        profile:{profile},
    )]
    fn aad(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::{algorithm:UpperCamel}>::aad(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.encrypt();
        }
        measure.stop();
    }
    #[perf_caliper::benchmark(
        library:haberdashery,
        algorithm:{algorithm:Flat},
        primitive:aead,
        profile:{profile},
    )]
    fn encrypt(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::{algorithm:UpperCamel}>::crypt(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.encrypt();
        }
        measure.stop();
    }
    #[perf_caliper::benchmark(
        library:haberdashery,
        algorithm:{algorithm:Flat},
        primitive:aead,
        profile:{profile},
    )]
    fn decrypt(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::{algorithm:UpperCamel}>::crypt(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.decrypt();
        }
        measure.stop();
    }
}
#[cfg(test)]
mod tests {
    #[test]
    fn cozybuf() {
        let result = crate::vectors::aead::verify::<super::{algorithm:UpperCamel}>("{algorithm:Flat}.cozybuf");
        if cfg!(feature = "gen") && result.is_err() {
            crate::vectors::aead::generate::<super::{algorithm:UpperCamel}>("{algorithm:Flat}.cozybuf").unwrap();
        } else {
            result.unwrap();
        }
    }
}
"#;
