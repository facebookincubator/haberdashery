// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline(always)]
fn rdtscp() -> (u64, u32) {
    let mut core = 0;
    let counter = unsafe { core::arch::x86_64::__rdtscp(&mut core) };
    (counter, core)
}

pub struct Rdtscp {
    counter: u64,
    core: u32,
}
impl Default for Rdtscp {
    #[inline(always)]
    fn default() -> Self {
        Self::new()
    }
}
impl Rdtscp {
    #[inline(always)]
    pub fn new() -> Self {
        let (counter, core) = rdtscp();
        Self { counter, core }
    }
    #[inline(always)]
    pub fn elapsed(&self) -> RdtscpResult {
        let (counter, end_core) = rdtscp();
        let elapsed = counter.wrapping_sub(self.counter);
        RdtscpResult {
            elapsed,
            start_core: self.core,
            end_core,
        }
    }
}
pub struct RdtscpResult {
    pub elapsed: u64,
    pub start_core: u32,
    pub end_core: u32,
}
