// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;
use ffi_util::Writer;

pub trait Mac: Sized {
    type BaseImpl;
    #[inline(always)]
    fn to_base(&self) -> &Self::BaseImpl {
        unsafe { core::mem::transmute(self) }
    }
    #[inline(always)]
    fn to_base_mut(&mut self) -> &mut Self::BaseImpl {
        unsafe { core::mem::transmute(self) }
    }
    fn init(&mut self, key: &[u8]) -> bool;
    fn sign(&self, message: Reader, tag: Writer) -> bool;
    fn verify(&self, message: Reader, tag: Reader) -> bool;
    fn is_supported() -> bool;
}
