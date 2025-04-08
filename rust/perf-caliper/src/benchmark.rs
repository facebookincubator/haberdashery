// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::Index;
use core::time::Duration;
use std::collections::BTreeMap;
use std::time::Instant;

use perf_counters::counters::Counters;
use perf_counters::counters::CountersElapsed;

use crate::flags;
use crate::measure::MeasureImpl;

#[linkme::distributed_slice]
pub static BENCHMARKS: [BenchmarkLink];

pub struct BenchmarkLink {
    pub path: &'static str,
    pub operation: &'static str,
    pub function: BenchmarkFunction,
    pub metadata: &'static [(&'static str, &'static str)],
}

pub enum BenchmarkFunction {
    Single(fn(u64, &mut dyn crate::Measure)),
    WithLength(fn(usize, u64, &mut dyn crate::Measure)),
}

pub struct Benchmark<'a> {
    measure: MeasureImpl<'a>,
    bench: &'a BenchmarkEnum,
    iters: u64,
}
impl<'a> Benchmark<'a> {
    pub fn new(counters: &'a Counters, bench: &'a BenchmarkEnum) -> Self {
        let mut measure = MeasureImpl::new(counters);
        if !*flags::BENCH || *flags::DRY_RUN {
            return Self {
                measure,
                bench,
                iters: 1,
            };
        }
        let duration = flags::runtime();
        let start = Instant::now();
        let mut iter_per = ItersPerDuration::new(duration);
        while start.elapsed() < 2 * duration {
            iter_per.recalibrate(bench, &mut measure);
        }
        Self {
            measure,
            bench,
            iters: iter_per.iters,
        }
    }
    pub fn run(&mut self, results: &mut BenchmarkResult) {
        self.bench.run(self.iters, &mut self.measure);
        results.push(self.measure.elapsed.take().unwrap());
    }
    pub fn run_first(&mut self) -> BenchmarkResult {
        self.bench.run(self.iters, &mut self.measure);
        BenchmarkResult::new(self.bench, self.measure.elapsed.take().unwrap(), self.iters)
    }
    pub fn iters(&self) -> u64 {
        self.iters
    }
    pub fn get<'b>(&'b self, key: &str) -> Option<&'b str> {
        self.bench.get(key)
    }
    pub fn metadata(&self) -> BTreeMap<String, String> {
        let mut metadata: BTreeMap<String, String> = self.bench.into();
        metadata.insert("iterations".to_string(), self.iters.to_string());
        metadata
    }
}
pub struct ItersPerDuration {
    duration: Duration,
    iters: u64,
}
impl ItersPerDuration {
    pub fn new(duration: Duration) -> Self {
        Self {
            duration,
            iters: flags::MIN_ITERS.value(),
        }
    }
    pub fn recalibrate(&mut self, bench: &BenchmarkEnum, measure: &mut MeasureImpl) {
        measure.reset();
        bench.run(self.iters, measure);
        let duration = measure.elapsed.take().unwrap().duration;
        let ns_per_iter = duration.as_nanos() as f64 / self.iters as f64;
        let iters = self.duration.as_nanos() as f64 / ns_per_iter;
        let iters = iters as u64;
        let iters = iters.min(self.iters * 100);
        self.iters = (iters as u64).max(flags::MIN_ITERS.value());
    }
}

