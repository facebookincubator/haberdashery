// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::iter::Iterator;
use core::marker::PhantomData;

use crate::clamped_index::ClampedIndex;
use crate::ffi::pod::Pod;

pub struct Reader<'a>(InternalReader<&'a ()>);
impl<'a> From<&'a [u8]> for Reader<'a> {
    #[inline]
    fn from(bytes: &[u8]) -> Self {
        unsafe { Self::new(bytes.as_ptr(), bytes.len()) }
    }
}
impl<'a> Reader<'a> {
    #[inline]
    pub unsafe fn new(ptr: *const u8, len: usize) -> Self {
        Self(InternalReader::new(ptr, len))
    }
    #[cfg(test)]
    pub fn clone_for_test(&self) -> Self {
        unsafe { Self::new(self.0.ptr, self.0.len) }
    }
    #[inline]
    pub fn len(&self) -> usize {
        self.0.len
    }
    #[inline]
    pub fn is_empty(&self) -> bool {
        self.0.len == 0
    }
    #[inline]
    pub fn read<T: Pod>(&mut self) -> Option<T> {
        self.0.read()
    }
    #[inline]
    pub unsafe fn read_bytes(&mut self, ptr: *mut u8, len: usize) {
        self.0.read_bytes(ptr, len);
    }
    #[inline]
    #[track_caller]
    pub fn remainder<T: Pod>(&mut self) -> Option<T> {
        self.0.remainder()
    }
    #[inline]
    pub fn iter<T: Pod>(&mut self) -> Iter<T> {
        Iter::new(unsafe { core::mem::transmute(&mut self.0) })
    }
    #[inline]
    pub fn split_remainder<T: Pod, const N: usize>(&mut self) -> RemainderReader<'a, T, N> {
        RemainderReader(self.0.split_remainder(N * T::SIZE))
    }
}
pub struct Iter<'a, T>(&'a mut InternalReader<T>);
impl<'a, T> Iter<'a, T> {
    #[inline]
    fn new(reader: &'a mut InternalReader<T>) -> Self {
        Self(reader)
    }
}
impl<'a, T: Pod> Iterator for Iter<'a, T> {
    type Item = T;
    #[inline]
    fn next(&mut self) -> Option<Self::Item> {
        self.0.read::<T>()
    }
}
pub struct RemainderReader<'a, T: Pod, const N: usize>(InternalReader<&'a [T; N]>);
impl<'a, T: Pod, const N: usize> RemainderReader<'a, T, N> {
    #[inline]
    pub fn is_empty(&self) -> bool {
        self.0.len == 0
    }
    #[inline]
    pub fn len(&self) -> usize {
        self.0.len
    }
    #[inline]
    pub fn clamped_len(&self) -> ClampedIndex<N> {
        let index = ClampedIndex::new(self.0.len / T::SIZE);
        unsafe { index.unwrap_unchecked() }
    }
    #[inline]
    pub fn read(&mut self) -> Option<T> {
        self.0.read::<T>()
    }
    #[inline]
    #[track_caller]
    pub fn read_remainder(&mut self) -> Option<T> {
        self.0.remainder()
    }
}
impl<'a, T: Pod, const N: usize> Iterator for RemainderReader<'a, T, N> {
    type Item = T;
    #[inline]
    fn next(&mut self) -> Option<Self::Item> {
        self.read()
    }
}
struct InternalReader<T = ()> {
    ptr: *const u8,
    len: usize,
    _p: PhantomData<T>,
}
impl<T> InternalReader<T> {
    #[inline]
    unsafe fn new(ptr: *const u8, len: usize) -> Self {
        Self {
            ptr,
            len,
            _p: Default::default(),
        }
    }
    #[inline]
    #[track_caller]
    unsafe fn advance(&mut self, len: usize) -> *const u8 {
        debug_assert!(
            len <= self.len,
            "Invalid Reader::advance length: {len} > {}",
            self.len
        );
        let ptr = self.ptr;
        self.ptr = unsafe { self.ptr.add(len) };
        self.len -= len;
        ptr
    }
    #[inline]
    fn read<S: Pod>(&mut self) -> Option<S> {
        (self.len >= S::SIZE).then(|| {
            let ptr = unsafe { self.advance(S::SIZE) };
            unsafe { S::load(ptr) }
        })
    }
    #[inline]
    #[track_caller]
    pub unsafe fn read_bytes(&mut self, ptr: *mut u8, len: usize) {
        let read_ptr = unsafe { self.advance(len) };
        unsafe { core::ptr::copy_nonoverlapping(read_ptr, ptr, len) };
    }

    #[inline]
    #[track_caller]
    fn remainder<S: Pod>(&mut self) -> Option<S> {
        let len = self.len % S::SIZE;
        (len != 0).then(|| {
            self.len -= len;
            let ptr = unsafe { self.ptr.add(self.len) };
            unsafe { S::load_partial(ptr, len) }
        })
    }
    #[inline]
    fn split_remainder<S>(&mut self, len: usize) -> InternalReader<S> {
        let len = self.len % len;
        self.len -= len;
        let ptr = unsafe { self.ptr.add(self.len) };
        unsafe { InternalReader::new(ptr, len) }
    }
}
