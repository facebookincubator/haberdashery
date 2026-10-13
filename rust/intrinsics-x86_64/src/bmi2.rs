// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline]
pub fn _bzhi_u64(a: u64, index: u32) -> u64 {
    unsafe { core::arch::x86_64::_bzhi_u64(a, index) }
}
