// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub const UNIT_SRC: &str = r#"#[cfg(feature = "asm-path")]
core::arch::global_asm!(
    include_str!(concat!(env!("HABERDASHERY_ASM_PATH"), "/{name}.s")),
    options({asm_options})
);
#[cfg(not(feature = "asm-path"))]
core::arch::global_asm!(
    include_str!("../../../../../asm/{arch}/{name}.s"),
    options({asm_options})
);

#[repr(C, align({struct_alignment}))]
pub struct {algorithm:UpperCamel}([u8; {struct_size}]);
impl {algorithm:UpperCamel} {
    pub const KEY_LEN: usize = {key_len};
    pub const NONCE_LEN: usize = {nonce_len};
    pub const TAG_LEN: usize = {tag_len};
}

extern "C" {
    pub fn {prefix}_{name}_init(
        this: *mut {algorithm:UpperCamel},
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_encrypt(
        this: *const {algorithm:UpperCamel},
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
    pub fn {prefix}_{name}_decrypt(
        this: *const {algorithm:UpperCamel},
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
    pub fn {prefix}_{name}_is_supported() -> i32;
}
"#;

pub const SYS_SRC: &str = r#"pub use {name}::*;

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test() {
        unsafe {
            if 0 == {prefix}_{name}_is_supported() {
                return;
            }
            let key = [0u8; {algorithm:UpperCamel}::KEY_LEN];
            let nonce = [0u8; {algorithm:UpperCamel}::NONCE_LEN];
            let mut tag = [0u8; {algorithm:UpperCamel}::TAG_LEN];
            let aad = [0u8; 1];
            let mut plaintext = [0u8; 1];
            let mut ciphertext = [0u8; 1];

            let mut this = core::mem::MaybeUninit::<{algorithm:UpperCamel}>::uninit();
            assert_ne!(
                {prefix}_{name}_init(
                    this.as_mut_ptr(),
                    key.as_ptr(),
                    key.len(),
                ),
                0,
            );
            assert_ne!(
                {prefix}_{name}_encrypt(
                    this.as_ptr(),
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
                ),
                0,
            );
            assert_ne!(
                {prefix}_{name}_decrypt(
                    this.as_ptr(),
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
                ),
                0,
            );
        }
    }
}
"#;
