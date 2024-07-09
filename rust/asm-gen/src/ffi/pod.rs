// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::MaybeUninit;
use core::ptr::copy_nonoverlapping;

pub unsafe trait Pod: Sized {
    const SIZE: usize = core::mem::size_of::<Self>();
    #[inline]
    unsafe fn load(ptr: *const u8) -> Self {
        let mut result = MaybeUninit::<Self>::uninit();
        unsafe { copy_nonoverlapping(ptr, result.as_mut_ptr() as *mut u8, Self::SIZE) };
        unsafe { result.assume_init() }
    }
    #[inline]
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self {
        debug_assert!(
            len <= Self::SIZE,
            "Invalid load_partial length: {} > {}",
            len,
            Self::SIZE
        );
        let mut result = MaybeUninit::<Self>::uninit();
        unsafe { copy_nonoverlapping(ptr, result.as_mut_ptr() as *mut u8, len) };
        unsafe { result.assume_init() }
    }
    #[inline]
    unsafe fn store(&self, ptr: *mut u8) {
        unsafe { copy_nonoverlapping((self as *const Self) as *const u8, ptr, Self::SIZE) };
    }
    #[inline]
    unsafe fn store_partial(&self, ptr: *mut u8, len: usize) {
        debug_assert!(
            len <= Self::SIZE,
            "Invalid store_partial length: {} > {}",
            len,
            Self::SIZE
        );
        unsafe { copy_nonoverlapping((self as *const Self) as *const u8, ptr, len) };
    }
}

unsafe impl<T: Pod, const N: usize> Pod for [T; N] {
    #[inline]
    unsafe fn load(ptr: *const u8) -> Self {
        core::array::from_fn(|i| unsafe { T::load(ptr.add(i * T::SIZE)) })
    }
    #[inline]
    #[track_caller]
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self {
        debug_assert!(
            len <= Self::SIZE,
            "Invalid load_partial length: {} > {}",
            len,
            Self::SIZE
        );
        core::array::from_fn(|i| {
            let ptr = unsafe { ptr.add(len.min(i * T::SIZE)) };
            let len = len.saturating_sub(i * T::SIZE);
            if len < T::SIZE {
                unsafe { T::load_partial(ptr, len) }
            } else {
                unsafe { T::load(ptr) }
            }
        })
    }
    #[inline]
    unsafe fn store(&self, mut ptr: *mut u8) {
        for item in self {
            unsafe { item.store(ptr) };
            unsafe { ptr = ptr.add(T::SIZE) };
        }
    }
    #[inline]
    #[track_caller]
    unsafe fn store_partial(&self, mut ptr: *mut u8, mut len: usize) {
        debug_assert!(
            len <= Self::SIZE,
            "Invalid store_partial length: {} > {}",
            len,
            Self::SIZE
        );
        let mut i = 0;
        while len >= T::SIZE {
            unsafe { self[i].store(ptr) };
            unsafe { ptr = ptr.add(T::SIZE) };
            len -= T::SIZE;
            i += 1;
        }
        if len > 0 {
            unsafe { self[i].store_partial(ptr, len) };
        }
    }
}
