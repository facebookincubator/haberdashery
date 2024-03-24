// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::time::Duration;

use units::duration::*;

#[derive(Clone, Copy)]
pub struct Config {
    pub warmup_time: Duration,
    pub benchmark_time: Duration,
    pub runs: u64,
    pub start_iters: u64,
}
#[cfg(not(debug_assertions))]
impl Default for Config {
    fn default() -> Self {
        Self {
            warmup_time: 100.ms(),
            benchmark_time: 1000.ms(),
            runs: 10,
            start_iters: 100,
        }
    }
}
#[cfg(debug_assertions)]
impl Default for Config {
    fn default() -> Self {
        Self {
            warmup_time: 1.ms(),
            benchmark_time: 1.ms(),
            runs: 1,
            start_iters: 1,
        }
    }
}
#[cfg(not(debug_assertions))]
impl Config {
    pub fn warmup_time(mut self, warmup_time: Duration) -> Self {
        self.warmup_time = warmup_time;
        self
    }
    pub fn benchmark_time(mut self, benchmark_time: Duration) -> Self {
        self.benchmark_time = benchmark_time;
        self
    }
    pub fn runs(mut self, runs: u64) -> Self {
        self.runs = runs;
        self
    }
    pub fn start_iters(mut self, start_iters: u64) -> Self {
        self.start_iters = start_iters;
        self
    }
}
#[cfg(debug_assertions)]
impl Config {
    pub fn warmup_time(self, _warmup_time: Duration) -> Self {
        self
    }
    pub fn benchmark_time(self, _benchmark_time: Duration) -> Self {
        self
    }
    pub fn runs(self, _runs: u64) -> Self {
        self
    }
    pub fn start_iters(self, _start_iters: u64) -> Self {
        self
    }
}
