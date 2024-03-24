// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::marker::PhantomData;
use core::mem::size_of;

use crate::Inout;

pub struct Reader<'a> {
    ptr: *const u8,
    len: usize,
    _p: PhantomData<&'a u8>,
}
impl<'a> From<&'a [u8]> for Reader<'a> {
    #[inline(always)]
    fn from(bytes: &[u8]) -> Self {
        Self::new(bytes.as_ptr(), bytes.len())
    }
}

impl<'a> Reader<'a> {
    #[inline(always)]
    pub fn new(ptr: *const u8, len: usize) -> Self {
        Self {
            ptr,
            len,
            _p: PhantomData,
        }
    }
    #[inline(always)]
    pub fn read<T: Inout>(&mut self) -> Option<T> {
        if self.len < size_of::<T>() {
            return None;
        }
        let result = unsafe { T::read(self.ptr, size_of::<T>()) };
        self.ptr = unsafe { self.ptr.add(size_of::<T>()) };
        self.len -= size_of::<T>();
        Some(result)
    }
    #[inline(always)]
    pub fn remainder<T: Inout>(&mut self) -> Option<(T, usize)> {
        if self.len == 0 {
            return None;
        }
        // call to self.read() covers self.len >= size_of::<T>()
        if let Some(out) = self.read() {
            return Some((out, size_of::<T>()));
        }
        let len = self.len;
        let result = unsafe { T::read(self.ptr, len) };
        self.ptr = unsafe { self.ptr.add(len) };
        self.len = 0;
        Some((result, len))
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
    pub unsafe fn take(self) -> (*const u8, usize) {
        (self.ptr, self.len)
    }
}
