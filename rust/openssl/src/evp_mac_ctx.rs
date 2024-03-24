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

pub struct MacCtx {
    ctx: *mut HMAC_CTX,
}
unsafe impl Send for MacCtx {}
impl Default for MacCtx {
    #[inline(always)]
    fn default() -> Self {
        Self {
            ctx: unsafe { HMAC_CTX_new() },
        }
    }
}
impl Drop for MacCtx {
    #[inline(always)]
    fn drop(&mut self) {
        unsafe { HMAC_CTX_free(self.ctx) };
        self.ctx = null_mut();
    }
}
impl MacCtx {
    #[inline(always)]
    pub fn reset(&mut self) -> bool {
        unsafe { HMAC_Init_ex(self.ctx, null(), 0, null(), null_mut()) != 0 }
    }
    #[inline(always)]
    pub fn init(&mut self, md: *const EVP_MD, key: &[u8]) -> bool {
        unsafe {
            HMAC_Init_ex(
                self.ctx,
                key.as_ptr() as *const c_void,
                key.len() as i32,
                md,
                null_mut(),
            ) != 0
        }
    }
    #[inline(always)]
    pub fn key_init(&mut self, key: &[u8]) -> bool {
        unsafe {
            HMAC_Init_ex(
                self.ctx,
                key.as_ptr() as *const c_void,
                key.len() as i32,
                null(),
                null_mut(),
            ) != 0
        }
    }
    #[inline(always)]
    pub fn update(&mut self, message: &[u8]) -> bool {
        unsafe { HMAC_Update(self.ctx, message.as_ptr(), message.len()) != 0 }
    }
    #[inline(always)]
    pub fn finalize(&mut self, tag: &mut [u8]) -> bool {
        let mut len = tag.len() as u32;
        unsafe { HMAC_Final(self.ctx, tag.as_mut_ptr(), &mut len) != 0 }
    }
}
