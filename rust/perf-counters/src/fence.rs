// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline(always)]
#[cfg(target_arch = "x86_64")]
pub fn fence() {
    unsafe { core::arch::x86_64::_mm_lfence() };
}
#[inline(always)]
#[cfg(not(target_arch = "x86_64"))]
pub fn fence() {}
