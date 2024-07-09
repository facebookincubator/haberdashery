// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use perf_counters::counters::Counters;
use perf_counters::counters::CountersElapsed;
use perf_counters::counters::CountersStart;

pub struct Measure<'a> {
    counters: &'a Counters,
    start_counters: Option<CountersStart<'a>>,
    pub elapsed: Option<CountersElapsed>,
}
impl<'a> Measure<'a> {
    pub fn new(counters: &'a Counters) -> Self {
        Self {
            counters,
            start_counters: None,
            elapsed: None,
        }
    }
    pub fn reset(&mut self) {
        self.start_counters = None;
        self.elapsed = None;
    }
}
impl<'a> nano_bench::Measure for Measure<'a> {
    fn start(&mut self) {
        self.start_counters = Some(self.counters.start());
    }
    fn stop(&mut self) {
        self.elapsed = Some(self.start_counters.take().unwrap().elapsed())
    }
    fn skip(&mut self) {
        panic!("unimplemented");
    }
}
