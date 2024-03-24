// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;
use std::fs::File;
use std::path::PathBuf;

use ::linkme::distributed_slice;
use clap::Parser;
use units::bytes::*;
use units::duration::*;

use crate::csv::Csv;
use crate::*;

#[distributed_slice]
pub static BENCHMARKS: [BenchmarkLink];

#[distributed_slice]
pub static LENGTH_BENCHMARKS: [LengthBenchmarkLink];

pub struct BenchmarkLink {
    pub path: &'static str,
    pub operation: &'static str,
    pub function: fn(u64, &mut dyn Measure),
    pub metadata: &'static [(&'static str, &'static str)],
}
pub struct LengthBenchmarkLink {
    pub path: &'static str,
    pub operation: &'static str,
    pub function: fn(usize, u64, &mut dyn Measure),
    pub metadata: &'static [(&'static str, &'static str)],
}

type ReportMetadataMod = fn(&mut ReportMetadata);

pub fn suite(metadata_mod: Option<ReportMetadataMod>, lengths: &[usize]) -> Suite {
    let mut suite = Suite::default();
    let processor = cpuid::processor();
    let cpu = format!("{:?} ({})", processor.model, processor.raw_model);
    for BenchmarkLink {
        path,
        operation,
        function,
        metadata,
    } in BENCHMARKS
    {
        let mut metadata = ReportMetadata::from(*metadata)
            .add("path", path.replace("::", "_"))
            .add("operation", operation)
            .add("cpu", cpu.clone());
        if let Some(metadata_mod) = metadata_mod {
            metadata_mod(&mut metadata);
        }
        suite.insert(metadata, Box::new(function));
    }
    for length in lengths {
        let length = *length;
        for LengthBenchmarkLink {
            path,
            operation,
            function,
            metadata,
        } in LENGTH_BENCHMARKS
        {
            let mut metadata = ReportMetadata::from(*metadata)
                .add("path", path.replace("::", "_"))
                .add("operation", operation)
                .add("length", length)
                .add("cpu", cpu.clone());
            if let Some(metadata_mod) = metadata_mod {
                metadata_mod(&mut metadata);
            }
            suite.insert(
                metadata,
                Box::new(move |iters, measure: &mut dyn Measure| function(length, iters, measure)),
            );
        }
    }
    suite
}

