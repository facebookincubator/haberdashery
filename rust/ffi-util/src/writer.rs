// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::marker::PhantomData;
use core::mem::size_of;

use crate::Inout;

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
    #[inline(always)]
    pub fn new(ptr: *mut u8, len: usize) -> Self {
        Self {
            ptr,
            len,
            _p: PhantomData,
        }
    }
    #[inline(always)]
    pub fn write<T: Inout>(&mut self, data: T) -> usize {
        if self.len == 0 {
            return 0;
        }
        let len = core::cmp::min(self.len, size_of::<T>());
        unsafe { data.write(self.ptr, len) };
        self.ptr = unsafe { self.ptr.add(len) };
        self.len -= len;
        len
    }
    #[inline(always)]
    pub fn len(&self) -> usize {
        self.len
    }
    #[inline(always)]
    pub fn is_empty(&self) -> bool {
        self.len == 0
    }
    #[inline(always)]
    pub unsafe fn take(self) -> (*mut u8, usize) {
        (self.ptr, self.len)
    }
}
