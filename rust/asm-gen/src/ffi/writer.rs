// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::marker::PhantomData;

use crate::ffi::pod::Pod;

pub struct Writer<'a> {
    ptr: *mut u8,
    len: usize,
    _p: PhantomData<&'a u8>,
}
impl<'a> From<&'a mut [u8]> for Writer<'a> {
    #[inline(always)]
    fn from(buf: &'a mut [u8]) -> Self {
        Self::new(buf.as_mut_ptr(), buf.len())
    }
}
impl<'a> Writer<'a> {
    #[cfg(test)]
    pub unsafe fn writer_ptr(&self) -> (*mut u8, usize) {
        (self.ptr, self.len)
    }
    #[inline(always)]
    pub fn new(ptr: *mut u8, len: usize) -> Self {
        Self {
            ptr,
            len,
            _p: PhantomData,
        }
    }
    #[inline(always)]
    pub fn write<T: Pod>(&mut self, data: T) -> usize {
        let len = self.len;
        if len == 0 {
            0
        } else if len < T::SIZE {
            let ptr = unsafe { self.advance(len) };
            unsafe { data.store_partial(ptr, len) };
            len
        } else {
            let ptr = unsafe { self.advance(T::SIZE) };
            unsafe { data.store(ptr) };
            T::SIZE
        }
    }
    #[inline]
    #[track_caller]
    unsafe fn advance(&mut self, len: usize) -> *mut u8 {
        debug_assert!(
            len <= self.len,
            "Invalid ReaderWriter::advance length: {len} > {}",
            self.len
        );
        let ptr = self.ptr;
        self.ptr = unsafe { self.ptr.add(len) };
        self.len -= len;
        ptr
    }
    #[inline(always)]
    pub fn len(&self) -> usize {
        self.len
    }
    #[inline(always)]
    pub fn is_empty(&self) -> bool {
        self.len == 0
    }
}
