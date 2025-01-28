// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::ffi::reader::Reader;
use crate::ffi::writer::Writer;

pub trait Hash: Sized {
    const DIGEST_LEN: usize;
    const STRUCT_SIZE: usize;
    const STRUCT_ALIGNMENT: usize;
    fn init(&mut self) -> bool;
    fn update(&mut self, data: Reader) -> bool;
    fn finalize(&mut self) -> bool;
    fn digest(&self, digest: Writer) -> bool;
    fn is_supported() -> bool;
}
