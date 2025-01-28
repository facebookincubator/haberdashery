// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::__m128i;
use core::arch::x86_64::__m256i;
use core::arch::x86_64::__m512i;
use core::mem::size_of;
use core::mem::transmute;

use crate::array;
use crate::randomizable::Randomizable;

impl Randomizable for __m128i {
    fn random() -> Self {
        unsafe { transmute(array::<{ size_of::<__m128i>() }>()) }
    }
}
impl Randomizable for __m256i {
    fn random() -> Self {
        unsafe { transmute(array::<{ size_of::<__m256i>() }>()) }
    }
}
impl Randomizable for __m512i {
    fn random() -> Self {
        unsafe { transmute(array::<{ size_of::<__m512i>() }>()) }
    }
}

pub fn __m128i() -> __m128i {
    Randomizable::random()
}
pub fn __m256i() -> __m256i {
    Randomizable::random()
}
pub fn __m512i() -> __m512i {
    Randomizable::random()
}
