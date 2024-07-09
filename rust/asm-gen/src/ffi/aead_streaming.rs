// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;

pub trait AeadStreaming: Sized {
    const KEY_LEN: usize;
    const NONCE_LEN: usize;
    const TAG_LEN: usize;
    const KEY_STRUCT_SIZE: usize;
    const KEY_STRUCT_ALIGNMENT: usize;
    const STATE_STRUCT_SIZE: usize;
    const STATE_STRUCT_ALIGNMENT: usize;

    type Key;

    fn init_key(key_struct: &mut Self::Key, key: &[u8]) -> bool;
    fn init_state(&mut self, key: &Self::Key, nonce: &[u8]) -> bool;
    fn aad_update(&mut self, key: &Self::Key, aad: Reader) -> usize;
    fn encrypt_update(&mut self, key: &Self::Key, data: ReaderWriter) -> usize;
    fn encrypt_finalize(&mut self, key: &Self::Key, tag: Writer) -> usize;
    fn decrypt_update(&mut self, key: &Self::Key, data: ReaderWriter) -> usize;
    fn decrypt_finalize(&mut self, key: &Self::Key, tag: Reader) -> bool;
    fn is_supported() -> bool;
}
