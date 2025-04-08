// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ffi::c_void;
use core::ptr::null;
use core::ptr::null_mut;

use openssl_sys::*;

use crate::wrapper::Free;
use crate::wrapper::Wrapper;

pub struct HmacCtx(Wrapper<HMAC_CTX>);
impl HmacCtx {
    #[inline]
    pub fn new() -> Option<Self> {
        Wrapper::new(unsafe { HMAC_CTX_new() }).map(Self)
    }
    #[inline]
    pub unsafe fn as_ptr(&self) -> *mut HMAC_CTX {
        self.0.as_ptr()
    }
    #[inline]
    pub fn reset(&mut self) -> bool {
        unsafe { HMAC_Init_ex(self.as_ptr(), null(), 0, null(), null_mut()) != 0 }
    }
    #[inline]
    #[allow(clippy::not_unsafe_ptr_arg_deref)]
    pub unsafe fn init(&mut self, md: *const EVP_MD, key: &[u8]) -> bool {
        unsafe {
            HMAC_Init_ex(
                self.as_ptr(),
                key.as_ptr() as *const c_void,
                key.len() as i32,
                md,
                null_mut(),
            ) != 0
        }
    }
    #[inline]
    pub fn key_init(&mut self, key: &[u8]) -> bool {
        unsafe {
            HMAC_Init_ex(
                self.as_ptr(),
                key.as_ptr() as *const c_void,
                key.len() as i32,
                null(),
                null_mut(),
            ) != 0
        }
    }
    #[inline]
    pub fn update(&mut self, message: &[u8]) -> bool {
        unsafe { HMAC_Update(self.as_ptr(), message.as_ptr(), message.len()) != 0 }
    }
    #[inline]
    pub fn finalize(&mut self, tag: &mut [u8]) -> bool {
        let mut len = tag.len() as u32;
        unsafe { HMAC_Final(self.as_ptr(), tag.as_mut_ptr(), &mut len) != 0 }
    }
}
impl Free for HMAC_CTX {
    #[inline]
    unsafe fn free(v: *mut Self) {
        unsafe { HMAC_CTX_free(v) };
    }
}
