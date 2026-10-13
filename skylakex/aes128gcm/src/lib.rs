// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

//! AES-128-GCM wrapper over freestanding Skylake-X assembly.

#![allow(unused_unsafe)]

use aes128gcm_skylakex_sys::*;

/// AES-128-GCM context. Opaque and initialized by the generated assembly.
#[repr(C, align(16))]
pub struct Aes128Gcm {
    _data: [u8; 272],
}

impl Aes128Gcm {
    #[inline]
    pub fn is_supported() -> bool {
        unsafe { haberdashery_aes128gcm_skylakex_is_supported() != 0 }
    }

    #[inline]
    pub fn new(key: &[u8; 16]) -> Self {
        debug_assert_eq!(
            unsafe { HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE },
            core::mem::size_of::<Self>()
        );
        debug_assert_eq!(
            unsafe { HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN },
            core::mem::align_of::<Self>()
        );
        unsafe {
            let mut context = core::mem::MaybeUninit::<Self>::uninit();
            let initialized = haberdashery_aes128gcm_skylakex_init(
                context.as_mut_ptr().cast(),
                key.as_ptr(),
                key.len(),
            );
            debug_assert!(initialized != 0);
            context.assume_init()
        }
    }

    #[inline]
    pub fn init(&mut self, key: &[u8; 16]) -> bool {
        unsafe {
            haberdashery_aes128gcm_skylakex_init(
                core::ptr::from_mut(self).cast(),
                key.as_ptr(),
                key.len(),
            ) != 0
        }
    }

    #[inline]
    pub fn encrypt(
        &self,
        nonce: &[u8],
        plaintext: &[u8],
        aad: &[u8],
        ciphertext: &mut [u8],
        tag: &mut [u8],
    ) -> bool {
        unsafe {
            haberdashery_aes128gcm_skylakex_encrypt(
                core::ptr::from_ref(self).cast(),
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
            ) != 0
        }
    }

    #[inline]
    pub fn decrypt(
        &self,
        nonce: &[u8],
        ciphertext: &[u8],
        tag: &[u8],
        aad: &[u8],
        plaintext: &mut [u8],
    ) -> bool {
        unsafe {
            haberdashery_aes128gcm_skylakex_decrypt(
                core::ptr::from_ref(self).cast(),
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
            ) != 0
        }
    }
}

impl Drop for Aes128Gcm {
    #[inline]
    fn drop(&mut self) {
        unsafe { zeroing_x86_64::haberdashery_zero(self._data.as_mut_ptr(), self._data.len()) }
    }
}
