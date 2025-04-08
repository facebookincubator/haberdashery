// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub struct HardwareClock(u64);

impl Default for HardwareClock {
    #[inline(always)]
    fn default() -> Self {
        Self::new()
    }
}
impl HardwareClock {
    #[inline(always)]
    pub fn new() -> Self {
        Self(counter())
    }
    #[inline(always)]
    pub fn elapsed(&self) -> u64 {
        counter().wrapping_sub(self.0)
    }
}

#[inline(always)]
fn counter() -> u64 {
    let counter: u64;
    unsafe {
        core::arch::asm!(
            "mrs {counter}, cntvct_el0",
            counter = out(reg) counter,
            options(
                nomem,
                nostack,
                preserves_flags,
            ),
        );
    }
    counter
}
