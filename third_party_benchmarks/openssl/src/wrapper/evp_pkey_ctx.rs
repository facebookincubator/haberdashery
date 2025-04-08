// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ffi::c_int;
use core::ptr::null_mut;

use openssl_sys::*;

use crate::wrapper::evp_pkey::EvpPkey;
use crate::wrapper::Free;
use crate::wrapper::Wrapper;

const NULL_ENGINE: *mut ENGINE = null_mut();

pub struct EvpPkeyCtx(Wrapper<EVP_PKEY_CTX>);
impl EvpPkeyCtx {
    #[inline]
    pub unsafe fn from_ptr(ptr: *mut EVP_PKEY_CTX) -> Option<Self> {
        Wrapper::new(ptr).map(Self)
    }
    #[inline]
    pub unsafe fn as_ptr(&self) -> *mut EVP_PKEY_CTX {
        self.0.as_ptr()
    }
    #[inline]
    pub fn from_nid(nid: c_int) -> Option<Self> {
        unsafe { Self::from_ptr(EVP_PKEY_CTX_new_id(nid, NULL_ENGINE)) }
    }
    #[inline]
    pub fn from_pkey(pkey: &EvpPkey) -> Option<Self> {
        unsafe { Self::from_ptr(EVP_PKEY_CTX_new(pkey.as_ptr(), NULL_ENGINE)) }
    }
    #[inline]
    pub fn keygen_init(&mut self) -> bool {
        (unsafe { EVP_PKEY_keygen_init(self.as_ptr()) }) > 0
    }
    #[inline]
    pub fn keygen(&self) -> Option<EvpPkey> {
        let mut ptr = null_mut();
        if 1 != unsafe { EVP_PKEY_keygen(self.as_ptr(), &mut ptr) } {
            return None;
        }
        unsafe { EvpPkey::from_ptr(ptr) }
    }
    #[inline]
    pub fn derive_init(&mut self) -> bool {
        (unsafe { EVP_PKEY_derive_init(self.as_ptr()) }) > 0
    }
    #[inline]
    pub fn derive_set_peer(&mut self, peer: &EvpPkey) -> bool {
        (unsafe { EVP_PKEY_derive_set_peer(self.as_ptr(), peer.as_ptr()) }) > 0
    }
    #[inline]
    pub fn derive_len(&mut self) -> Option<usize> {
        let mut out_len = 0;
        let key = null_mut(); // setting to null gives the length
        (unsafe { EVP_PKEY_derive(self.as_ptr(), key, &mut out_len) } > 0).then_some(out_len)
    }
    #[inline]
    pub fn derive<'a>(&mut self, out_bytes: &'a mut [u8]) -> Option<&'a mut [u8]> {
        let mut out_len = out_bytes.len();
        if 1 != unsafe { EVP_PKEY_derive(self.as_ptr(), out_bytes.as_mut_ptr(), &mut out_len) } {
            return None;
        }
        Some(&mut out_bytes[..out_len])
    }
}
impl Free for EVP_PKEY_CTX {
    #[inline]
    unsafe fn free(v: *mut Self) {
        unsafe { EVP_PKEY_CTX_free(v) }
    }
}
