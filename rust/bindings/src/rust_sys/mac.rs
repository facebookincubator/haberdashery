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

#[repr(C, align({struct_alignment}))]
pub struct {algorithm:UpperCamel}([u8; {struct_size}]);
impl {algorithm:UpperCamel} {
    pub const KEY_LEN: usize = {key_len};
    pub const TAG_LEN: usize = {tag_len};
}

extern "C" {
    pub fn {prefix}_{name}_init(
        this: *mut {algorithm:UpperCamel},
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_sign(
        this: *const {algorithm:UpperCamel},
        message: *const u8,
        message_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    pub fn {prefix}_{name}_verify(
        this: *const {algorithm:UpperCamel},
        message: *const u8,
        message_len: usize,
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
            let key = [0u8; {algorithm:UpperCamel}::KEY_LEN];
            let message = [0u8; 1];
            let mut tag = [0u8; {algorithm:UpperCamel}::TAG_LEN];

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
                {prefix}_{name}_sign(
                    this.as_ptr(),
                    message.as_ptr(),
                    message.len(),
                    tag.as_mut_ptr(),
                    tag.len(),
                ),
                0,
            );
            assert_ne!(
                {prefix}_{name}_verify(
                    this.as_ptr(),
                    message.as_ptr(),
                    message.len(),
                    tag.as_ptr(),
                    tag.len(),
                ),
                0,
            );
        }
    }
}
"#;
