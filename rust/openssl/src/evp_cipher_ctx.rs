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

pub struct CipherCtx {
    ctx: *mut EVP_CIPHER_CTX,
}
unsafe impl Send for CipherCtx {}
impl Default for CipherCtx {
    #[inline(always)]
    fn default() -> Self {
        Self {
            ctx: unsafe { EVP_CIPHER_CTX_new() },
        }
    }
}
impl From<*const EVP_CIPHER> for CipherCtx {
    fn from(cipher: *const EVP_CIPHER) -> Self {
        let mut ctx = CipherCtx::default();
        assert_ne!(ctx.cipher_init(cipher), 0);
        ctx
    }
}
impl Drop for CipherCtx {
    #[inline(always)]
    fn drop(&mut self) {
        unsafe { EVP_CIPHER_CTX_free(self.ctx) };
        self.ctx = null_mut();
    }
}
impl CipherCtx {
    #[inline(always)]
    pub fn cipher_init(&mut self, cipher: *const EVP_CIPHER) -> i32 {
        unsafe { EVP_EncryptInit_ex(self.ctx, cipher, null_mut(), null(), null()) }
    }
    #[inline(always)]
    pub fn key_init(&mut self, key: &[u8]) -> i32 {
        unsafe { EVP_EncryptInit_ex(self.ctx, null(), null_mut(), key.as_ptr(), null()) }
    }
    #[inline(always)]
    pub fn encrypt_init(&mut self, nonce: &[u8]) -> i32 {
        unsafe { EVP_EncryptInit_ex(self.ctx, null(), null_mut(), null(), nonce.as_ptr()) }
    }
    #[inline(always)]
    pub fn decrypt_init(&mut self, nonce: &[u8]) -> i32 {
        unsafe { EVP_DecryptInit_ex(self.ctx, null(), null_mut(), null(), nonce.as_ptr()) }
    }
    #[inline(always)]
    pub fn aad(&mut self, aad: &[u8]) -> i32 {
        let mut out_len = 0i32;
        unsafe {
            EVP_CipherUpdate(
                self.ctx,
                null_mut(),
                &mut out_len,
                aad.as_ptr(),
                aad.len() as i32,
            )
        }
    }
    #[inline(always)]
    pub fn crypt(&mut self, input: &[u8], output: &mut [u8]) -> i32 {
        let mut out_len = 0i32;
        unsafe {
            EVP_CipherUpdate(
                self.ctx,
                output.as_mut_ptr(),
                &mut out_len,
                input.as_ptr(),
                input.len() as i32,
            )
        }
    }
    #[inline(always)]
    pub fn encrypt_final(&self, tag: &mut [u8]) -> i32 {
        let mut out_len = 0;
        let ret = unsafe { EVP_CipherFinal(self.ctx, null_mut(), &mut out_len) };
        if ret == 0 {
            return 0;
        }
        unsafe {
            EVP_CIPHER_CTX_ctrl(
                self.ctx,
                EVP_CTRL_GCM_GET_TAG,
                tag.len() as i32,
                tag.as_mut_ptr() as *mut c_void,
            )
        }
    }
    #[inline(always)]
    pub fn decrypt_final(&self, tag: &mut [u8]) -> i32 {
        let ret = unsafe {
            EVP_CIPHER_CTX_ctrl(
                self.ctx,
                EVP_CTRL_GCM_SET_TAG,
                tag.len() as i32,
                tag.as_mut_ptr() as *mut c_void,
            )
        };
        if ret == 0 {
            return 0;
        }
        let mut out_len = 0;
        unsafe { EVP_DecryptFinal_ex(self.ctx, null_mut(), &mut out_len) }
    }
}
