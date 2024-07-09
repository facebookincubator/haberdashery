// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline(always)]
fn rdtsc() -> u64 {
    unsafe { core::arch::x86_64::_rdtsc() }
}

pub struct Rdtsc(u64);
impl Default for Rdtsc {
    #[inline(always)]
    fn default() -> Self {
        Self::new()
    }
}
impl Rdtsc {
    #[inline(always)]
    pub fn new() -> Self {
        Self(rdtsc())
    }
    #[inline(always)]
    pub fn elapsed(&self) -> u64 {
        rdtsc().wrapping_sub(self.0)
    }
}
