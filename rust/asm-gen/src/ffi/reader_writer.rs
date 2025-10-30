// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::marker::PhantomData;

use crate::ffi::pod::Pod;

pub struct ReaderWriter<'a, 'b>(InternalReaderWriter<&'a &'b ()>);
impl<'a, 'b> ReaderWriter<'a, 'b> {
    #[inline]
    pub unsafe fn reader_ptr(&self) -> (*const u8, usize) {
        (self.0.reader_ptr, self.0.len)
    }
    #[inline]
    pub unsafe fn writer_ptr(&self) -> (*const u8, usize) {
        (self.0.writer_ptr, self.0.len)
    }
    #[cfg(test)]
    pub unsafe fn writer_ptr_for_test(&self) -> (*mut u8, usize) {
        (self.0.writer_ptr, self.0.len)
    }
    #[inline]
    pub fn from_ptrs(
        reader_ptr: *const u8,
        reader_len: usize,
        writer_ptr: *mut u8,
        writer_len: usize,
    ) -> Option<Self> {
        if reader_len != writer_len {
            return None;
        }
        Some(Self(unsafe {
            InternalReaderWriter::new(reader_ptr, writer_ptr, reader_len)
        }))
    }
    #[inline]
    pub unsafe fn from_ptrs_unchecked(
        reader_ptr: *const u8,
        writer_ptr: *mut u8,
        len: usize,
    ) -> Self {
        Self(unsafe { InternalReaderWriter::new(reader_ptr, writer_ptr, len) })
    }
    #[inline]
    pub fn from_slices(reader: &[u8], writer: &mut [u8]) -> Option<Self> {
        Self::from_ptrs(
            reader.as_ptr(),
            reader.len(),
            writer.as_mut_ptr(),
            writer.len(),
        )
    }
    #[inline]
    pub fn read<T: Pod>(&mut self) -> Option<(T, WriteOnce<T>)> {
        self.0.read()
    }
    #[inline]
    #[track_caller]
    pub unsafe fn read_bytes<const N: usize>(
        &mut self,
        offset: usize,
        len: usize,
    ) -> ([u8; N], WriteBytesOnce<N>) {
        let (reader_ptr, writer_ptr) = unsafe { self.0.advance(len) };
        let mut block = [0u8; N];
        unsafe { core::ptr::copy_nonoverlapping(reader_ptr, block.as_mut_ptr().add(offset), len) };
        (block, WriteBytesOnce::new(writer_ptr, offset, len))
    }
    #[inline]
    pub fn remainder<T: Pod>(&mut self) -> Option<(T, WriteRemainderOnce<T>)> {
        self.0.remainder()
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
    pub fn iter<T: Pod>(&mut self) -> Iter<'_, T> {
        Iter::new(unsafe { core::mem::transmute(&mut self.0) })
    }
}
pub struct Iter<'a, T>(&'a mut InternalReaderWriter<T>);
impl<'a, T> Iter<'a, T> {
    #[inline]
    fn new(rw: &'a mut InternalReaderWriter<T>) -> Self {
        Self(rw)
    }
}
impl<'a, T: Pod> Iterator for Iter<'a, T> {
    type Item = (T, WriteOnce<T>);
    #[inline]
    fn next(&mut self) -> Option<Self::Item> {
        self.0.read::<T>()
    }
}
pub struct WriteRemainderOnce<T: Pod> {
    ptr: *mut u8,
    len: usize,
    _p: PhantomData<T>,
}
impl<T: Pod> WriteRemainderOnce<T> {
    #[inline]
    fn new(ptr: *mut u8, len: usize) -> Self {
        Self {
            ptr,
            len,
            _p: PhantomData,
        }
    }
    #[allow(clippy::len_without_is_empty)]
    #[inline]
    pub fn len(&self) -> usize {
        self.len
    }
    #[inline]
    pub fn write(self, data: T) -> T {
        unsafe { data.store_partial(self.ptr, self.len) };
        unsafe { T::load_partial(self.ptr, self.len) }
    }
}
pub struct WriteBytesOnce<const N: usize> {
    ptr: *mut u8,
    offset: usize,
    len: usize,
}
impl<const N: usize> WriteBytesOnce<N> {
    #[inline]
    fn new(ptr: *mut u8, offset: usize, len: usize) -> Self {
        Self { ptr, offset, len }
    }
    #[inline]
    pub fn write(self, data: [u8; N]) {
        unsafe {
            core::ptr::copy_nonoverlapping(data.as_ptr().add(self.offset), self.ptr, self.len)
        }
    }
}
pub struct WriteOnce<T: Pod> {
    ptr: *mut u8,
    _p: PhantomData<T>,
}
impl<T: Pod> WriteOnce<T> {
    #[inline]
    pub fn new(ptr: *mut u8) -> Self {
        Self {
            ptr,
            _p: PhantomData,
        }
    }
    #[inline]
    pub fn write(self, data: T) {
        unsafe { data.store(self.ptr) };
    }
}
struct InternalReaderWriter<T = ()> {
    reader_ptr: *const u8,
    writer_ptr: *mut u8,
    len: usize,
    _p: PhantomData<T>,
}
impl<T> InternalReaderWriter<T> {
    #[inline]
    unsafe fn new(reader_ptr: *const u8, writer_ptr: *mut u8, len: usize) -> Self {
        Self {
            reader_ptr,
            writer_ptr,
            len,
            _p: PhantomData,
        }
    }
    #[inline]
    #[track_caller]
    unsafe fn advance(&mut self, len: usize) -> (*const u8, *mut u8) {
        debug_assert!(
            len <= self.len,
            "Invalid ReaderWriter::advance length: {len} > {}",
            self.len
        );
        let reader_ptr = self.reader_ptr;
        let writer_ptr = self.writer_ptr;
        self.reader_ptr = unsafe { self.reader_ptr.add(len) };
        self.writer_ptr = unsafe { self.writer_ptr.add(len) };
        self.len -= len;
        (reader_ptr, writer_ptr)
    }
    #[inline]
    fn read<S: Pod>(&mut self) -> Option<(S, WriteOnce<S>)> {
        (self.len >= S::SIZE).then(|| {
            let (reader_ptr, writer_ptr) = unsafe { self.advance(S::SIZE) };
            (
                unsafe { S::load(reader_ptr) },
                WriteOnce::<S>::new(writer_ptr),
            )
        })
    }
    #[inline]
    #[track_caller]
    fn remainder<S: Pod>(&mut self) -> Option<(S, WriteRemainderOnce<S>)> {
        let len = self.len % S::SIZE;
        (len != 0).then(|| {
            let (reader_ptr, writer_ptr) = unsafe { self.advance(len) };
            (
                unsafe { S::load_partial(reader_ptr, len) },
                WriteRemainderOnce::<S>::new(writer_ptr, len),
            )
        })
    }
}
