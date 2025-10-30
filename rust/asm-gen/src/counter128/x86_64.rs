// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::block::Block128;
use crate::block::Block256;
use crate::block::Block512;

#[repr(C)]
#[derive(Default, Clone)]
pub struct Counter128(Block128);
impl From<Block128> for Counter128 {
    #[inline]
    fn from(ctr: Block128) -> Self {
        Self(ctr)
    }
}
impl From<Counter128> for Block128 {
    #[inline]
    fn from(ctr: Counter128) -> Self {
        ctr.0
    }
}
impl Counter128 {
    #[inline]
    pub fn increment(&mut self) -> Block128 {
        let ctr = self.0;
        self.0 = ctr.add32([1, 0, 0, 0]);
        ctr
    }
    #[allow(clippy::needless_range_loop)]
    #[inline]
    pub fn increment_traunch<const N: usize>(&mut self) -> [Block128; N] {
        let mut traunch = [self.0; N];
        for i in 1..N {
            traunch[i] = self.0.add32([i as u32, 0, 0, 0]);
        }
        self.0 = self.0.add32([N as u32, 0, 0, 0]);
        traunch
    }
    #[allow(clippy::needless_range_loop)]
    #[inline]
    pub fn increment_traunch_256<const N: usize>(&mut self) -> [Block256; N] {
        let mut traunch = [Block256::default(); N];
        for i in 0..N {
            traunch[i] = Block256::from([
                self.0.add32([(2 * i) as u32, 0, 0, 0]),
                self.0.add32([(2 * i + 1) as u32, 0, 0, 0]),
            ]);
        }
        self.0 = self.0.add32([2 * N as u32, 0, 0, 0]);
        traunch
    }
    #[inline]
    pub fn increment_traunch_512<const N: usize>(&mut self) -> [Block512; N] {
        let traunch = core::array::from_fn(|i| {
            self.0.broadcast512().add32([
                4 * i as u32,
                0,
                0,
                0,
                4 * i as u32 + 1,
                0,
                0,
                0,
                4 * i as u32 + 2,
                0,
                0,
                0,
                4 * i as u32 + 3,
                0,
                0,
                0,
            ])
        });
        self.0 = self.0.add32([4 * N as u32, 0, 0, 0]);
        traunch
    }
}

#[repr(C)]
#[derive(Default, Clone)]
pub struct CounterBe128(Block128);
impl From<Block128> for CounterBe128 {
    #[inline]
    fn from(ctr: Block128) -> Self {
        Self(ctr.byte_reverse())
    }
}
impl From<CounterBe128> for Block128 {
    #[inline]
    fn from(ctr: CounterBe128) -> Self {
        ctr.0.byte_reverse()
    }
}
impl CounterBe128 {
    #[inline]
    pub fn increment(&mut self) -> Block128 {
        let ctr = self.0.byte_reverse();
        self.0 = self.0.add32([1, 0, 0, 0]);
        ctr
    }
    #[inline]
    pub fn increment_traunch<const N: usize>(&mut self) -> [Block128; N] {
        let mut traunch = [self.0.byte_reverse(); N];
        #[allow(clippy::needless_range_loop)]
        for i in 1..N {
            traunch[i] = self.0.add32([i as u32, 0, 0, 0]).byte_reverse();
        }
        self.0 = self.0.add32([N as u32, 0, 0, 0]);
        traunch
    }
}
