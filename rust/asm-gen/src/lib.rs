// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(test), no_std)]
#![feature(array_chunks)]
#![feature(linkage)]
#![feature(stdarch_x86_avx512)]
#![allow(unexpected_cfgs)]
#[cfg(not(target_arch = "x86_64"))]
compile_error!("only x86_64 is supported, try: cargo build --target=x86_64-unknown-linux-gnu");

mod aes;
mod aes128;
pub mod aes128gcm;
mod aes192;
pub mod aes192gcm;
mod aes256;
pub mod aes256gcm;
pub mod aes256gcmdndk;
pub mod aes256gcmdndkv2;
pub mod aes256gcmdndkv2kc;
pub mod aes256gcmsiv;
mod aesgcm;
pub mod asm;
mod clamped_index;
pub mod clmul;
mod counter128;
pub mod ffi;
mod intrinsics;
pub mod is_supported;
pub mod ops;
mod partial;
pub mod sivmac;

#[cfg(test)]
pub static PROJECT_PATH: static_env::Env<std::path::PathBuf> =
    static_env::Env::new("PROJECT_PATH", "../..");
