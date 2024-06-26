// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;

use crate::benchmark::Benchmark;
use crate::config::Config;
use crate::measure::Metric;
use crate::measure::PerfEventCycles;
use crate::measure::Rdtsc;
use crate::report::Report;
use crate::report::ReportMetadata;
use crate::runner::Runner;
use crate::thread_pool::ThreadPool;

pub struct Suite {
    runners: Vec<(ReportMetadata, Box<dyn Runner>)>,
    metric: Metric,
}
impl Suite {
    pub fn new(metric: Metric) -> Self {
        Self {
            runners: vec![],
            metric,
        }
    }
    pub fn insert(&mut self, metadata: ReportMetadata, runner: Box<dyn Runner>) {
        self.runners.push((metadata, runner));
    }
    pub fn run(
        self,
        pool: &mut ThreadPool<Option<Report>>,
        config: Config,
        filter: &BTreeMap<String, String>,
    ) {
        for (metadata, runner) in self.runners {
            if metadata.matches(filter) {
                match self.metric {
                    Metric::Rdtsc => {
                        pool.add(move || {
                            let mut benchmark = Benchmark::warmup(runner, &config)?;
                            for _ in 0..config.runs {
                                let _report = benchmark.run::<Rdtsc>();
                            }
                            Some(benchmark.report(metadata))
                        });
                    }
                    _ => {
                        pool.add(move || {
                            let mut benchmark = Benchmark::warmup(runner, &config)?;
                            for _ in 0..config.runs {
                                let _report = benchmark.run::<PerfEventCycles>();
                            }
                            Some(benchmark.report(metadata))
                        });
                    }
                }
            }
        }
    }
    pub fn split_by(self, key: &str) -> Vec<Suite> {
        let mut map: BTreeMap<Option<String>, Suite> = BTreeMap::default();
        for (metadata, runner) in self.runners {
            let value = metadata.get(key).map(str::to_string);
            match map.get_mut(&value) {
                Some(suite) => suite.insert(metadata, runner),
                None => {
                    _ = map.insert(
                        value,
                        Suite {
                            runners: vec![(metadata, runner)],
                            metric: self.metric,
                        },
                    )
                }
            }
        }
        map.into_values().collect()
    }
}
