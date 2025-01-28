// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ffi::c_int;
use core::ptr::null_mut;

use openssl_sys::*;

use crate::wrapper::Free;
use crate::wrapper::Wrapper;

const NULL_ENGINE: *mut ENGINE = null_mut();

pub struct EvpPkey(Wrapper<EVP_PKEY>);
impl EvpPkey {
    #[inline]
    pub unsafe fn from_ptr(ptr: *mut EVP_PKEY) -> Option<Self> {
        Wrapper::new(ptr).map(Self)
    }
    #[inline]
    pub unsafe fn as_ptr(&self) -> *mut EVP_PKEY {
        self.0.as_ptr()
    }
    #[inline]
    pub fn public_key_bytes<'a>(&self, out_bytes: &'a mut [u8]) -> Option<&'a mut [u8]> {
        let mut out_len = out_bytes.len();
        let result = unsafe {
            EVP_PKEY_get_raw_public_key(self.as_ptr(), out_bytes.as_mut_ptr(), &mut out_len)
        };
        (result > 0).then(|| &mut out_bytes[..out_len])
    }
    #[inline]
    pub fn from_public_key_bytes(nid: c_int, bytes: &[u8]) -> Option<Self> {
        Wrapper::new(unsafe {
            EVP_PKEY_new_raw_public_key(nid, NULL_ENGINE, bytes.as_ptr(), bytes.len())
        })
        .map(Self)
    }
    #[inline]
    pub fn private_key_bytes<'a>(&self, out_bytes: &'a mut [u8]) -> Option<&'a mut [u8]> {
        let mut out_len = out_bytes.len();
        let result = unsafe {
            EVP_PKEY_get_raw_private_key(self.as_ptr(), out_bytes.as_mut_ptr(), &mut out_len)
        };
        (result > 0).then(|| &mut out_bytes[..out_len])
    }
    #[inline]
    pub fn from_private_key_bytes(nid: c_int, bytes: &[u8]) -> Option<Self> {
        Wrapper::new(unsafe {
            EVP_PKEY_new_raw_private_key(nid, NULL_ENGINE, bytes.as_ptr(), bytes.len())
        })
        .map(Self)
    }
}
impl Clone for EvpPkey {
    #[inline]
    fn clone(&self) -> Self {
        let res = unsafe { EVP_PKEY_up_ref(self.as_ptr()) };
        debug_assert_eq!(res, 1);
        unsafe { Self::from_ptr(self.as_ptr()) }.unwrap()
    }
}
impl Free for EVP_PKEY {
    #[inline]
    unsafe fn free(v: *mut Self) {
        unsafe { EVP_PKEY_free(v) };
    }
}
