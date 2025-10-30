// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use sha2::Digest;
use sha2::Sha256;

#[perf_caliper::benchmark(
    library:rust-crypto,
    algorithm:sha256,
    primitive:hash,
)]
fn hash(length: usize, iters: u64, measure: &mut dyn perf_caliper::Measure) {
    let data = vec![0u8; length];
    measure.start();
    for _ in 0..iters {
        Sha256::digest(&data);
    }
    measure.stop();
}
