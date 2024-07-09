// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;

use units::Bytes;

use crate::benchmark::BenchmarkEnum;
use crate::benchmark::BenchmarkResult;

const RUNS: &str = "runs";
const ITERS: &str = "iters";
const START_CORE: &str = "start core";
const END_CORE: &str = "end core";
const WALLCLOCK: &str = "wallclock";

#[derive(Default)]
pub struct Table {
    results: Vec<BenchmarkResult>,
    show_metadata: Vec<String>,
    show_metric: Vec<String>,
    show_percent: Vec<String>,
    print_on_add: bool,
    metadata_lengths: BTreeMap<String, usize>,
}
impl Table {
    pub fn print_on_add(&mut self, benchmarks: &[BenchmarkEnum]) {
        self.print_on_add = true;
        self.metadata_lengths = BTreeMap::default();
        let mut remove_metadata = vec![];
        for metadata in &self.show_metadata {
            let mut len = metadata.len();
            let mut value = benchmarks.first().and_then(|b| b.get(metadata));
            benchmarks
                .iter()
                .filter_map(|b| b.get(metadata))
                .for_each(|v| {
                    if value != Some(v) {
                        value = None;
                    }
                    len = len.max(v.len())
                });
            if metadata == "operation" {
                // Extra space to append the length
                len += 4;
            } else if metadata == ITERS {
                len = ITERS.len().max(10);
            } else if let Some(value) = value {
                // We hide columns that contain a single value
                remove_metadata.push(metadata.clone());
                // Print the hidden column value before the table
                println!("{metadata}:\t{value}");
            }
            self.metadata_lengths.insert(metadata.clone(), len);
        }
        self.show_metadata.retain(|x| !remove_metadata.contains(x));
        println!();
        println!("{}", self.header());
    }
    fn key_len(&self, key: &str) -> usize {
        self.metadata_lengths
            .get(key)
            .copied()
            .unwrap_or(7.max(short_name(key).len()))
    }
    fn right_format(&self, key: &str, value: &str) -> String {
        let len = self.key_len(key);
        format!("{value:>len$}")
    }
    fn left_format(&self, key: &str, value: &str) -> String {
        let len = self.key_len(key);
        format!("{value:<len$}")
    }
    fn center_format(&self, key: &str, value: &str) -> String {
        let len = self.key_len(key);
        format!("{value:^len$}")
    }
    fn header(&self) -> String {
        let mut cells: Vec<String> = vec![];
        for key in &self.show_metadata {
            cells.push(self.center_format(key, key));
        }
        for key in &self.show_metric {
            cells.push(self.center_format(key, short_name(key)));
        }
        for key in &self.show_percent {
            cells.push(self.center_format(key, short_name(key)));
        }
        cells.join(" ")
    }
    pub fn push(&mut self, result: BenchmarkResult) {
        let mut cells = vec![];
        let perf = result.perf();

        let integers = [
            (RUNS, result.runs()),
            (ITERS, result.iters() as usize),
            (START_CORE, perf.start_core as usize),
            (END_CORE, perf.end_core as usize),
            (WALLCLOCK, perf.duration.as_millis() as usize),
        ];

        for key in &self.show_metadata {
            if let Some((_, value)) = integers.iter().find(|(k, _)| k == key) {
                if key == WALLCLOCK {
                    cells.push(self.right_format(key, &format!("{value}ms")));
                } else {
                    cells.push(self.right_format(key, &value.to_string()));
                }
                continue;
            };
            let Some(value) = result.metadata().get(key) else {
                cells.push(self.left_format(key, ""));
                continue;
            };
            let value = match (key == "operation", result.length()) {
                (true, Some(length)) => format!("{value}/{}", Bytes::from(length)),
                _ => value.to_string(),
            };
            cells.push(self.left_format(key, &value));
        }

        let tsc = perf.rdtsc;
        let cycles = perf.rdpmc_cycles().unwrap_or(tsc);
        for key in &self.show_metric {
            if let Some((_, counter)) = perf.rdpmc.iter().find(|(event, _)| event.name() == key) {
                let value = match cycles >= 10.0 {
                    true => format!("{counter:.2}"),
                    false => format!("{counter:.4}"),
                };
                cells.push(self.left_format(key, &value));
            };
        }
        for key in &self.show_percent {
            if let Some((_, counter)) = perf.rdpmc.iter().find(|(event, _)| event.name() == key) {
                let percent = 100.0 * counter / cycles;
                cells.push(self.right_format(key, &format!("{percent:.2}%")));
            };
        }
        if self.print_on_add {
            println!("{}", cells.join(" "));
        }

        self.results.push(result);
    }
    pub fn show_metadata(&mut self, key: &str) {
        self.show_metadata.push(key.into());
    }
    pub fn show_metric(&mut self, key: &str) {
        self.show_metric.push(key.into());
    }
    pub fn show_percent(&mut self, key: &str) {
        self.show_percent.push(key.into());
    }
    pub fn results(&self) -> &[BenchmarkResult] {
        &self.results
    }
}

fn short_name(s: &str) -> &str {
    match s {
        "UOPS_EXECUTED_PORT_PORT_0" => "port0",
        "UOPS_EXECUTED_PORT_PORT_1" => "port1",
        "UOPS_EXECUTED_PORT_PORT_2" => "port2",
        "UOPS_EXECUTED_PORT_PORT_3" => "port3",
        "UOPS_EXECUTED_PORT_PORT_4" => "port4",
        "UOPS_EXECUTED_PORT_PORT_5" => "port5",
        "UOPS_EXECUTED_PORT_PORT_6" => "port6",
        "UOPS_EXECUTED_PORT_PORT_7" => "port7",
        "CORE_POWER_LVL0_TURBO_LICENSE" => "pow0",
        "CORE_POWER_LVL1_TURBO_LICENSE" => "pow1",
        "CORE_POWER_LVL2_TURBO_LICENSE" => "pow2",
        "UOPS_EXECUTED_CORE_CYCLES_GE_1" => "uops>=1",
        "UOPS_EXECUTED_CORE_CYCLES_GE_2" => "uops>=2",
        "UOPS_EXECUTED_CORE_CYCLES_GE_3" => "uops>=3",
        "UOPS_EXECUTED_CORE_CYCLES_GE_4" => "uops>=4",
        s => s,
    }
}
