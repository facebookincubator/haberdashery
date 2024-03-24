// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline(always)]
pub fn is_supported() -> bool {
    if cfg!(feature = "haswell") {
        cpuid::has_haswell_support()
    } else if cfg!(feature = "skylake") {
        cpuid::has_skylake_support()
    } else {
        unimplemented!()
    }
}
