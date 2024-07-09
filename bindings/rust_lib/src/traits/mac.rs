// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::transmute;
use core::mem::MaybeUninit;

pub trait Mac: Sized {
    const KEY_LEN: usize;
    const TAG_LEN: usize;
    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32;
    const FN_SIGN: unsafe extern "C" fn(
        this: *const Self,
        message: *const u8,
        message_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    const FN_VERIFY: unsafe extern "C" fn(
        this: *const Self,
        message: *const u8,
        message_len: usize,
        tag: *const u8,
        tag_len: usize,
    ) -> i32;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32;

    #[inline(always)]
    fn new(key: &[u8]) -> Option<Self> {
        MaybeUninit::<Self>::uninit().init(key)
    }
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        0 != unsafe { Self::FN_INIT(self, key.as_ptr(), key.len()) }
    }
    #[inline(always)]
    fn sign(&self, message: &[u8], tag: &mut [u8]) -> bool {
        0 != unsafe {
            Self::FN_SIGN(
                self,
                message.as_ptr(),
                message.len(),
                tag.as_mut_ptr(),
                tag.len(),
            )
        }
    }
    #[inline(always)]
    fn verify(&self, message: &[u8], tag: &[u8]) -> bool {
        0 != unsafe {
            Self::FN_VERIFY(
                self,
                message.as_ptr(),
                message.len(),
                tag.as_ptr(),
                tag.len(),
            )
        }
    }
    #[inline(always)]
    fn is_supported() -> bool {
        0 != unsafe { Self::FN_IS_SUPPORTED() }
    }
    #[inline(always)]
    fn sign_raw<'a>(&self, message: &[u8], tag: &'a mut [MaybeUninit<u8>]) -> Option<&'a mut [u8]> {
        (0 != unsafe {
            Self::FN_SIGN(
                self,
                message.as_ptr(),
                message.len(),
                tag.as_mut_ptr() as *mut u8,
                tag.len(),
            )
        })
        .then(|| unsafe { transmute(tag) })
    }
}

pub trait MacInit<T: Mac> {
    fn init(self, key: &[u8]) -> Option<T>;
}
impl<T: Mac, S: Into<MaybeUninit<T>>> MacInit<T> for S {
    #[inline(always)]
    fn init(self, key: &[u8]) -> Option<T> {
        let mut this = self.into();
        (0 != unsafe { T::FN_INIT(this.as_mut_ptr(), key.as_ptr(), key.len()) })
            .then(|| unsafe { this.assume_init() })
    }
}
