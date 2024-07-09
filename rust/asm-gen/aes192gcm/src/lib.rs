// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use haberdashery_asm_gen::aes192gcm::Aes192GcmKey as BaseKey;
use haberdashery_asm_gen::ffi::aead::Aead;
use haberdashery_asm_gen::ffi::reader::Reader;
use haberdashery_asm_gen::ffi::reader_writer::ReaderWriter;
use haberdashery_asm_gen::ffi::writer::Writer;
use haberdashery_asm_gen::is_supported::is_supported;

#[repr(C)]
pub struct Aes192Gcm(BaseKey<6>);
#[bindings_proc::aead(
    algorithm: aes192gcm,
    prefix: haberdashery,
    profile: haswell,
    profile: broadwell,
    profile: skylake,
    profile: skylakex,
    profile: tigerlake,
)]
impl Aead for Aes192Gcm {
    const KEY_LEN: usize = 24;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    const STRUCT_SIZE: usize = 304;
    const STRUCT_ALIGNMENT: usize = 16;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.0.init(key)
    }
    #[inline(always)]
    fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
        self.0.encrypt(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        self.0.decrypt(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn is_supported() -> bool {
        is_supported()
    }
}
