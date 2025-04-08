// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod chacha20_poly1305;
mod chacha20_poly1305_ietf;
mod xchacha20_poly1305_ietf;

use core::ptr::null;
use core::ptr::null_mut;

pub struct Vtable {
    pub key_len: usize,
    pub nonce_len: usize,
    pub tag_len: usize,
    pub encrypt: unsafe extern "C" fn(
        *mut u8,
        *mut u8,
        *mut u64,
        *const u8,
        u64,
        *const u8,
        u64,
        *const u8,
        *const u8,
        *const u8,
    ) -> i32,
    pub decrypt: unsafe extern "C" fn(
        *mut u8,
        *mut u8,
        *const u8,
        u64,
        *const u8,
        *const u8,
        u64,
        *const u8,
        *const u8,
    ) -> i32,
}
impl Vtable {
    #[inline(always)]
    fn encrypt(
        &self,
        key: &[u8],
        nonce: &[u8],
        aad: &[u8],
        plaintext: &[u8],
        ciphertext: &mut [u8],
        tag: &mut [u8],
    ) -> bool {
        let mut tag_len = 0;
        unsafe {
            (self.encrypt)(
                ciphertext.as_mut_ptr(),
                tag.as_mut_ptr(),
                &mut tag_len,
                plaintext.as_ptr(),
                plaintext.len() as u64,
                aad.as_ptr(),
                aad.len() as u64,
                null(),
                nonce.as_ptr(),
                key.as_ptr(),
            ) == 0
        }
    }
    #[inline(always)]
    fn decrypt(
        &self,
        key: &[u8],
        nonce: &[u8],
        aad: &[u8],
        ciphertext: &[u8],
        tag: &[u8],
        plaintext: &mut [u8],
    ) -> bool {
        unsafe {
            (self.decrypt)(
                plaintext.as_mut_ptr(),
                null_mut(),
                ciphertext.as_ptr(),
                ciphertext.len() as u64,
                tag.as_ptr(),
                aad.as_ptr(),
                aad.len() as u64,
                nonce.as_ptr(),
                key.as_ptr(),
            ) == 0
        }
    }
}

pub struct BenchmarkData {
    vtable: Vtable,
    key: Vec<u8>,
    nonce: Vec<u8>,
    aad: Vec<u8>,
    plaintext: Vec<u8>,
    ciphertext: Vec<u8>,
    tag: Vec<u8>,
}
impl BenchmarkData {
    pub fn new(vtable: Vtable, aad_len: usize, payload_len: usize) -> Self {
        let key_len = vtable.key_len;
        let nonce_len = vtable.nonce_len;
        let tag_len = vtable.tag_len;
        let mut this = Self {
            vtable,
            key: random::vec(key_len),
            nonce: random::vec(nonce_len),
            aad: random::vec(aad_len),
            plaintext: random::vec(payload_len),
            ciphertext: vec![0u8; payload_len],
            tag: vec![0u8; tag_len],
        };
        assert!(this.encrypt());
        assert!(this.decrypt());
        this
    }
    #[inline(always)]
    pub fn encrypt(&mut self) -> bool {
        self.vtable.encrypt(
            &self.key,
            &self.nonce,
            &self.aad,
            &self.plaintext,
            &mut self.ciphertext,
            &mut self.tag,
        )
    }
    #[inline(always)]
    pub fn decrypt(&mut self) -> bool {
        self.vtable.decrypt(
            &self.key,
            &self.nonce,
            &self.aad,
            &self.ciphertext,
            &mut self.tag,
            &mut self.plaintext,
        )
    }
}