#[derive(Parser, Debug)]
struct Args {
    #[arg(long)]
    bench: bool,
    #[arg(long)]
    dry_run: bool,
    #[arg(long)]
    num_threads: Option<usize>,
    #[arg(long)]
    runs: Option<u64>,
    #[arg(long)]
    warmup_time: Option<String>,
    #[arg(long)]
    benchmark_time: Option<String>,
    #[arg(long)]
    start_iters: Option<u64>,
    #[arg(long)]
    filter: Vec<String>,
    #[arg(long)]
    length: Vec<String>,
    #[arg(long)]
    json_out_path: Option<String>,
    #[arg(long)]
    csv_out_path: Option<String>,
    #[arg(long)]
    detect_profile: bool,
    #[arg(long)]
    group_by_path: bool,
}
impl Args {
    fn config(&self) -> Config {
        if self.dry_run {
            return Config::default()
                .warmup_time(1.ms())
                .benchmark_time(1.ms())
                .runs(1)
                .start_iters(1);
        }

        let mut config = Config::default();
        if self.json_out_path.is_some() {
            config = config.warmup_time(1000.ms()).benchmark_time(10_000.ms());
        }
        if let Some(runs) = self.runs {
            config = config.runs(runs);
        }
        if let Some(start_iters) = self.start_iters {
            config = config.start_iters(start_iters);
        }
        if let Some(benchmark_time) = &self.benchmark_time {
            if let Ok(benchmark_time) = Duration::try_from(benchmark_time) {
                config = config.benchmark_time(benchmark_time.into());
            }
        }
        if let Some(warmup_time) = &self.warmup_time {
            if let Ok(warmup_time) = Duration::try_from(warmup_time) {
                config = config.warmup_time(warmup_time.into());
            }
        } else {
            config = config.warmup_time(config.benchmark_time / config.runs as u32);
        }
        config
    }
    fn filter(&self) -> BTreeMap<String, String> {
        let mut map = BTreeMap::default();
        for filter in &self.filter {
            for (key, value) in filter.split(',').filter_map(|s| s.split_once('=')) {
                map.insert(key.to_string(), value.to_string());
            }
        }
        if self.detect_profile && !map.contains_key("profile") {
            map.insert(
                "profile".to_string(),
                cpuid::processor().canonical_name().to_string(),
            );
        }
        map
    }
    fn pool<T: Send + 'static>(&self) -> ThreadPool<T> {
        self.num_threads.map(ThreadPool::new).unwrap_or_default()
    }
    fn lengths(&self) -> Vec<usize> {
        if self.length.is_empty() {
            return [
                0,           //
                256.bytes(), //
                16.kb(),     //
                64.kb(),     //
                1.mb(),      //
            ]
            .into();
        }
        let mut result = Vec::default();
        for length in &self.length {
            for length in length.split(',') {
                match Bytes::try_from(length).ok() {
                    Some(length) => result.push(length.into()),
                    None => println!("Couldn't parse {length} as length"),
                }
            }
        }
        result
    }
    fn json_out_path(&self) -> Option<PathBuf> {
        self.json_out_path.as_ref().map(PathBuf::from)
    }
    fn csv_out_path(&self) -> Option<PathBuf> {
        self.csv_out_path.as_ref().map(PathBuf::from)
    }
}
pub fn main(metadata_mod: Option<ReportMetadataMod>) {
    let args = Args::parse();
    let suite = suite(metadata_mod, &args.lengths());
    let suites = match args.group_by_path {
        true => suite.split_by("path"),
        false => vec![suite],
    };
    let mut pool = args.pool();
    for suite in suites {
        suite.run(&mut pool, args.config(), &args.filter());

        let mut reports: Vec<Report> = pool.join().unwrap().into_iter().flatten().collect();
        if reports.is_empty() {
            continue;
        }
        reports.sort_by(|a, b| {
            a.metadata
                .get("path")
                .cmp(&b.metadata.get("path"))
                .then(
                    a.metadata
                        .get("operation")
                        .cmp(&b.metadata.get("operation")),
                )
                .then(
                    a.metadata
                        .get("length")
                        .and_then(|s| s.parse::<u64>().ok())
                        .cmp(&b.metadata.get("length").and_then(|s| s.parse::<u64>().ok())),
                )
        });
        for report in &reports {
            let path = report.metadata.get("path").unwrap();
            let operation = report.metadata.get("operation").unwrap();
            let (cycles, length, filename) = match report.metadata.get_as::<u64>("length") {
                None => (report.avg, String::from(""), path.to_string()),
                Some(0) => (report.avg, 0.to_string(), format!("{path}_{operation}_0")),
                Some(length) => (
                    report.avg / length as f64,
                    Bytes::from(length).to_string(),
                    format!("{path}_{operation}_{length}"),
                ),
            };
            println!(
                "{cycles:>10.4} ± {pm:5.2}% {length:>5} {path} {operation}",
                pm = (report.confidence() * 100.0 / report.avg),
            );
            if let Some(out_path) = args.json_out_path() {
                std::fs::create_dir_all(&out_path).unwrap();
                let file_path = out_path.join(format!("{filename}.yaml"));
                report.write_yaml_file(&file_path).unwrap();
            }
        }

        if let Some(out_path) = args.csv_out_path() {
            std::fs::create_dir_all(&out_path).unwrap();
            let reports = reports.group_by("path");
            for (metadata, reports) in reports {
                let path = metadata.get("path").unwrap();
                let mut file = File::create(out_path.join(format!("{path}.csv"))).unwrap();
                Csv::write_headers(&mut file).unwrap();
                let mut writer = Csv::csv_writer(&mut file);
                for report in reports {
                    writer.serialize(Csv::from(report)).unwrap();
                }
            }
        }
    }
    let processor = cpuid::processor();
    println!("Processor: {:?} ({})", processor.model, processor.raw_model);
}
