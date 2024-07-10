// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::time::Duration;

sflags::define! {
    --runtime: String = "100ms";
    --min_iters: u64 = 100;
    --dry_run: bool = false;
    --bench: bool = false;
}

pub fn runtime() -> Duration {
    units::Duration::try_from(&*RUNTIME).unwrap().into()
}