#[derive(Copy, Clone)]
pub struct BenchmarkEnum {
    bench: &'static BenchmarkLink,
    length: Option<usize>,
}
impl BenchmarkEnum {
    pub fn run(&self, iterations: u64, measure: &mut MeasureImpl) {
        match self.bench.function {
            BenchmarkFunction::Single(func) => (func)(iterations, measure),
            BenchmarkFunction::WithLength(func) => {
                (func)(self.length.unwrap(), iterations, measure)
            }
        }
    }
    pub fn is_match(&self, values: Vec<&str>, key: &str) -> bool {
        if values.is_empty() {
            return true;
        }
        let Some(value) = self.get(key) else {
            return false;
        };
        values.contains(&value)
    }
    pub fn is_match_or_none(&self, values: Vec<&str>, key: &str) -> bool {
        if values.is_empty() {
            return true;
        }
        let Some(value) = self.get(key) else {
            return true;
        };
        values.contains(&value)
    }
    fn metadata_internal(&self) -> &'static [(&'static str, &'static str)] {
        self.bench.metadata
    }
    fn path(&self) -> &'static str {
        self.bench.path
    }
    fn operation(&self) -> &'static str {
        self.bench.operation
    }
    pub fn get<'a>(&'a self, key: &str) -> Option<&'a str> {
        for kv in self.metadata_internal() {
            if kv.0 == key {
                return Some(kv.1);
            }
        }
        match key {
            "path" => Some(self.path()),
            "operation" => Some(self.operation()),
            _ => None,
        }
    }
    pub fn length(&self) -> Option<usize> {
        self.length
    }
}
impl From<&BenchmarkEnum> for BTreeMap<String, String> {
    fn from(bench: &BenchmarkEnum) -> Self {
        let mut metadata: BTreeMap<String, String> = bench
            .metadata_internal()
            .iter()
            .map(|(k, v)| (k.to_string(), v.to_string()))
            .collect();
        if !metadata.contains_key("path") {
            metadata.insert("path".into(), bench.path().into());
        }
        if !metadata.contains_key("operation") {
            metadata.insert("operation".into(), bench.operation().into());
        }
        if let Some(length) = bench.length() {
            metadata.insert("length".into(), length.to_string());
        }
        metadata
    }
}
impl Index<&str> for BenchmarkEnum {
    type Output = str;
    #[track_caller]
    fn index(&self, key: &str) -> &str {
        match self.get(key) {
            Some(value) => value,
            None => panic!("key not found: {key}"),
        }
    }
}
pub fn benchmarks(lengths: &[usize]) -> Vec<BenchmarkEnum> {
    let mut result = vec![];
    for bench in BENCHMARKS {
        match bench.function {
            BenchmarkFunction::Single(_) => result.push(BenchmarkEnum {
                bench,
                length: None,
            }),
            BenchmarkFunction::WithLength(_) => {
                for &length in lengths {
                    result.push(BenchmarkEnum {
                        bench,
                        length: Some(length),
                    });
                }
            }
        }
    }
    result
}
pub struct BenchmarkResult {
    metadata: BTreeMap<String, String>,
    perf_data: Vec<CountersElapsed>,
    length: Option<usize>,
    iters: u64,
    norm: u64,
}
impl BenchmarkResult {
    pub fn new(bench: &BenchmarkEnum, perf_datum: CountersElapsed, iters: u64) -> Self {
        Self {
            metadata: bench.into(),
            perf_data: vec![perf_datum],
            length: bench.length(),
            iters,
            norm: bench.length().unwrap_or_default().max(1) as u64,
        }
    }
    pub fn push(&mut self, perf_datum: CountersElapsed) {
        self.perf_data.push(perf_datum);
    }
    pub fn metadata(&self) -> &BTreeMap<String, String> {
        &self.metadata
    }
    pub fn metadata_mut(&mut self) -> &mut BTreeMap<String, String> {
        &mut self.metadata
    }
    pub fn perf(&self) -> CountersElapsed<f64> {
        let mut min = self.perf_data.first().unwrap();
        for perf in self.perf_data.iter().skip(1) {
            if perf.rdtsc < min.rdtsc {
                min = perf;
            }
        }
        min / (self.norm as f64 * self.iters as f64)
    }
    pub fn iters(&self) -> u64 {
        self.iters
    }
    pub fn runs(&self) -> usize {
        self.perf_data.len()
    }
    pub fn length(&self) -> Option<usize> {
        self.length
    }
}
