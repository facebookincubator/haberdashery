// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256gcmsiv as base;
use crate::ffi::aead::Aead;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;
use crate::is_supported::is_supported;

const ENCRYPT_LANES: usize = 8;
const DECRYPT_LANES: usize = 6;

#[repr(C)]
#[cfg(not(feature = "tigerlake"))]
pub struct Aes256GcmSiv(base::Aes256GcmSivKey);
#[bindings_proc::aead(
    algorithm: aes256gcmsiv,
    prefix: haberdashery,
    profile: haswell,
    profile: broadwell,
    profile: skylake,
    profile: skylakex,
)]
impl Aead for Aes256GcmSiv {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    const STRUCT_SIZE: usize = 240;
    const STRUCT_ALIGNMENT: usize = 16;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.0.init(key)
    }
    #[inline(always)]
    fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
        self.0.encrypt::<ENCRYPT_LANES>(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        self.0.decrypt::<DECRYPT_LANES>(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn is_supported() -> bool {
        is_supported()
    }
}

#[repr(C)]
#[cfg(feature = "tigerlake")]
pub struct Aes256GcmSiv(base::Aes256GcmSivKey<base::SIMD256>);
#[bindings_proc::aead(
    algorithm: aes256gcmsiv,
    prefix: haberdashery,
    profile: tigerlake,
)]
impl Aead for Aes256GcmSiv {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    const STRUCT_SIZE: usize = 240;
    const STRUCT_ALIGNMENT: usize = 16;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.0.init(key)
    }
    #[inline(always)]
    fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
        self.0.encrypt::<ENCRYPT_LANES>(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        self.0.decrypt::<DECRYPT_LANES>(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn is_supported() -> bool {
        is_supported()
    }
}
