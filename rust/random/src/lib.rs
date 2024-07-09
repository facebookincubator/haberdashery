// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod randomizable;
pub use randomizable::Randomizable;

pub fn slice(buf: &mut [u8]) {
    getrandom::getrandom(buf).unwrap();
}
pub fn array<const N: usize>() -> [u8; N] {
    let mut result = [0u8; N];
    slice(&mut result);
    result
}
pub fn vec(len: usize) -> Vec<u8> {
    let mut result = vec![0u8; len];
    slice(&mut result);
    result
}
pub fn usize() -> usize {
    usize::from_le_bytes(array())
}
pub fn u64() -> u64 {
    u64::from_le_bytes(array())
}
pub fn u32() -> u32 {
    u32::from_le_bytes(array())
}
pub fn u16() -> u16 {
    u16::from_le_bytes(array())
}
pub fn u8() -> u8 {
    u8::from_le_bytes(array())
}
pub fn i64() -> i64 {
    i64::from_le_bytes(array())
}
pub fn i32() -> i32 {
    i32::from_le_bytes(array())
}
pub fn i16() -> i16 {
    i16::from_le_bytes(array())
}
pub fn i8() -> i8 {
    i8::from_le_bytes(array())
}

pub fn random<T: Randomizable>() -> T {
    T::random()
}
