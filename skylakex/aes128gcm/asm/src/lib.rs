// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

//! AES-128-GCM assembly source for Intel Skylake-X.
//!
//! This implementation intentionally uses only XMM operations from the
//! repository's `intrinsics-x86_64` crate. Generated assembly is added in a
//! separate step.

#![allow(dead_code)]
#![allow(unsafe_op_in_unsafe_fn)]
#![allow(unused_unsafe)]

mod aes128gcm;
mod io;

#[cfg(not(feature = "asm"))]
pub use aes128gcm::*;

#[cfg(feature = "asm")]
mod asm {
    use super::aes128gcm::Aes128Gcm;
    use super::aes128gcm::lengths_are_valid;
    use super::io::ReadWriter;

    /// Borrows `len` bytes at `ptr`, or an empty slice when `len` is zero, so a
    /// null pointer never reaches `slice::from_raw_parts`.
    ///
    /// `ptr` must be valid for reads of `len` bytes when `len` is non-zero.
    unsafe fn slice_or_empty<'a>(ptr: *const u8, len: usize) -> &'a [u8] {
        if len == 0 {
            &[]
        } else {
            unsafe { core::slice::from_raw_parts(ptr, len) }
        }
    }

    #[unsafe(no_mangle)]
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE: usize =
        core::mem::size_of::<Aes128Gcm>();

    #[unsafe(no_mangle)]
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN: usize =
        core::mem::align_of::<Aes128Gcm>();

    #[unsafe(no_mangle)]
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_KEY_SIZE: usize = 16;

    #[unsafe(no_mangle)]
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_NONCE_SIZE: usize = 12;

    #[unsafe(no_mangle)]
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_TAG_SIZE: usize = 16;

    #[unsafe(no_mangle)]
    pub extern "C" fn haberdashery_aes128gcm_skylakex_is_supported() -> i32 {
        target_support_x86::is_supported() as i32
    }

    #[unsafe(no_mangle)]
    pub unsafe extern "C" fn haberdashery_aes128gcm_skylakex_init(
        out: *mut Aes128Gcm,
        key: *const u8,
        key_len: usize,
    ) -> i32 {
        if out.is_null() || key.is_null() || key_len != 16 {
            return 0;
        }
        let key = unsafe { &*(key as *const [u8; 16]) };
        unsafe { core::ptr::write(out, Aes128Gcm::new(key)) };
        1
    }

    #[unsafe(no_mangle)]
    pub unsafe extern "C" fn haberdashery_aes128gcm_skylakex_encrypt(
        this: *const Aes128Gcm,
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
    ) -> i32 {
        if this.is_null()
            || (nonce_len != 0 && nonce.is_null())
            || (aad_len != 0 && aad.is_null())
            || tag.is_null()
            || ciphertext_len != plaintext_len
            || tag_len != 16
            || !lengths_are_valid(aad_len, plaintext_len)
        {
            return 0;
        }
        let Some(inout) = (unsafe {
            ReadWriter::from_ptrs(plaintext, plaintext_len, ciphertext, ciphertext_len)
        }) else {
            return 0;
        };
        let nonce = unsafe { slice_or_empty(nonce, nonce_len) };
        let aad = unsafe { slice_or_empty(aad, aad_len) };
        let tag = unsafe { &mut *(tag as *mut [u8; 16]) };
        unsafe { &*this }.encrypt(nonce, aad, inout, tag) as i32
    }

    #[unsafe(no_mangle)]
    pub unsafe extern "C" fn haberdashery_aes128gcm_skylakex_decrypt(
        this: *const Aes128Gcm,
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
    ) -> i32 {
        if this.is_null()
            || (nonce_len != 0 && nonce.is_null())
            || (aad_len != 0 && aad.is_null())
            || tag.is_null()
            || plaintext_len != ciphertext_len
            || tag_len != 16
            || !lengths_are_valid(aad_len, ciphertext_len)
        {
            return 0;
        }
        let Some(inout) = (unsafe {
            ReadWriter::from_ptrs(ciphertext, ciphertext_len, plaintext, plaintext_len)
        }) else {
            return 0;
        };
        let nonce = unsafe { slice_or_empty(nonce, nonce_len) };
        let aad = unsafe { slice_or_empty(aad, aad_len) };
        let tag = unsafe { &*(tag as *const [u8; 16]) };
        unsafe { &*this }.decrypt(nonce, aad, inout, tag) as i32
    }
}
