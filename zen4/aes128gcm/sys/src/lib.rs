// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

core::arch::global_asm!(include_str!("aes128gcm.s"), options(raw, att_syntax));

unsafe extern "C" {
    pub static HABERDASHERY_AES128GCM_ZEN4_STRUCT_SIZE: usize;
    pub static HABERDASHERY_AES128GCM_ZEN4_STRUCT_ALIGN: usize;

    pub fn haberdashery_aes128gcm_zen4_is_supported() -> i32;
    pub fn haberdashery_aes128gcm_zen4_init(out: *mut u8, key: *const u8, key_len: usize) -> i32;
    pub fn haberdashery_aes128gcm_zen4_encrypt(
        this: *const u8,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        pt: *const u8,
        pt_len: usize,
        ct_out: *mut u8,
        ct_out_len: usize,
        tag_out: *mut u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_zen4_decrypt(
        this: *const u8,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        ct: *const u8,
        ct_len: usize,
        tag: *const u8,
        tag_len: usize,
        out: *mut u8,
        out_len: usize,
    ) -> i32;
}
