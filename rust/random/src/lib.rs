// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod randomizable;
#[cfg(target_arch = "x86_64")]
mod x86;
pub use crate::randomizable::Randomizable;
#[cfg(target_arch = "x86_64")]
pub use crate::x86::*;

pub fn slice(buf: &mut [u8]) {
    getrandom::fill(buf).unwrap();
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
pub fn random<T: Randomizable>() -> T {
    T::random()
}

pub fn usize() -> usize {
    Randomizable::random()
}
pub fn u64() -> u64 {
    Randomizable::random()
}
pub fn u32() -> u32 {
    Randomizable::random()
}
pub fn u16() -> u16 {
    Randomizable::random()
}
pub fn u8() -> u8 {
    Randomizable::random()
}
pub fn i64() -> i64 {
    Randomizable::random()
}
pub fn i32() -> i32 {
    Randomizable::random()
}
pub fn i16() -> i16 {
    Randomizable::random()
}
pub fn i8() -> i8 {
    Randomizable::random()
}
