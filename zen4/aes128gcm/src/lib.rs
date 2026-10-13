// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

//! AES-128-GCM wrapper over freestanding assembly.
//!
//! The assembly is generated from `asm/` and included via `global_asm!`.

#![allow(unused_unsafe)]

use aes128gcm_zen4_sys::*;

/// AES-128-GCM context. Opaque — initialized by assembly.
#[repr(C, align(64))]
pub struct Aes128Gcm {
    _data: [u8; 384],
}

impl Aes128Gcm {
    #[inline]
    pub fn is_supported() -> bool {
        unsafe { haberdashery_aes128gcm_zen4_is_supported() != 0 }
    }

    #[inline]
    pub fn new(key: &[u8; 16]) -> Self {
        debug_assert_eq!(
            unsafe { HABERDASHERY_AES128GCM_ZEN4_STRUCT_SIZE },
            core::mem::size_of::<Self>()
        );
        debug_assert_eq!(
            unsafe { HABERDASHERY_AES128GCM_ZEN4_STRUCT_ALIGN },
            core::mem::align_of::<Self>()
        );
        unsafe {
            let mut ctx = std::mem::MaybeUninit::<Aes128Gcm>::uninit();
            haberdashery_aes128gcm_zen4_init(ctx.as_mut_ptr().cast(), key.as_ptr(), key.len());
            ctx.assume_init()
        }
    }

    #[inline]
    pub fn init(&mut self, key: &[u8; 16]) -> bool {
        unsafe {
            haberdashery_aes128gcm_zen4_init(
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
            haberdashery_aes128gcm_zen4_encrypt(
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
            haberdashery_aes128gcm_zen4_decrypt(
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
