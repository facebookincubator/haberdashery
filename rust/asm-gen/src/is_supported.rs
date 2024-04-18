// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline(always)]
pub fn is_supported() -> bool {
    if cfg!(feature = "haswell") {
        cpuid::haswell().is_supported()
    } else if cfg!(feature = "broadwell") {
        cpuid::broadwell().is_supported()
    } else if cfg!(feature = "skylake") {
        cpuid::skylake().is_supported()
    } else if cfg!(feature = "skylakex") {
        cpuid::skylakex().is_supported()
    } else if cfg!(feature = "tigerlake") {
        cpuid::tigerlake().is_supported()
    } else {
        unimplemented!()
    }
}
