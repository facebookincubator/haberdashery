// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256gcmdndk::Aes256GcmDndkKey as BaseKey;
use crate::ffi::aead::Aead;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;

#[bindings_proc::bindings(
    algorithm: aes256gcmdndk,
    prefix: haberdashery,
    arch: x86_64,
    profile: broadwell,
    profile: skylakex,
    profile: tigerlake,
)]
mod x86_64 {
    use super::*;
    use crate::is_supported::is_supported;

    const LANES: usize = 6;

    #[repr(C)]
    pub struct Aes256GcmDndk(BaseKey);
    impl Aead for Aes256GcmDndk {
        const KEY_LEN: usize = 32;
        const NONCE_LEN: usize = 24;
        const TAG_LEN: usize = 16;
        const STRUCT_SIZE: usize = 240;
        const STRUCT_ALIGNMENT: usize = 16;
        #[inline(always)]
        fn init(&mut self, key: &[u8]) -> bool {
            self.0.init(key)
        }
        #[inline(always)]
        fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
            self.0.encrypt::<LANES>(nonce, aad, data, tag)
        }
        #[inline(always)]
        fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
            self.0.decrypt::<LANES>(nonce, aad, data, tag)
        }
        #[inline(always)]
        fn is_supported() -> bool {
            is_supported()
        }
    }
}

#[bindings_proc::bindings(
    algorithm: aes256gcmdndk,
    prefix: haberdashery,
    arch: aarch64,
    profile: neoversev2,
)]
mod aarch64 {
    use super::*;
    use crate::is_supported::is_supported;

    const LANES: usize = 8;

    #[repr(C)]
    pub struct Aes256GcmDndk(BaseKey);
    impl Aead for Aes256GcmDndk {
        const KEY_LEN: usize = 32;
        const NONCE_LEN: usize = 24;
        const TAG_LEN: usize = 16;
        const STRUCT_SIZE: usize = 240;
        const STRUCT_ALIGNMENT: usize = 16;
        #[inline(always)]
        fn init(&mut self, key: &[u8]) -> bool {
            self.0.init(key)
        }
        #[inline(always)]
        fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool {
            self.0.encrypt::<LANES>(nonce, aad, data, tag)
        }
        #[inline(always)]
        fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool {
            self.0.decrypt::<LANES>(nonce, aad, data, tag)
        }
        #[inline(always)]
        fn is_supported() -> bool {
            is_supported()
        }
    }
}
