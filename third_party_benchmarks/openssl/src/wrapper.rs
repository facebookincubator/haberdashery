// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod evp_cipher_ctx;
pub mod evp_pkey;
pub mod evp_pkey_ctx;
pub mod hmac_ctx;

use core::ptr::null_mut;

pub struct Wrapper<T: Free>(*mut T);
impl<T: Free> Wrapper<T> {
    #[inline(always)]
    pub fn new(ptr: *mut T) -> Option<Self> {
        (!ptr.is_null()).then(|| Self(ptr))
    }
    #[inline(always)]
    pub unsafe fn as_ptr(&self) -> *mut T {
        self.0
    }
}
impl<T: Free> Drop for Wrapper<T> {
    #[inline(always)]
    fn drop(&mut self) {
        unsafe { T::free(self.0) };
        self.0 = null_mut();
    }
}
pub trait Free {
    unsafe fn free(v: *mut Self);
}
