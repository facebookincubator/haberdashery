// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(not(test), no_std)]

core::arch::global_asm!(include_str!("zero.s"), options(raw, att_syntax));

unsafe extern "C" {
    pub fn haberdashery_zero(ptr: *mut u8, len: usize);
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn zeroes_exactly_len_bytes() {
        for len in [0, 1, 7, 8, 63, 64, 65, 272, 384, 4097] {
            let mut buf = [0xa5u8; 4200];
            unsafe { haberdashery_zero(buf[1..].as_mut_ptr(), len) };
            assert_eq!(buf[0], 0xa5);
            assert!(buf[1..=len].iter().all(|&b| b == 0), "len {len}");
            assert!(buf[len + 1..].iter().all(|&b| b == 0xa5), "len {len}");
        }
    }
}
