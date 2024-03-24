// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;
use ffi_util::ReaderWriter;
use ffi_util::Writer;
use haberdashery_asm_gen::aes256gcm::Aes256GcmKey as BaseKey;
use haberdashery_asm_gen::ffi::aead::Aead;
use haberdashery_asm_gen::is_supported::is_supported;

const LANES: usize = 6;

#[haberdashery_template_proc::constants(
    algorithm: aes256gcm,
)]
mod constants {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
}

#[haberdashery_template_proc::aead(
    algorithm: aes256gcm,
    prefix: haberdashery,
    profile: haswell,
    profile: skylake,
)]
pub struct Aes256Gcm([core::arch::x86_64::__m128i; 21]);
impl Aead for Aes256Gcm {
    type BaseImpl = BaseKey<LANES>;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.to_base_mut().init(key)
    }
    #[inline(always)]
    fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
        self.to_base().encrypt(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
        self.to_base().decrypt(nonce, aad, data, tag)
    }
    #[inline(always)]
    fn is_supported() -> bool {
        is_supported()
    }
}
