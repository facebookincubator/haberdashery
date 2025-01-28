// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;
use std::collections::BTreeSet;

use perf_events::Event;

use crate::benchmark::benchmarks;
use crate::benchmark::Benchmark;
use crate::benchmark::BenchmarkEnum;
use crate::counters::counters;
use crate::csv::Csv;
use crate::perf::PerfControl;
use crate::table::Table;

mod flags {
    sflags::define! {
        --verbose: Option<usize>;
        --print: &str = "";
        --csv_out: Option<String>;
        --csv_in: Option<String>;
        --md_out: Option<String>;
        --runs: u64 = 10;
        --length: Vec<String>;
        --lib: Vec<String>;
        --alg: Vec<String>;
        --op: Vec<String>;
        --profile: Vec<String>;
        --by_alg: bool = false;
        --version_filter: bool = false;
        --perf: Option<i32>;
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
        } else if !*crate::flags::BENCH {
            // If we're not benchmarking, default to quiet
            0
        } else if *crate::flags::DRY_RUN {
            // If we're in a dry run, default to quiet
            0
        } else {
            // Otherwise, default to minimal benchmarking
            1
        }
    }
}

pub fn main(metadata_mod: Option<fn(&mut BTreeMap<String, String>)>) {
    sflags::parse_exact();
    let benchmarks: Vec<BenchmarkEnum> = benchmarks(&flags::length())
        .into_iter()
        .filter(|bench| bench.is_match(flags::lib(), "library"))
        .filter(|bench| bench.is_match(flags::alg(), "algorithm"))
        .filter(|bench| bench.is_match(flags::op(), "operation"))
        .filter(|bench| bench.is_match_or_none(flags::profile(), "profile"))
        .collect();
    if benchmarks.is_empty() {
        println!("No benchmarks");
        return;
    }
    if flags::BY_ALG.value() {
        let algs: BTreeSet<&str> = benchmarks
            .iter()
            .filter_map(|b| b.get("algorithm"))
            .collect();
        for alg in algs {
            let benchmarks: Vec<BenchmarkEnum> = benchmarks
                .iter()
                .filter(|bench| bench.get("algorithm") == Some(alg))
                .copied()
                .collect();
            benchmark(&benchmarks, metadata_mod);
        }
    } else {
        benchmark(&benchmarks, metadata_mod);
    }
}
fn benchmark(
    benchmarks: &[BenchmarkEnum],
    metadata_mod: Option<fn(&mut BTreeMap<String, String>)>,
) {
    let processor = cpuid::processor();
    let counters = counters();
    let mut perf_control = flags::PERF.map(|fd| unsafe { PerfControl::from_raw_fd(fd) });
    let filename = {
        let mut names: Vec<&str> = vec![];
        let libs = benchmarks
            .iter()
            .filter_map(|b| b.get("library"))
            .collect::<BTreeSet<&str>>();
        if libs.len() == 1 {
            names.push(libs.first().unwrap());
        }
        let algs = benchmarks
            .iter()
            .filter_map(|b| b.get("algorithm"))
            .collect::<BTreeSet<&str>>();
        if algs.len() == 1 {
            names.push(algs.first().unwrap());
        }
        names.push(processor.canonical_name());
        names.join("_")
    };
    let csv_out = flags::CSV_OUT.as_ref().map(|path| {
        let path = std::path::PathBuf::from(&path);
        match path.is_dir() {
            true => path.join(format!("{filename}.csv")),
            false => path,
        }
    });
    let csv_in = flags::CSV_IN
        .as_ref()
        .map(|path| std::path::PathBuf::from(&path))
        .or_else(|| csv_out.clone());
    let reference = csv_in
        .and_then(|path| std::fs::read_to_string(path).ok())
        .map(|csv| Csv::from(&csv));

    let mut version = None;
    if let Some(csv) = &reference {
        let versions = csv.get_unique_cells_by_column("version");
        if flags::VERSION_FILTER.value() && versions.len() == 1 {
            version = versions.first().map(|s| s.to_string());
        }
    }
    let reference = reference
        .map(|csv| csv.path_cycle_map())
        .unwrap_or_default();
    let mut table = Table::new(reference);
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

    let mut header_printed = false;
    for bench in benchmarks {
        let mut bench = Benchmark::new(&counters, &bench);
        if let Some(perf) = perf_control.as_mut() {
            perf.enable();
            bench.run_first();
            perf.disable();
            continue;
        }
        let mut results = bench.run_first();
        if let Some(metadata_mod) = metadata_mod {
            metadata_mod(results.metadata_mut());
        }
        if flags::VERSION_FILTER.value() && version.as_ref() == results.metadata().get("version") {
            println!("skipping {}", results.metadata().get("algorithm").unwrap());
            return;
        }
        if !header_printed && flags::verbose() == 1 {
            table.print_on_add(benchmarks);
            header_printed = true;
        }
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
    let cpu = format!("{:?} ({})", processor.model, processor.raw_model);
    let csv = Csv::new(table.results(), &[("cpu", &cpu)]);
    if let Some(path) = csv_out {
        std::fs::write(path, csv.build()).unwrap();
    }
    if let Some(path) = flags::MD_OUT.as_ref() {
        let mut path = std::path::PathBuf::from(&path);
        if path.is_dir() {
            path = path.join(format!("{filename}.md"));
        }
        std::fs::write(path, crate::md::to_markdown(&csv)).unwrap();
    }
}
