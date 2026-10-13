// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

core::arch::global_asm!(include_str!("aes128gcm.s"), options(raw, att_syntax));

unsafe extern "C" {
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE: usize;
    pub static HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN: usize;

    pub fn haberdashery_aes128gcm_skylakex_is_supported() -> i32;
    pub fn haberdashery_aes128gcm_skylakex_init(
        out: *mut u8,
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_skylakex_encrypt(
        this: *const u8,
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
    pub fn haberdashery_aes128gcm_skylakex_decrypt(
        this: *const u8,
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
}
