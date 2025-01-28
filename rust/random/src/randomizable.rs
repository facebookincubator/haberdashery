// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::array;

pub trait Randomizable {
    fn random() -> Self;
}
impl<const N: usize, T: Randomizable> Randomizable for [T; N] {
    fn random() -> Self {
        core::array::from_fn(|_| T::random())
    }
}
impl Randomizable for usize {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for u64 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for u32 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for u16 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for u8 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for i64 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for i32 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for i16 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
impl Randomizable for i8 {
    fn random() -> Self {
        Self::from_le_bytes(array())
    }
}
