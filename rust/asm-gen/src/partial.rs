// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::block::Block128;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;

#[repr(C)]
#[derive(Clone)]
pub struct PartialBlock {
    pad: Block128,
    partial: Block128,
    partial_len: usize,
}
impl Default for PartialBlock {
    #[inline]
    fn default() -> Self {
        Self {
            pad: Block128::ZERO,
            partial: Block128::ZERO,
            partial_len: 0,
        }
    }
}
impl PartialBlock {
    #[inline]
    pub fn new(pad: Block128, partial: Block128, partial_len: usize) -> Self {
        Self {
            pad,
            partial,
            partial_len,
        }
    }
    #[inline]
    pub fn new_aad(partial: Block128, partial_len: usize) -> Self {
        Self::new(Block128::ZERO, partial, partial_len)
    }
    #[inline]
    pub fn fill_crypt(&mut self, data: &mut ReaderWriter) -> Option<(Block128, Block128)> {
        debug_assert!(
            self.partial_len < Block128::SIZE,
            "Invalid partial_len value in Partial::fill_crypt: {} >= {}",
            self.partial_len,
            Block128::SIZE
        );
        if self.partial_len == 0 {
            None
        } else if self.partial_len + data.len() < Block128::SIZE {
            // Use all of data to fill a partial block
            let len = data.len();
            let (block, writer) = unsafe { data.read_bytes(self.partial_len, len) };
            self.partial ^= block.into();
            writer.write(self.partial.into());
            self.partial_len += len;
            None
        } else {
            // Fill a complete block
            let len = Block128::SIZE - self.partial_len;
            let (block, writer) = unsafe { data.read_bytes(self.partial_len, len) };
            self.partial ^= block.into();
            writer.write(self.partial.into());
            self.partial_len = 0;
            Some((self.pad, self.partial))
        }
    }
    #[inline]
    #[track_caller]
    pub fn fill_aad<'a>(&mut self, data: &mut Reader<'a>) -> Option<Block128> {
        debug_assert!(
            self.partial_len < Block128::SIZE,
            "Invalid partial_len value in Partial::fill_aad: {} >= {}",
            self.partial_len,
            Block128::SIZE
        );
        if self.partial_len == 0 {
            None
        } else if self.partial_len + data.len() < Block128::SIZE {
            // Use all of data to fill a partial block
            let mut block = [0u8; Block128::SIZE];
            let len = data.len();
            unsafe { data.read_bytes(block.as_mut_ptr().add(self.partial_len), len) };
            self.partial ^= block.into();
            self.partial_len += len;
            None
        } else {
            // Fill a complete block
            let mut block: [u8; Block128::SIZE] = self.partial.into();
            let len = block.len() - self.partial_len;
            unsafe { data.read_bytes(block.as_mut_ptr().add(self.partial_len), len) };
            self.partial_len = 0;
            Some(block.into())
        }
    }
    #[inline]
    pub fn remainder(&self) -> Option<Block128> {
        match self.partial_len {
            0 => None,
            _ => Some(self.partial),
        }
    }
    #[inline]
    pub fn remainder_zero_pad(&self, is_encrypt: bool) -> Option<Block128> {
        let partial = match is_encrypt {
            true => self.partial,
            false => self.partial ^ self.pad,
        };
        let partial = unsafe { partial.mov_range(0..self.partial_len) };
        match self.partial_len {
            0 => None,
            _ => Some(partial),
        }
    }
}
