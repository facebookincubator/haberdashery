// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use intrinsics_x86_64::__m128i;

pub(crate) struct ReadWriter {
    reader: *const u8,
    writer: *mut u8,
    len: usize,
}

impl ReadWriter {
    pub(crate) unsafe fn from_ptrs(
        reader: *const u8,
        reader_len: usize,
        writer: *mut u8,
        writer_len: usize,
    ) -> Option<Self> {
        if reader_len != writer_len || (reader_len != 0 && (reader.is_null() || writer.is_null())) {
            return None;
        }
        Some(Self {
            reader,
            writer,
            len: reader_len,
        })
    }

    pub(crate) fn len(&self) -> usize {
        self.len
    }

    pub(crate) fn writer_ptr(&self) -> *mut u8 {
        self.writer
    }

    pub(crate) unsafe fn read_xmm(&self) -> __m128i {
        debug_assert!(self.len >= 16);
        unsafe { __m128i::_mm_loadu_si128(self.reader) }
    }

    pub(crate) unsafe fn write_xmm(&self, value: __m128i) {
        debug_assert!(self.len >= 16);
        unsafe { value._mm_storeu_si128(self.writer) }
    }

    pub(crate) unsafe fn read_xmms<const N: usize>(&self) -> [__m128i; N] {
        debug_assert!(N <= self.len / 16);
        core::array::from_fn(|index| unsafe {
            __m128i::_mm_loadu_si128(self.reader.add(index * 16))
        })
    }

    pub(crate) unsafe fn write_xmms<const N: usize>(&self, values: [__m128i; N]) {
        debug_assert!(N <= self.len / 16);
        for (index, value) in values.into_iter().enumerate() {
            unsafe { value._mm_storeu_si128(self.writer.add(index * 16)) };
        }
    }

    pub(crate) unsafe fn read_xmm_partial(&self) -> __m128i {
        debug_assert!(self.len < 16);
        unsafe { __m128i::ZERO._mm_mask_loadu_epi8(low_byte_mask(self.len), self.reader) }
    }

    pub(crate) unsafe fn write_xmm_partial(&self, value: __m128i) {
        debug_assert!(self.len < 16);
        unsafe { value._mm_mask_storeu_epi8(low_byte_mask(self.len), self.writer) };
    }

    pub(crate) unsafe fn advance(&mut self, bytes: usize) {
        debug_assert!(bytes <= self.len);
        if bytes != 0 {
            unsafe {
                self.reader = self.reader.add(bytes);
                self.writer = self.writer.add(bytes);
            }
        }
        self.len -= bytes;
    }
}

fn low_byte_mask(length: usize) -> u16 {
    debug_assert!(length < 16);
    (1u16 << length) - 1
}
