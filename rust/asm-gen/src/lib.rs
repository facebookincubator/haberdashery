// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(test), no_std)]
#![feature(linkage)]
#![allow(unexpected_cfgs)]
#![allow(clippy::let_and_return)]

mod aes;
#[cfg(target_arch = "x86_64")]
pub mod aes128gcm;
#[cfg(target_arch = "x86_64")]
pub mod aes192gcm;
pub mod aes256gcm;
pub mod aes256gcmdndk;
pub mod aes256gcmdndkv2;
pub mod aes256gcmdndkv2kc;
pub mod aes256gcmsiv;
#[cfg(target_arch = "x86_64")]
mod aesgcm;
#[cfg(target_arch = "aarch64")]
mod aesgcm_aarch64;
pub mod asm;
pub mod block;
mod clamped_index;
pub mod clmul;
mod counter128;
pub mod ffi;
pub mod is_supported;
pub mod ops;
mod partial;
pub mod sivmac;

#[cfg(test)]
pub static PROJECT_PATH: static_env::Env<std::path::PathBuf> =
    static_env::Env::new("PROJECT_PATH", "../..");
