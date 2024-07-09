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

use nano_bench::linkme::BenchmarkLink;
use nano_bench::linkme::LengthBenchmarkLink;
use nano_bench::linkme::BENCHMARKS;
use nano_bench::linkme::LENGTH_BENCHMARKS;
use perf_counters::counters::Counters;
use perf_counters::counters::CountersElapsed;

use crate::flags;
use crate::measure::Measure;

pub struct Benchmark<'a> {
    measure: Measure<'a>,
    bench: &'a BenchmarkEnum,
    iters: u64,
}
impl<'a> Benchmark<'a> {
    pub fn new(counters: &'a Counters, bench: &'a BenchmarkEnum) -> Self {
        let mut measure = Measure::new(counters);
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
    pub fn recalibrate(&mut self, bench: &BenchmarkEnum, measure: &mut Measure) {
        measure.reset();
        bench.run(self.iters, measure);
        let duration = measure.elapsed.take().unwrap().duration;
        let ns_per_iter = duration.as_nanos() as f64 / self.iters as f64;
        let iters = self.duration.as_nanos() as f64 / ns_per_iter;
        self.iters = (iters as u64).max(flags::MIN_ITERS.value());
    }
}

pub enum BenchmarkEnum {
    Benchmark(&'static BenchmarkLink),
    LengthBenchmark(&'static LengthBenchmarkLink, usize),
}
impl BenchmarkEnum {
    pub fn run(&self, iterations: u64, measure: &mut Measure) {
        match self {
            Self::Benchmark(bench) => (bench.function)(iterations, measure),
            Self::LengthBenchmark(bench, length) => (bench.function)(*length, iterations, measure),
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
        match self {
            Self::Benchmark(bench) => bench.metadata,
            Self::LengthBenchmark(bench, _) => bench.metadata,
        }
    }
    fn path(&self) -> &'static str {
        match self {
            Self::Benchmark(bench) => bench.path,
            Self::LengthBenchmark(bench, _) => bench.path,
        }
    }
    fn operation(&self) -> &'static str {
        match self {
            Self::Benchmark(bench) => bench.operation,
            Self::LengthBenchmark(bench, _) => bench.operation,
        }
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
        match self {
            Self::Benchmark(_) => None,
            Self::LengthBenchmark(_, length) => Some(*length),
        }
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
    let mut result: Vec<BenchmarkEnum> = BENCHMARKS.iter().map(BenchmarkEnum::Benchmark).collect();
    for bench in LENGTH_BENCHMARKS {
        for &length in lengths {
            result.push(BenchmarkEnum::LengthBenchmark(bench, length));
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
