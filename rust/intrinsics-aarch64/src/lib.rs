#![no_std]
// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.
#![allow(non_camel_case_types)]

#[cfg(not(target_arch = "aarch64"))]
compile_error!("intrinsics-aarch64 only supports aarch64");

mod neon;

pub use neon::uint8x16_t;
