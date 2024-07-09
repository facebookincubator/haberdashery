// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

extern crate haberdashery_lib;

use std::collections::BTreeMap;

use perf_caliper::benchmark::benchmarks;
use perf_caliper::benchmark::Benchmark;
use perf_caliper::benchmark::BenchmarkEnum;
use perf_caliper::counters::counters;
use perf_caliper::table::Table;
use perf_events::Event;

mod flags {
    sflags::define! {
        --verbose: Option<usize>;
        --print: &str = "";
        --csv_out: Option<String>;
        --runs: u64 = 10;
        --length: Vec<String>;
        --lib: Vec<String>;
        --alg: Vec<String>;
        --op: Vec<String>;
        --profile: Vec<String>;
    }
    pub fn length() -> Vec<usize> {
        use units::bytes::*;
        match LENGTH.is_empty() {
            true => vec![0, 256.bytes(), 16.kb(), 64.kb(), 1.mb()],
            false => LENGTH
                .iter()
                .map(|s| units::Bytes::try_from(s).unwrap().into())
                .collect(),
        }
    }
    pub fn lib() -> Vec<&'static str> {
        LIB.iter().map(|s| s.as_str()).collect()
    }
    pub fn alg() -> Vec<&'static str> {
        ALG.iter().map(|s| s.as_str()).collect()
    }
    pub fn op() -> Vec<&'static str> {
        OP.iter().map(|s| s.as_str()).collect()
    }
    pub fn profile() -> Vec<&'static str> {
        match PROFILE.is_empty() {
            true => vec![cpuid::processor().canonical_name()],
            false => PROFILE.iter().map(|s| s.as_str()).collect(),
        }
    }
    pub fn verbose() -> usize {
        if let Some(v) = VERBOSE.as_ref() {
            // If the verbose flag was set, use that value
            *v
        } else if !PRINT.is_empty() {
            // If explicit print columns were set, default to minimum
            1
        } else if !*perf_caliper::flags::BENCH {
            // If we're not benchmarking, default to quiet
            0
        } else if *perf_caliper::flags::DRY_RUN {
            // If we're in a dry run, default to quiet
            0
        } else {
            // Otherwise, default to minimal benchmarking
            1
        }
    }
}

fn main() {
    sflags::parse_exact();
    let counters = counters();
    let benchmarks: Vec<BenchmarkEnum> = benchmarks(&flags::length())
        .into_iter()
        .filter(|bench| bench.is_match(flags::lib(), "library"))
        .filter(|bench| bench.is_match(flags::alg(), "algorithm"))
        .filter(|bench| bench.is_match(flags::op(), "operation"))
        .filter(|bench| bench.is_match_or_none(flags::profile(), "profile"))
        .collect();
    let mut table = Table::default();
    table.show_metadata("library");
    table.show_metadata("algorithm");
    table.show_metadata("operation");
    for column in flags::PRINT.split(',') {
        match column.strip_suffix('%') {
            Some(column) => table.show_percent(column),
            None => table.show_metadata(column),
        }
    }
    for event in counters.events() {
        if event != Event::Cycles {
            table.show_percent(event.name());
        }
    }
    table.show_metric("cycles");
    if flags::verbose() == 1 {
        table.print_on_add(&benchmarks);
    }

    for bench in benchmarks {
        let mut bench = Benchmark::new(&counters, &bench);
        let mut results = bench.run_first();
        for _i in 0..flags::RUNS.value() - 1 {
            bench.run(&mut results);
        }
        match flags::verbose() {
            2 => {
                let metadata = bench.metadata();
                for (key, value) in metadata.iter() {
                    println!("{key:>25} : {value}");
                }
                let perf: BTreeMap<String, String> = results.perf().into();
                for (key, value) in perf {
                    println!("{value:>25} : {key}");
                }
                println!();
            }
            _ => {}
        }
        table.push(results);
    }
    if let Some(path) = flags::CSV_OUT.as_ref() {
        let processor = cpuid::processor();
        let cpu = format!("{:?} ({})", processor.model, processor.raw_model);
        let csv = perf_caliper::csv::Csv::new(table.results(), &[("cpu", &cpu)]);
        std::fs::write(path, csv.build()).unwrap();
    }
}
