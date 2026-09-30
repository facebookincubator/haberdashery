// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use intrinsics_x86_64::__m128i;
use intrinsics_x86_64::__m512i;

pub(crate) struct ReadWriter {
    reader: *const u8,
    writer: *mut u8,
    len: usize,
}

impl ReadWriter {
    /// Creates a paired cursor over equally sized readable and writable buffers.
    ///
    /// The pointers must remain valid for their supplied lengths for the cursor's lifetime.
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

    pub(crate) fn reader_ptr(&self) -> *const u8 {
        self.reader
    }

    pub(crate) fn writer_ptr(&self) -> *mut u8 {
        self.writer
    }

    /// Reads one complete 16-byte vector from the current input position.
    ///
    /// The input buffer must contain at least 16 remaining bytes.
    pub(crate) unsafe fn read_xmm(&self) -> __m128i {
        debug_assert!(self.len >= 16);
        unsafe { __m128i::_mm_loadu_si128(self.reader) }
    }

    /// Writes one complete 16-byte vector at the current output position.
    ///
    /// The output buffer must contain at least 16 remaining bytes.
    pub(crate) unsafe fn write_xmm(&self, value: __m128i) {
        debug_assert!(self.len >= 16);
        unsafe { value._mm_storeu_si128(self.writer) }
    }

    /// Reads the bytes selected by `mask` from the current input position.
    ///
    /// Every selected byte must be within the remaining input buffer.
    pub(crate) unsafe fn read_xmm_masked(&self, mask: u16) -> __m128i {
        debug_assert!(mask.count_ones() as usize <= self.len);
        unsafe { __m128i::ZERO._mm_mask_loadu_epi8(mask, self.reader) }
    }

    /// Writes the bytes selected by `mask` at the current output position.
    ///
    /// Every selected byte must be within the remaining output buffer.
    pub(crate) unsafe fn write_xmm_masked(&self, mask: u16, value: __m128i) {
        debug_assert!(mask.count_ones() as usize <= self.len);
        unsafe { value._mm_mask_storeu_epi8(mask, self.writer) }
    }

    /// Reads `N` complete 64-byte vectors from the current input position.
    ///
    /// The input buffer must contain at least `N * 64` remaining bytes.
    pub(crate) unsafe fn read_zmms<const N: usize>(&self) -> [__m512i; N] {
        debug_assert!(N <= self.len / 64);
        core::array::from_fn(|index| unsafe {
            __m512i::_mm512_loadu_si512(self.reader.add(index * 64))
        })
    }

    /// Writes `N` complete 64-byte vectors at the current output position.
    ///
    /// The output buffer must contain at least `N * 64` remaining bytes.
    pub(crate) unsafe fn write_zmms<const N: usize>(&self, values: [__m512i; N]) {
        debug_assert!(N <= self.len / 64);
        for (index, value) in values.into_iter().enumerate() {
            unsafe {
                value._mm512_storeu_si512(self.writer.add(index * 64));
            }
        }
    }

    /// Reads selected bytes at `offset` from the current input position.
    ///
    /// `offset` and every byte selected by `mask` must lie within the remaining input buffer.
    pub(crate) unsafe fn read_zmm_masked(&self, offset: usize, mask: u64) -> __m512i {
        debug_assert!(offset < self.len);
        unsafe { __m512i::_mm512_maskz_loadu_epi8(mask, self.reader.add(offset)) }
    }

    /// Writes selected bytes at `offset` from the current output position.
    ///
    /// `offset` and every byte selected by `mask` must lie within the remaining output buffer.
    pub(crate) unsafe fn write_zmm_masked(&self, offset: usize, mask: u64, value: __m512i) {
        debug_assert!(offset < self.len);
        unsafe { value._mm512_mask_storeu_epi8(self.writer.add(offset), mask) }
    }

    /// Advances both pointers by `bytes` and reduces the remaining length.
    ///
    /// `bytes` must not exceed the remaining buffer length.
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
