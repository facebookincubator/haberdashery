// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub const SRC: &str = r#"use haberdashery_sys::hash::{algorithm:Flat}_{profile}::*;
pub use haberdashery_sys::hash::{algorithm:Flat}_{profile}::{algorithm:UpperCamel};
pub use crate::traits::hash::Hash;

impl Hash for {algorithm:UpperCamel} {
    const DIGEST_LEN: usize = Self::DIGEST_LEN;
    const FN_INIT: unsafe extern "C" fn(this: *mut Self) -> i32 =
        {prefix}_{algorithm:Flat}_{profile}_init;
    const FN_UPDATE: unsafe extern "C" fn(
        this: *mut Self,
        message: *const u8,
        message_len: usize,
    ) -> i32 = {prefix}_{algorithm:Flat}_{profile}_update;
    const FN_FINALIZE: unsafe extern "C" fn(
        this: *mut Self,
    ) -> i32 = {prefix}_{algorithm:Flat}_{profile}_finalize;
    const FN_DIGEST: unsafe extern "C" fn(
        this: *const Self,
        digest: *mut u8,
        digest_len: usize,
    ) -> i32 = {prefix}_{algorithm:Flat}_{profile}_digest;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32 =
        {prefix}_{algorithm:Flat}_{profile}_is_supported;
}
#[cfg(feature = "bench")]
mod benchmarks {
    #[perf_caliper::benchmark(
        library:haberdashery,
        algorithm:{algorithm:Flat},
        primitive:hash,
        profile:{profile},
    )]
    fn init(iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::hash::Context::<super::{algorithm:UpperCamel}>::new(0) else {
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
        primitive:hash,
        profile:{profile},
    )]
    fn update(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::hash::Context::<super::{algorithm:UpperCamel}>::new(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.update();
        }
        measure.stop();
    }
    #[perf_caliper::benchmark(
        library:haberdashery,
        algorithm:{algorithm:Flat},
        primitive:hash,
        profile:{profile},
    )]
    fn finalize(iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let Some(mut context) = crate::benchmark::hash::Context::<super::{algorithm:UpperCamel}>::new(0) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.finalize();
        }
        measure.stop();
    }
}
/*
#[cfg(test)]
mod tests {
    #[test]
    fn cozybuf() {
        let result = crate::vectors::hash::verify::<super::{algorithm:UpperCamel}>("{algorithm:Flat}.cozybuf");
        if cfg!(feature = "gen") && result.is_err() {
            crate::vectors::hash::generate::<super::{algorithm:UpperCamel}>("{algorithm:Flat}.cozybuf").unwrap();
        } else {
            result.unwrap();
        }
    }
}
*/
"#;
