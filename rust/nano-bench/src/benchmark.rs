// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::time::Duration;

use crate::config::Config;
use crate::measure::wallclock::Wallclock;
use crate::measure::MeasureState;
use crate::measure::StartStop;
use crate::report::Report;
use crate::report::ReportMetadata;
use crate::runner::Runner;

pub struct Benchmark {
    runner: Box<dyn Runner>,
    iters: u64,
    measurements: Vec<u64>,
}
impl Benchmark {
    pub fn warmup(runner: Box<dyn Runner>, config: &Config) -> Option<Self> {
        let mut time = MeasureState::<Wallclock>::default();
        runner.run(config.start_iters, &mut time);
        if let MeasureState::Skip = time {
            return None;
        }
        let mut iters_per_duration = ItersPerDuration::new(config.start_iters, &time);
        while iters_per_duration.duration < config.warmup_time / 2 {
            let iters = iters_per_duration.iters(config.warmup_time);
            runner.run(iters, &mut time);
            iters_per_duration = ItersPerDuration::new(iters, &time);
        }
        let iters = iters_per_duration.iters(config.warmup_time);
        if iters > iters_per_duration.iters {
            runner.run(iters, &mut time);
            iters_per_duration = ItersPerDuration::new(iters, &time);
        }

        Some(Self {
            runner,
            iters: iters_per_duration.iters(config.benchmark_time) / config.runs,
            measurements: Vec::default(),
        })
    }
    pub fn run<T: StartStop<Value = u64>>(&mut self) -> u64 {
        let mut measure = MeasureState::<T>::default();
        self.runner.run(self.iters, &mut measure);
        let measurement = measure.value().unwrap();
        self.measurements.push(measurement);
        measurement
    }
    pub fn report(&self, metadata: ReportMetadata) -> Report {
        Report::new(self.iters, metadata, &self.measurements)
    }
}

#[derive(Clone, Copy)]
struct ItersPerDuration {
    pub iters: u64,
    pub duration: Duration,
}
impl ItersPerDuration {
    pub fn new(iters: u64, measure: &MeasureState<Wallclock>) -> Self {
        Self {
            iters,
            duration: measure.value().unwrap(),
        }
    }
    pub fn iters(self, duration: Duration) -> u64 {
        ((self.iters as u128 * duration.as_nanos()) / self.duration.as_nanos()) as u64
    }
}
