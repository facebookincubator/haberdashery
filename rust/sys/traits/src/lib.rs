// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(feature = "buck2", feature(used_with_arg))]
pub mod aead;
pub mod mac;

#[cfg(test)]
pub static PROJECT_PATH: static_env::Env<std::path::PathBuf> =
    static_env::Env::new("PROJECT_PATH", "../../..");
