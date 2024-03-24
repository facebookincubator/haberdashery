// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::marker::PhantomData;
use core::mem::size_of;

use crate::Inout;
use crate::Reader;

pub struct ReaderWriter<'a, 'b> {
    reader_ptr: *const u8,
    writer_ptr: *mut u8,
    len: usize,
    _p: PhantomData<(&'a u8, &'b u8)>,
}
impl<'a, 'b> ReaderWriter<'a, 'b> {
    #[inline(always)]
    pub fn as_reader(&self) -> Reader {
        Reader::new(self.reader_ptr, self.len)
    }
    #[inline(always)]
    pub fn from_ptrs(
        reader_ptr: *const u8,
        reader_len: usize,
        writer_ptr: *mut u8,
        writer_len: usize,
    ) -> Option<Self> {
        if reader_len != writer_len {
            return None;
        }
        Some(Self {
            reader_ptr,
            writer_ptr,
            len: reader_len,
            _p: PhantomData,
        })
    }
    #[inline(always)]
    pub unsafe fn from_ptrs_unchecked(
        reader_ptr: *const u8,
        writer_ptr: *mut u8,
        len: usize,
    ) -> Self {
        Self {
            reader_ptr,
            writer_ptr,
            len,
            _p: PhantomData,
        }
    }
    #[inline(always)]
    pub fn from_slices(reader: &'a [u8], writer: &'b mut [u8]) -> Option<Self> {
        Self::from_ptrs(
            reader.as_ptr(),
            reader.len(),
            writer.as_mut_ptr(),
            writer.len(),
        )
    }
    #[inline(always)]
    pub fn read<T: Inout>(&mut self) -> Option<(T, WriteOnce<T>)> {
        let len = size_of::<T>();
        if self.len < len {
            return None;
        }
        let result = unsafe { T::read(self.reader_ptr, len) };
        let writer_ptr = self.writer_ptr;
        self.reader_ptr = unsafe { self.reader_ptr.add(len) };
        self.writer_ptr = unsafe { self.writer_ptr.add(len) };
        self.len -= len;
        Some((
            result,
            WriteOnce {
                writer_ptr,
                len,
                _p: PhantomData::<T>,
            },
        ))
    }
    #[inline(always)]
    pub fn read_remainder<T: Inout>(&mut self) -> Option<(T, usize, WriteOnce<T>)> {
        if self.len == 0 {
            return None;
        }
        // call to self.read() covers self.len >= size_of::<T>()
        if let Some((out, write_once)) = self.read() {
            // Hacky transmute, early returns are a known limitation of the borrow checker
            let write_once = unsafe { core::mem::transmute(write_once) };
            return Some((out, size_of::<T>(), write_once));
        }
        let len = self.len;
        let result = unsafe { T::read(self.reader_ptr, len) };
        let writer_ptr = self.writer_ptr;
        self.reader_ptr = unsafe { self.reader_ptr.add(len) };
        self.writer_ptr = unsafe { self.writer_ptr.add(len) };
        self.len = 0;
        Some((
            result,
            len,
            WriteOnce {
                writer_ptr,
                len,
                _p: PhantomData::<T>,
            },
        ))
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
    pub unsafe fn take(self) -> (*const u8, *mut u8, usize) {
        (self.reader_ptr, self.writer_ptr, self.len)
    }
}

pub struct WriteOnce<T: Inout> {
    writer_ptr: *mut u8,
    len: usize,
    _p: PhantomData<T>,
}
impl<T: Inout> WriteOnce<T> {
    #[inline(always)]
    pub fn write(self, data: T) {
        self.write_remainder(data);
    }
    #[inline(always)]
    pub fn write_remainder(self, data: T) -> T {
        unsafe { data.write(self.writer_ptr, self.len) };
        unsafe { T::read(self.writer_ptr, self.len) }
    }
}
