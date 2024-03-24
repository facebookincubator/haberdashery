// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(test), no_std)]

mod reader;
mod reader_writer;
mod writer;

pub use crate::reader::*;
pub use crate::reader_writer::*;
pub use crate::writer::*;

pub trait Inout: Sized {
    unsafe fn read(ptr: *const u8, len: usize) -> Self;
    unsafe fn write(self, ptr: *mut u8, len: usize);
}
