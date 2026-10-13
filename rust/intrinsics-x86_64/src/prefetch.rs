// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub use core::arch::x86_64::_MM_HINT_ET0;
pub use core::arch::x86_64::_MM_HINT_T0;

/// `prefetch*` hint; never faults, so any address is allowed.
#[inline]
pub fn _mm_prefetch<const STRATEGY: i32>(p: *const u8) {
    unsafe { core::arch::x86_64::_mm_prefetch::<STRATEGY>(p.cast()) }
}

/// `sfence`: orders earlier stores, including non-temporal ones, before later ones.
#[inline]
pub fn _mm_sfence() {
    unsafe { core::arch::x86_64::_mm_sfence() }
}
