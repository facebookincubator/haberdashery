// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;
use ffi_util::ReaderWriter;
use ffi_util::Writer;

pub trait Aead: Sized {
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
    fn encrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Writer) -> bool;
    fn decrypt(&self, nonce: &[u8], aad: Reader, data: ReaderWriter, tag: Reader) -> bool;
    fn is_supported() -> bool;
}
pub trait AeadStreamingKey: Sized {
    type BaseImpl;
    #[inline(always)]
    fn to_base(&self) -> &Self::BaseImpl {
        unsafe { core::mem::transmute(self) }
    }
    #[inline(always)]
    fn to_base_mut(&mut self) -> &mut Self::BaseImpl {
        unsafe { core::mem::transmute(self) }
    }
    fn init_key(&mut self, key: &[u8]) -> bool;
    fn is_supported() -> bool;
}
pub trait AeadStreamingState: Sized {
    type BaseImpl;
    type Key;
    #[inline(always)]
    fn to_base(&self) -> &Self::BaseImpl {
        unsafe { core::mem::transmute(self) }
    }
    #[inline(always)]
    fn to_base_mut(&mut self) -> &mut Self::BaseImpl {
        unsafe { core::mem::transmute(self) }
    }
    fn init_state(&mut self, key: &Self::Key, nonce: &[u8]) -> bool;
    fn aad_update(&mut self, key: &<Self as AeadStreamingState>::Key, aad: Reader) -> usize;
    fn encrypt_update(
        &mut self,
        key: &<Self as AeadStreamingState>::Key,
        data: ReaderWriter,
    ) -> usize;
    fn encrypt_finalize(&mut self, key: &<Self as AeadStreamingState>::Key, tag: Writer) -> usize;
    fn decrypt_update(
        &mut self,
        key: &<Self as AeadStreamingState>::Key,
        data: ReaderWriter,
    ) -> usize;
    fn decrypt_finalize(&mut self, key: &<Self as AeadStreamingState>::Key, tag: Reader) -> bool;
}
