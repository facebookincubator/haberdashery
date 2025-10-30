// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cfg(target_arch = "x86_64")]
#[cfg(any(not(feature = "asm_gen"), feature = "aes128gcm"))]
pub mod aes128gcm;

#[cfg(target_arch = "x86_64")]
#[cfg(any(not(feature = "asm_gen"), feature = "aes192gcm"))]
pub mod aes192gcm;

#[cfg(any(not(feature = "asm_gen"), feature = "aes256gcm"))]
pub mod aes256gcm;

#[cfg(any(not(feature = "asm_gen"), feature = "aes256gcmdndk"))]
pub mod aes256gcmdndk;

#[cfg(any(not(feature = "asm_gen"), feature = "aes256gcmsiv"))]
pub mod aes256gcmsiv;

#[cfg(any(not(feature = "asm_gen"), feature = "aes256gcmdndkv2"))]
pub mod aes256gcmdndkv2;

#[cfg(any(not(feature = "asm_gen"), feature = "aes256gcmdndkv2kc"))]
pub mod aes256gcmdndkv2kc;

use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;

pub trait Aead: Sized {
    const KEY_LEN: usize;
    const NONCE_LEN: usize;
    const TAG_LEN: usize;
    const STRUCT_SIZE: usize;
    const STRUCT_ALIGNMENT: usize;
    fn init(&mut self, key: &[u8]) -> bool;
    fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool;
    fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool;
    fn is_supported() -> bool;
}
