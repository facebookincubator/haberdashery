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

pub struct EvpCipherCtx(Wrapper<EVP_CIPHER_CTX>);
impl EvpCipherCtx {
    #[inline]
    fn new() -> Option<Self> {
        Wrapper::new(unsafe { EVP_CIPHER_CTX_new() }).map(Self)
    }
    #[inline]
    pub fn from_cipher(cipher: *const EVP_CIPHER) -> Option<Self> {
        let mut this = Self::new()?;
        if 1 != this.cipher_init(cipher) {
            return None;
        }
        Some(this)
    }
    #[inline]
    pub unsafe fn as_ptr(&self) -> *mut EVP_CIPHER_CTX {
        self.0.as_ptr()
    }
    #[inline]
    pub fn cipher_init(&mut self, cipher: *const EVP_CIPHER) -> i32 {
        unsafe { EVP_EncryptInit_ex(self.as_ptr(), cipher, null_mut(), null(), null()) }
    }
    #[inline]
    pub fn key_init(&mut self, key: &[u8]) -> i32 {
        unsafe { EVP_EncryptInit_ex(self.as_ptr(), null(), null_mut(), key.as_ptr(), null()) }
    }
    #[inline]
    pub fn encrypt_init(&mut self, nonce: &[u8]) -> i32 {
        unsafe { EVP_EncryptInit_ex(self.as_ptr(), null(), null_mut(), null(), nonce.as_ptr()) }
    }
    #[inline]
    pub fn decrypt_init(&mut self, nonce: &[u8]) -> i32 {
        unsafe { EVP_DecryptInit_ex(self.as_ptr(), null(), null_mut(), null(), nonce.as_ptr()) }
    }
    #[inline]
    pub fn aad(&mut self, aad: &[u8]) -> i32 {
        let mut out_len = 0i32;
        unsafe {
            EVP_CipherUpdate(
                self.as_ptr(),
                null_mut(),
                &mut out_len,
                aad.as_ptr(),
                aad.len() as i32,
            )
        }
    }
    #[inline]
    pub fn crypt(&mut self, input: &[u8], output: &mut [u8]) -> i32 {
        let mut out_len = 0i32;
        unsafe {
            EVP_CipherUpdate(
                self.as_ptr(),
                output.as_mut_ptr(),
                &mut out_len,
                input.as_ptr(),
                input.len() as i32,
            )
        }
    }
    #[inline]
    pub fn encrypt_final(&self, tag: &mut [u8]) -> i32 {
        let mut out_len = 0;
        let ret = unsafe { EVP_CipherFinal(self.as_ptr(), null_mut(), &mut out_len) };
        if ret == 0 {
            return 0;
        }
        unsafe {
            EVP_CIPHER_CTX_ctrl(
                self.as_ptr(),
                EVP_CTRL_GCM_GET_TAG,
                tag.len() as i32,
                tag.as_mut_ptr() as *mut c_void,
            )
        }
    }
    #[inline]
    pub fn decrypt_final(&self, tag: &mut [u8]) -> i32 {
        let ret = unsafe {
            EVP_CIPHER_CTX_ctrl(
                self.as_ptr(),
                EVP_CTRL_GCM_SET_TAG,
                tag.len() as i32,
                tag.as_mut_ptr() as *mut c_void,
            )
        };
        if ret == 0 {
            return 0;
        }
        let mut out_len = 0;
        unsafe { EVP_DecryptFinal_ex(self.as_ptr(), null_mut(), &mut out_len) }
    }
}
impl Free for EVP_CIPHER_CTX {
    #[inline]
    unsafe fn free(v: *mut Self) {
        unsafe { EVP_CIPHER_CTX_free(v) };
    }
}
