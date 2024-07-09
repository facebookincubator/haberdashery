// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use haberdashery_asm_gen::aes256gcm::Aes256GcmKey as BaseKey;
use haberdashery_asm_gen::aes256gcm::Aes256GcmState as BaseState;
use haberdashery_asm_gen::ffi::aead_streaming::AeadStreaming;
use haberdashery_asm_gen::ffi::reader::Reader;
use haberdashery_asm_gen::ffi::reader_writer::ReaderWriter;
use haberdashery_asm_gen::ffi::writer::Writer;
use haberdashery_asm_gen::is_supported::is_supported;

const LANES: usize = 6;

#[repr(C)]
pub struct Aes256GcmKey(BaseKey<LANES>);
#[repr(C)]
pub struct Aes256GcmState(BaseState<LANES>);
#[bindings_proc::aead_streaming(
    algorithm: aes256gcm,
    api: streaming,
    prefix: haberdashery,
    profile: haswell,
    profile: broadwell,
    profile: skylake,
    profile: skylakex,
    profile: tigerlake,
)]
impl AeadStreaming for Aes256GcmState {
    const KEY_LEN: usize = 32;
    const NONCE_LEN: usize = 12;
    const TAG_LEN: usize = 16;
    const KEY_STRUCT_SIZE: usize = 336;
    const KEY_STRUCT_ALIGNMENT: usize = 16;
    const STATE_STRUCT_SIZE: usize = 112;
    const STATE_STRUCT_ALIGNMENT: usize = 16;

    type Key = Aes256GcmKey;

    #[inline(always)]
    fn init_key(key_struct: &mut Self::Key, key: &[u8]) -> bool {
        key_struct.0.init(key)
    }
    #[inline(always)]
    fn init_state(&mut self, key: &Self::Key, nonce: &[u8]) -> bool {
        self.0.init(&key.0, nonce)
    }
    #[inline(always)]
    fn aad_update(&mut self, key: &Self::Key, aad: Reader) -> usize {
        self.0.aad_update(&key.0, aad)
    }
    #[inline(always)]
    fn encrypt_update(&mut self, key: &Self::Key, data: ReaderWriter) -> usize {
        self.0.encrypt_update(&key.0, data)
    }
    #[inline(always)]
    fn encrypt_finalize(&mut self, key: &Self::Key, tag: Writer) -> usize {
        self.0.encrypt_finalize(&key.0, tag)
    }
    #[inline(always)]
    fn decrypt_update(&mut self, key: &Self::Key, data: ReaderWriter) -> usize {
        self.0.decrypt_update(&key.0, data)
    }
    #[inline(always)]
    fn decrypt_finalize(&mut self, key: &Self::Key, tag: Reader) -> bool {
        self.0.decrypt_finalize(&key.0, tag)
    }
    #[inline(always)]
    fn is_supported() -> bool {
        is_supported()
    }
}
