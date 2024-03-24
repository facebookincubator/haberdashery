// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(test), no_std)]
pub mod feature;
pub mod processor;

pub use processor::Processor;

#[inline(always)]
pub fn processor() -> Processor {
    Processor::default()
}
// We take the GCC definitions of various microarchitectures with modifications listed below:
// https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html

// GCC's haswell plus AES
#[inline(always)]
pub fn has_haswell_support() -> bool {
    processor().has_haswell_support()
}

// GCC's skylake-avx512 minus xsavec, xsaves
#[inline(always)]
pub fn has_skylake_support() -> bool {
    processor().has_skylake_support()
}

// GCC's tigerlake minus xsavec, xsaves
#[inline(always)]
pub fn has_tigerlake_support() -> bool {
    processor().has_tigerlake_support()
}
