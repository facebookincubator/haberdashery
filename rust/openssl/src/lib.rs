// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod aead;
mod aes256gcm;
mod chacha20_poly1305;
mod cmac128;
mod evp_cipher_ctx;
mod evp_mac_ctx;
mod hmac_sha256;
pub mod mac;
pub mod version;

pub fn version() -> crate::version::Version {
    crate::version::Version::default()
}
