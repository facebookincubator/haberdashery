// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::transmute;
use core::mem::MaybeUninit;

pub trait Aead: Sized {
    const KEY_LEN: usize;
    const NONCE_LEN: usize;
    const TAG_LEN: usize;

    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32;
    const FN_ENCRYPT: unsafe extern "C" fn(
        this: *const Self,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    const FN_DECRYPT: unsafe extern "C" fn(
        this: *const Self,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        ciphertext: *const u8,
        ciphertext_len: usize,
        tag: *const u8,
        tag_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32;

    #[inline(always)]
    fn new(key: &[u8]) -> Option<Self> {
        MaybeUninit::<Self>::uninit().init(key)
    }
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        0 != unsafe { Self::FN_INIT(self, key.as_ptr(), key.len()) }
    }
    #[inline(always)]
    fn encrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        plaintext: &[u8],
        ciphertext: &mut [u8],
        tag: &mut [u8],
    ) -> bool {
        0 != unsafe {
            Self::FN_ENCRYPT(
                self,
                nonce.as_ptr(),
                nonce.len(),
                aad.as_ptr(),
                aad.len(),
                plaintext.as_ptr(),
                plaintext.len(),
                ciphertext.as_mut_ptr(),
                ciphertext.len(),
                tag.as_mut_ptr(),
                tag.len(),
            )
        }
    }
    #[inline(always)]
    fn decrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        ciphertext: &[u8],
        tag: &[u8],
        plaintext: &mut [u8],
    ) -> bool {
        0 != unsafe {
            Self::FN_DECRYPT(
                self,
                nonce.as_ptr(),
                nonce.len(),
                aad.as_ptr(),
                aad.len(),
                ciphertext.as_ptr(),
                ciphertext.len(),
                tag.as_ptr(),
                tag.len(),
                plaintext.as_mut_ptr(),
                plaintext.len(),
            )
        }
    }
    #[inline(always)]
    fn is_supported() -> bool {
        0 != unsafe { Self::FN_IS_SUPPORTED() }
    }
    #[inline(always)]
    fn encrypt_raw<'a, 'b>(
        &self,
        nonce: &[u8],
        aad: &[u8],
        plaintext: &[u8],
        ciphertext: &'a mut [MaybeUninit<u8>],
        tag: &'b mut [MaybeUninit<u8>],
    ) -> Option<(&'a [u8], &'b [u8])> {
        (0 != unsafe {
            Self::FN_ENCRYPT(
                self,
                nonce.as_ptr(),
                nonce.len(),
                aad.as_ptr(),
                aad.len(),
                plaintext.as_ptr(),
                plaintext.len(),
                ciphertext.as_mut_ptr() as *mut u8,
                ciphertext.len(),
                tag.as_mut_ptr() as *mut u8,
                tag.len(),
            )
        })
        .then(|| unsafe { (transmute(ciphertext), transmute(tag)) })
    }
    #[inline(always)]
    fn decrypt_raw<'a>(
        &self,
        nonce: &[u8],
        aad: &[u8],
        ciphertext: &[u8],
        tag: &[u8],
        plaintext: &'a mut [MaybeUninit<u8>],
    ) -> Option<&'a [u8]> {
        (0 != unsafe {
            Self::FN_DECRYPT(
                self,
                nonce.as_ptr(),
                nonce.len(),
                aad.as_ptr(),
                aad.len(),
                ciphertext.as_ptr(),
                ciphertext.len(),
                tag.as_ptr(),
                tag.len(),
                plaintext.as_mut_ptr() as *mut u8,
                plaintext.len(),
            )
        })
        .then(|| unsafe { transmute(plaintext) })
    }
}

pub trait AeadInit<T: Aead> {
    fn init(self, key: &[u8]) -> Option<T>;
}
impl<T: Aead> AeadInit<T> for MaybeUninit<T> {
    #[inline(always)]
    fn init(mut self, key: &[u8]) -> Option<T> {
        (0 != unsafe { T::FN_INIT(self.as_mut_ptr(), key.as_ptr(), key.len()) })
            .then(|| unsafe { self.assume_init() })
    }
}
