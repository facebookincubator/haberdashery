// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cfg(any(not(feature = "asm_gen"), feature = "sivmac"))]
pub mod sivmac;

use crate::ffi::reader::Reader;
use crate::ffi::writer::Writer;

pub trait Mac: Sized {
    const KEY_LEN: usize;
    const TAG_LEN: usize;
    const STRUCT_SIZE: usize;
    const STRUCT_ALIGNMENT: usize;
    fn init(&mut self, key: &[u8]) -> bool;
    fn sign(&self, message: Reader, tag: Writer) -> bool;
    fn verify(&self, message: Reader, tag: Reader) -> bool;
    fn is_supported() -> bool;
}
