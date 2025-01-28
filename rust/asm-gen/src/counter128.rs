// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::intrinsics::m128i::M128i;
use crate::intrinsics::m256i::M256i;

#[repr(C)]
#[derive(Default, Clone)]
pub struct Counter128(M128i);
impl From<M128i> for Counter128 {
    #[inline]
    fn from(ctr: M128i) -> Self {
        Self(ctr)
    }
}
impl From<Counter128> for M128i {
    #[inline]
    fn from(ctr: Counter128) -> Self {
        ctr.0
    }
}
impl Counter128 {
    #[inline]
    pub fn increment(&mut self) -> M128i {
        let ctr = self.0;
        self.0 = ctr.add32([1, 0, 0, 0]);
        ctr
    }
    #[allow(clippy::needless_range_loop)]
    #[inline]
    pub fn increment_traunch<const N: usize>(&mut self) -> [M128i; N] {
        let mut traunch = [self.0; N];
        for i in 1..N {
            traunch[i] = self.0.add32([i as u32, 0, 0, 0]);
        }
        self.0 = self.0.add32([N as u32, 0, 0, 0]);
        traunch
    }
    #[allow(clippy::needless_range_loop)]
    #[inline]
    pub fn increment_traunch_256<const N: usize>(&mut self) -> [M256i; N] {
        let mut traunch = [M256i::default(); N];
        for i in 0..N {
            traunch[i] = M256i::from([
                self.0.add32([(2 * i) as u32, 0, 0, 0]),
                self.0.add32([(2 * i + 1) as u32, 0, 0, 0]),
            ]);
        }
        self.0 = self.0.add32([2 * N as u32, 0, 0, 0]);
        traunch
    }
}

#[repr(C)]
#[derive(Default, Clone)]
pub struct CounterBe128(M128i);
impl From<M128i> for CounterBe128 {
    #[inline]
    fn from(ctr: M128i) -> Self {
        Self(ctr.byte_reverse())
    }
}
impl From<CounterBe128> for M128i {
    #[inline]
    fn from(ctr: CounterBe128) -> Self {
        ctr.0.byte_reverse()
    }
}
impl CounterBe128 {
    #[inline]
    pub fn increment(&mut self) -> M128i {
        let ctr = self.0.byte_reverse();
        self.0 = self.0.add32([1, 0, 0, 0]);
        ctr
    }
    #[inline]
    pub fn increment_traunch<const N: usize>(&mut self) -> [M128i; N] {
        let mut traunch = [self.0.byte_reverse(); N];
        #[allow(clippy::needless_range_loop)]
        for i in 1..N {
            traunch[i] = self.0.add32([i as u32, 0, 0, 0]).byte_reverse();
        }
        self.0 = self.0.add32([N as u32, 0, 0, 0]);
        traunch
    }
}
