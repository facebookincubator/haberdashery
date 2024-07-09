// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use haberdashery_asm_gen::aes256gcmsiv::Aes256GcmSivKey as BaseKey;
use haberdashery_asm_gen::ffi::aead::Aead;
use haberdashery_asm_gen::ffi::reader::Reader;
use haberdashery_asm_gen::ffi::reader_writer::ReaderWriter;
use haberdashery_asm_gen::ffi::writer::Writer;
use haberdashery_asm_gen::is_supported::is_supported;

const ENCRYPT_LANES: usize = 8;
const DECRYPT_LANES: usize = 6;

#[repr(C)]
pub struct Aes256GcmSiv(BaseKey);
#[bindings_proc::aead(
    algorithm: aes256gcmsiv,
    prefix: haberdashery,
    profile: haswell,
    profile: broadwell,
    profile: skylake,
    profile: skylakex,
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
