// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![allow(unused)]

use core::mem::MaybeUninit;
use core::mem::size_of;
use core::ops::Range;
use core::ptr::copy_nonoverlapping;

use crate::ffi::pod::Pod;

#[repr(transparent)]
#[derive(Clone, Copy)]
pub struct Block128([u8; 16]);

#[allow(unused)]
impl Block128 {
    pub const SIZE: usize = size_of::<Self>();
    pub const ZERO: Self = Self::from_bytes([0u8; Self::SIZE]);

    #[inline]
    pub unsafe fn load<T>(ptr: *const T) -> Self {
        todo!()
    }
    #[inline]
    pub unsafe fn store<T>(self, ptr: *mut T) {
        todo!()
    }
    #[inline]
    pub unsafe fn cast<T>(self) -> T {
        debug_assert_eq!(size_of::<T>(), size_of::<Self>());
        let mut result = MaybeUninit::uninit();
        unsafe { self.store(result.as_mut_ptr()) };
        unsafe { result.assume_init() }
    }
    #[inline]
    pub const fn from_bytes(bytes: [u8; Self::SIZE]) -> Self {
        unsafe { core::mem::transmute(bytes) }
    }
    #[inline]
    pub const fn from_u32(bytes: [u32; 4]) -> Self {
        unsafe { core::mem::transmute(bytes) }
    }
    #[inline]
    pub fn to_bytes(&self) -> [u8; Self::SIZE] {
        let mut bytes = [0u8; 16];
        unsafe { self.store(bytes.as_mut_ptr()) };
        bytes
    }
    #[inline]
    pub fn zero() -> Self {
        todo!()
    }
    #[inline]
    pub fn is_zero(self) -> bool {
        todo!()
    }
    #[inline]
    pub fn crypto_equals(self, rhs: Block128) -> bool {
        (self ^ rhs).is_zero()
    }
}
impl Default for Block128 {
    #[inline]
    fn default() -> Self {
        Self::zero()
    }
}
impl From<[u8; Self::SIZE]> for Block128 {
    #[inline]
    fn from(array: [u8; Self::SIZE]) -> Self {
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl From<Block128> for [u8; Block128::SIZE] {
    #[inline]
    fn from(reg: Block128) -> Self {
        unsafe { reg.cast() }
    }
}
impl<T: Into<Block128>> core::ops::BitXor<T> for Block128 {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: T) -> Self::Output {
        todo!()
    }
}
impl core::ops::BitXorAssign for Block128 {
    #[inline]
    fn bitxor_assign(&mut self, other: Self) {
        *self = *self ^ other;
    }
}
impl<T: Into<Block128>> core::ops::BitAnd<T> for Block128 {
    type Output = Self;
    #[inline]
    fn bitand(self, other: T) -> Self::Output {
        todo!()
    }
}
impl core::ops::BitAndAssign for Block128 {
    #[inline]
    fn bitand_assign(&mut self, other: Self) {
        *self = *self & other;
    }
}
impl<T: Into<Block128>> core::ops::BitOr<T> for Block128 {
    type Output = Self;
    #[inline]
    fn bitor(self, other: T) -> Self::Output {
        todo!()
    }
}
impl core::ops::BitOrAssign for Block128 {
    #[inline]
    fn bitor_assign(&mut self, other: Self) {
        *self = *self | other;
    }
}
impl From<[u64; 2]> for Block128 {
    #[inline]
    fn from(v: [u64; 2]) -> Self {
        todo!()
    }
}
impl From<Block128> for [u64; 2] {
    #[inline]
    fn from(reg: Block128) -> Self {
        unsafe { reg.cast() }
    }
}
impl From<[u32; 4]> for Block128 {
    #[inline]
    fn from(v: [u32; 4]) -> Self {
        todo!()
    }
}
impl From<Block128> for [u32; 4] {
    #[inline]
    fn from(reg: Block128) -> Self {
        unsafe { reg.cast() }
    }
}
unsafe impl Pod for Block128 {
    #[inline]
    unsafe fn load(ptr: *const u8) -> Self {
        unsafe { Self::load(ptr) }
    }
    #[inline]
    #[track_caller]
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self {
        unsafe { Self::load_range(ptr, 0..len) }
    }
    #[inline]
    unsafe fn store(&self, ptr: *mut u8) {
        unsafe { Self::store(*self, ptr) }
    }
    #[inline]
    unsafe fn store_partial(&self, ptr: *mut u8, len: usize) {
        self.store_range(ptr, 0..len)
    }
}
impl Block128 {
    /// Returns a copy with bytes outside of range zeroed out.
    /// Unsafe since we require a subrange of [0, 16].
    #[inline]
    #[track_caller]
    pub unsafe fn mov_range(self, mut range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid Block128::load_range length: {} > {}",
            range.end,
            Self::SIZE
        );
        range.start = range.start.min(range.end);
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { Self::load_range(buf.as_ptr().add(range.start), range) }
    }
    /// Loads the bytes from ptr into to Block128 at the given range.
    /// For the range [a..b], the 'a'-th byte of Block128 will contain *ptr and the 'b'-th byte will contain *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    #[track_caller]
    pub unsafe fn load_range(ptr: *const u8, mut range: Range<usize>) -> Self {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid Block128::load_range length: {} > {}",
            range.end,
            Self::SIZE
        );
        range.start = range.start.min(range.end);
        let Range { start, end } = range;
        let mut buf = [0u8; Self::SIZE];
        unsafe { copy_nonoverlapping(ptr, buf.as_mut_ptr().add(start), end - start) };
        buf.into()
    }
    /// Stores bytes from Block128 within the given range into ptr.
    /// For the range [a..b], the 'a'-th byte of Block128 will be copied to *ptr and the 'b'-th byte will be copied to *(ptr + b - a).
    /// Unsafe since we require a subrange of [0..16] and because pointers are involved.
    #[inline]
    #[track_caller]
    pub unsafe fn store_range(self, ptr: *mut u8, mut range: Range<usize>) {
        debug_assert!(
            range.end <= Self::SIZE,
            "Invalid Block128::store_prefix length: {} > {}",
            range.end,
            Self::SIZE
        );
        range.start = range.start.min(range.end);
        let Range { start, end } = range;
        let buf: [u8; Self::SIZE] = self.into();
        unsafe { copy_nonoverlapping(buf.as_ptr().add(start), ptr, end - start) };
    }
    #[inline]
    pub fn select64<const IMM8: i32>(self, rhs: Block128) -> Self {
        todo!()
    }
    #[inline]
    pub fn shuffle8(self, shuffle: impl Into<Block128>) -> Self {
        todo!()
    }
    #[inline]
    pub fn shuffle32<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn add32(self, other: impl Into<Self>) -> Self {
        todo!()
    }
    #[inline]
    pub fn left_bitshift64<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn right_bitshift64<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn left_byteshift<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn right_byteshift<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn shift_left32<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn shift_right32<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn rotate_right32<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn unpacklo64(self, other: Block128) -> Self {
        todo!()
    }
    #[inline]
    pub fn unpackhi64(self, other: Block128) -> Self {
        todo!()
    }
    #[inline]
    pub fn unpacklo32(self, other: Block128) -> Self {
        todo!()
    }
    #[inline]
    pub fn unpackhi32(self, other: Block128) -> Self {
        todo!()
    }
    #[inline]
    pub fn blend8(self, other: Self, mask: impl Into<Self>) -> Self {
        todo!()
    }
    #[inline]
    pub fn blend32<const IMM8: i32>(self, other: Self) -> Self {
        todo!()
    }
    #[inline]
    pub fn cmpgt32(self, other: Block128) -> Self {
        todo!()
    }
    #[inline]
    pub fn byte_reverse(self) -> Block128 {
        self.shuffle8([0x0c0d0e0f, 0x08090a0b, 0x04050607, 0x00010203])
    }
    #[inline]
    pub fn aeskeygenassist<const IMM8: i32>(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn aesenc(self, round_key: Self) -> Self {
        todo!()
    }
    #[inline]
    pub fn aesenclast(self, round_key: Self) -> Self {
        todo!()
    }
    #[inline]
    pub fn aesdec(self, round_key: Self) -> Self {
        todo!()
    }
    #[inline]
    pub fn aesdeclast(self, round_key: Self) -> Self {
        todo!()
    }
    #[inline]
    pub fn aesimc(self) -> Self {
        todo!()
    }
    #[inline]
    pub fn clmul<const IMM8: i32>(self, other: Self) -> Self {
        todo!()
    }
    #[inline]
    pub fn align<const IMM8: i32>(self, other: Self) -> Self {
        todo!()
    }
}
