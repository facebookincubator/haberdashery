// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub const UNIT_SRC: &str = r#"#[cfg(feature = "asm-path")]
core::arch::global_asm!(
    include_str!(concat!(env!("HABERDASHERY_ASM_PATH"), "/{name}.s")),
    options(att_syntax, raw)
);
#[cfg(not(feature = "asm-path"))]
core::arch::global_asm!(
    include_str!("../../../../../asm/{name}.s"),
    options(att_syntax, raw)
);

#[repr(C, align({key_struct_alignment}))]
pub struct {algorithm:UpperCamel}Key([u8; {key_struct_size}]);
impl {algorithm:UpperCamel}Key {
    pub const KEY_LEN: usize = {key_len};
    pub const NONCE_LEN: usize = {nonce_len};
    pub const TAG_LEN: usize = {tag_len};
}
#[repr(C, align({state_struct_alignment}))]
pub struct {algorithm:UpperCamel}State([u8; {state_struct_size}]);

extern "C" {
    pub fn {prefix}_{name}_init_key(
        this: *mut {algorithm:UpperCamel}Key,
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_init_state(
        this: *mut {algorithm:UpperCamel}State,
        key: *const {algorithm:UpperCamel}Key,
        nonce: *const u8,
        nonce_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_aad_update(
        this: *mut {algorithm:UpperCamel}State,
        key: *const {algorithm:UpperCamel}Key,
        aad: *const u8,
        aad_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_encrypt_update(
        this: *mut {algorithm:UpperCamel}State,
        key: *const {algorithm:UpperCamel}Key,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_encrypt_finalize(
        this: *mut {algorithm:UpperCamel}State,
        key: *const {algorithm:UpperCamel}Key,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_decrypt_update(
        this: *mut {algorithm:UpperCamel}State,
        key: *const {algorithm:UpperCamel}Key,
        ciphertext: *const u8,
        ciphertext_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_decrypt_finalize(
        this: *mut {algorithm:UpperCamel}State,
        key: *const {algorithm:UpperCamel}Key,
        tag: *const u8,
        tag_len: usize,
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
            let key = [0u8; {algorithm:UpperCamel}Key::KEY_LEN];
            let nonce = [0u8; {algorithm:UpperCamel}Key::NONCE_LEN];
            let mut tag = [0u8; {algorithm:UpperCamel}Key::TAG_LEN];
            let aad = [0u8; 1];
            let mut plaintext = [0u8; 1];
            let mut ciphertext = [0u8; 1];

            let mut key_struct = core::mem::MaybeUninit::<{algorithm:UpperCamel}Key>::uninit();
            assert_ne!(
                {prefix}_{name}_init_key(
                    key_struct.as_mut_ptr(),
                    key.as_ptr(),
                    key.len()
                ),
                0
            );
            let key_struct: {algorithm:UpperCamel}Key = key_struct.assume_init();
            {
                let mut state = core::mem::MaybeUninit::<{algorithm:UpperCamel}State>::uninit();
                assert_ne!(
                    {prefix}_{name}_init_state(
                        state.as_mut_ptr(),
                        &key_struct,
                        nonce.as_ptr(),
                        nonce.len()
                    ),
                    0
                );
                let mut state = state.assume_init();
                assert_ne!(
                    {prefix}_{name}_aad_update(
                        &mut state,
                        &key_struct,
                        aad.as_ptr(),
                        aad.len(),
                    ),
                    0
                );
                assert_ne!(
                    {prefix}_{name}_encrypt_update(
                        &mut state,
                        &key_struct,
                        plaintext.as_ptr(),
                        plaintext.len(),
                        ciphertext.as_mut_ptr(),
                        ciphertext.len(),
                    ),
                    0
                );
                assert_ne!(
                    {prefix}_{name}_encrypt_finalize(
                        &mut state,
                        &key_struct,
                        tag.as_mut_ptr(),
                        tag.len(),
                    ),
                    0
                );
            }
            {
                let mut state = core::mem::MaybeUninit::<{algorithm:UpperCamel}State>::uninit();
                assert_ne!(
                    {prefix}_{name}_init_state(
                        state.as_mut_ptr(),
                        &key_struct,
                        nonce.as_ptr(),
                        nonce.len()
                    ),
                    0
                );
                let mut state = state.assume_init();
                assert_ne!(
                    {prefix}_{name}_aad_update(
                        &mut state,
                        &key_struct,
                        aad.as_ptr(),
                        aad.len(),
                    ),
                    0
                );
                assert_ne!(
                    {prefix}_{name}_decrypt_update(
                        &mut state,
                        &key_struct,
                        ciphertext.as_ptr(),
                        ciphertext.len(),
                        plaintext.as_mut_ptr(),
                        plaintext.len(),
                    ),
                    0
                );
                assert_ne!(
                    {prefix}_{name}_decrypt_finalize(
                        &mut state,
                        &key_struct,
                        tag.as_ptr(),
                        tag.len(),
                    ),
                    0
                );
            }
        }
    }
}
"#;
