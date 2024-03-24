// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;
use ffi_util::ReaderWriter;

use crate::intrinsics::m128i::*;

#[repr(C)]
#[derive(Clone)]
pub struct PartialBlock {
    pad: M128i,
    partial: M128i,
    partial_len: usize,
}
impl Default for PartialBlock {
    #[inline(always)]
    fn default() -> Self {
        Self {
            pad: M128i::zero(),
            partial: M128i::zero(),
            partial_len: 0,
        }
    }
}
impl PartialBlock {
    #[inline(always)]
    pub fn new(pad: M128i, partial: M128i, partial_len: usize) -> Self {
        Self {
            pad,
            partial,
            partial_len,
        }
    }
    #[inline(always)]
    pub fn new_aad(partial: M128i, partial_len: usize) -> Self {
        Self::new(M128i::zero(), partial, partial_len)
    }
    #[inline(always)]
    fn copy_partial(&mut self, output: *mut u8, len: usize) {
        debug_assert!(self.partial_len + len <= M128i::BYTE_LEN);
        unsafe {
            core::ptr::copy_nonoverlapping(
                self.partial
                    .cast::<[u8; M128i::BYTE_LEN]>()
                    .as_ptr()
                    .add(self.partial_len),
                output,
                len,
            )
        };
    }
    #[inline(always)]
    pub fn fill_crypt<'a, 'b>(
        &mut self,
        data: ReaderWriter<'a, 'b>,
    ) -> (ReaderWriter<'a, 'b>, Option<(M128i, M128i)>) {
        debug_assert!(self.partial_len < M128i::BYTE_LEN);

        if self.partial_len == 0 {
            // Nothing to fill
            (data, None)
        } else if self.partial_len + data.len() < M128i::BYTE_LEN {
            // Use all of data to fill a partial block
            let (reader_ptr, writer_ptr, len) = unsafe { data.take() };
            self.partial ^= unsafe { M128i::from_ptr_zero_pad(reader_ptr, len, self.partial_len) };
            self.copy_partial(writer_ptr, len);
            self.partial_len += len;
            (
                unsafe {
                    ReaderWriter::from_ptrs_unchecked(reader_ptr.add(len), writer_ptr.add(len), 0)
                },
                None,
            )
        } else {
            // Fill a complete block
            let (reader_ptr, writer_ptr, data_len) = unsafe { data.take() };
            let len = M128i::BYTE_LEN - self.partial_len;
            self.partial ^= unsafe { M128i::from_ptr_zero_pad(reader_ptr, len, self.partial_len) };
            self.copy_partial(writer_ptr, len);
            self.partial_len = 0;
            (
                unsafe {
                    ReaderWriter::from_ptrs_unchecked(
                        reader_ptr.add(len),
                        writer_ptr.add(len),
                        data_len - len,
                    )
                },
                Some((self.pad, self.partial)),
            )
        }
    }
    #[inline(always)]
    pub fn fill_aad<'a>(&mut self, data: Reader<'a>) -> (Reader<'a>, Option<M128i>) {
        debug_assert!(self.partial_len < M128i::BYTE_LEN);
        if self.partial_len == 0 {
            // Nothing to fill
            (data, None)
        } else if self.partial_len + data.len() < M128i::BYTE_LEN {
            // Use all of data to fill a partial block
            let (ptr, len) = unsafe { data.take() };
            self.partial ^= unsafe { M128i::from_ptr_zero_pad(ptr, len, self.partial_len) };
            self.partial_len += len;
            (Reader::new(unsafe { ptr.add(len) }, 0), None)
        } else {
            // Fill a complete block
            let (ptr, data_len) = unsafe { data.take() };
            let fill_len = M128i::BYTE_LEN - self.partial_len;
            self.partial ^= unsafe { M128i::from_ptr_zero_pad(ptr, fill_len, self.partial_len) };
            self.partial_len = 0;
            let data =
                unsafe { core::slice::from_raw_parts(ptr.add(fill_len), data_len - fill_len) };
            (data.into(), Some(self.partial))
        }
    }
    #[inline(always)]
    pub fn remainder(&self) -> Option<M128i> {
        match self.partial_len {
            0 => None,
            _ => Some(self.partial),
        }
    }
    #[inline(always)]
    pub fn remainder_zero_pad(&self, is_encrypt: bool) -> Option<M128i> {
        let partial = match is_encrypt {
            true => self.partial,
            false => self.partial ^ self.pad,
        }
        .cast::<[u8; M128i::BYTE_LEN]>();
        let partial = unsafe { M128i::from_ptr_zero_pad(partial.as_ptr(), self.partial_len, 0) };
        match self.partial_len {
            0 => None,
            _ => Some(partial),
        }
    }
}
