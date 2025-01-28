// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::MaybeUninit;

pub trait Hash: Sized {
    const DIGEST_LEN: usize;
    const FN_INIT: unsafe extern "C" fn(this: *mut Self) -> i32;
    const FN_UPDATE: unsafe extern "C" fn(
        this: *mut Self,
        message: *const u8,
        message_len: usize,
    ) -> i32;
    const FN_FINALIZE: unsafe extern "C" fn(this: *mut Self) -> i32;
    const FN_DIGEST: unsafe extern "C" fn(
        this: *const Self,
        digest: *mut u8,
        digest_len: usize,
    ) -> i32;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32;

    #[inline(always)]
    fn new() -> Option<Self> {
        let mut this = MaybeUninit::<Self>::uninit();
        (0 != unsafe { Self::FN_INIT(this.as_mut_ptr()) }).then(|| unsafe { this.assume_init() })
    }
    #[inline(always)]
    fn init(&mut self) -> bool {
        0 != unsafe { Self::FN_INIT(self) }
    }
    #[inline(always)]
    fn update(&mut self, message: &[u8]) -> bool {
        0 != unsafe { Self::FN_UPDATE(self, message.as_ptr(), message.len()) }
    }
    #[inline(always)]
    fn finalize(&mut self) -> bool {
        0 != unsafe { Self::FN_FINALIZE(self) }
    }
    #[inline(always)]
    fn digest(&self, digest: &mut [u8]) -> bool {
        0 != unsafe { Self::FN_DIGEST(self, digest.as_mut_ptr(), digest.len()) }
    }
    #[inline(always)]
    fn is_supported() -> bool {
        0 != unsafe { Self::FN_IS_SUPPORTED() }
    }
}
