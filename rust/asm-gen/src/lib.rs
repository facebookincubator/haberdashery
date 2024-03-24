// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(test), no_std)]

mod aes;
mod aes256;
pub mod aes256gcm;
pub mod aes256gcmdndk;
pub mod aes256gcmsiv;
mod aesgcm;
pub mod asm;
mod clmulfoil;
mod counter128;
pub mod ffi;
mod ghash;
mod intrinsics;
pub mod is_supported;
mod partial;
mod polyval;
pub mod sivmac;

#[cfg(test)]
pub static PROJECT_PATH: static_env::Env<std::path::PathBuf> =
    static_env::Env::new("PROJECT_PATH", "../..");
