// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::_rdtsc;

use crate::measure::StartStop;

#[inline(always)]
fn cycles() -> u64 {
    unsafe { _rdtsc() }
}

pub struct RdtscStart(u64);
impl RdtscStart {
    #[inline(always)]
    fn new() -> Self {
        Self(cycles())
    }
    #[inline(always)]
    fn elapsed(&self) -> u64 {
        cycles().wrapping_sub(self.0)
    }
}
pub struct Rdtsc;
impl StartStop for Rdtsc {
    type Start = RdtscStart;
    type Value = u64;
    type Error = core::convert::Infallible;

    #[inline(always)]
    fn start() -> Result<Self::Start, Self::Error> {
        Ok(RdtscStart::new())
    }
    #[inline(always)]
    fn stop(start: Self::Start) -> Result<Self::Value, Self::Error> {
        Ok(start.elapsed())
    }
}
