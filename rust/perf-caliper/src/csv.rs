// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;
use std::collections::BTreeSet;

use crate::benchmark::BenchmarkResult;

const OP: &str = "operation";
const LENGTH: &str = "length";
const CYCLES: &str = "cycles";
const RUNS: &str = "runs";
const ITERATIONS: &str = "iterations";
const TSC: &str = "tsc";
const TSCP: &str = "tscp";
const USECS: &str = "usecs";

pub struct Csv {
    pub header: Vec<String>,
    pub rows: Vec<Vec<String>>,
}
impl From<&String> for Csv {
    fn from(data: &String) -> Self {
        Self::from(data.as_str())
    }
}
impl From<&str> for Csv {
    fn from(data: &str) -> Self {
        let mut iter = data
            .lines()
            .filter(|s| !s.starts_with('#'))
            .map(|s| s.split(',').map(String::from).collect::<Vec<String>>());
        let header = iter.next().unwrap_or_default();
        let rows = iter.collect();
        Self { header, rows }
    }
}
impl Csv {
    pub fn new(results: &[BenchmarkResult], extras: &[(&str, &str)]) -> Self {
        let (extra_keys, extra_values): (Vec<&str>, Vec<&str>) =
            extras.iter().map(Clone::clone).unzip();

        // Collect the complete list of columns
        let mut metadata = BTreeSet::<&str>::new();
        let mut perf = BTreeSet::<&str>::new();
        for result in results {
            for name in result.metadata().keys() {
                metadata.insert(name);
            }
            for (event, _) in result.perf().rdpmc {
                perf.insert(event.name());
            }
        }
        let metadata: Vec<String> = metadata
            .into_iter()
            .chain([RUNS, ITERATIONS])
            .map(String::from)
            .collect();
        let perf: Vec<String> = perf
            .into_iter()
            .chain([TSC, TSCP, USECS])
            .map(String::from)
            .collect();

        // Arrange the data for each row
        let mut rows = vec![];
        for result in results {
            let mut row = vec![];
            for name in &metadata {
                match name.as_str() {
                    RUNS => row.push(Some(result.runs().to_string())),
                    ITERATIONS => row.push(Some(result.iters().to_string())),
                    _ => row.push(result.metadata().get(name).cloned()),
                }
            }
            for name in &perf {
                match name.as_str() {
                    "tsc" => row.push(Some(result.perf().rdtsc.to_string())),
                    "tscp" => row.push(Some(result.perf().rdtscp.to_string())),
                    "usecs" => row.push(Some(result.perf().duration.as_micros().to_string())),
                    _ => row.push(result.perf().rdpmc.iter().find_map(|(event, counter)| {
                        (name == event.name()).then(|| counter.to_string())
                    })),
                }
            }
            for extra in &extra_values {
                row.push(Some(extra.to_string()));
            }
            let row: Vec<String> = row.into_iter().map(Option::unwrap_or_default).collect();
            rows.push(row);
        }

        // Populate the csv object
        let header = metadata
            .into_iter()
            .chain(perf)
            .chain(extra_keys.into_iter().map(String::from))
            .collect();
        Self { header, rows }
    }
    pub fn get_unique_cells_by_column<'a>(&'a self, column: &str) -> Vec<&'a str> {
        let Some(index) = self
            .header
            .iter()
            .enumerate()
            .find_map(|(i, c)| (c == column).then_some(i))
        else {
            return vec![];
        };
        let unique: BTreeSet<&'a str> = self
            .rows
            .iter()
            .filter_map(|row| row.get(index))
            .map(String::as_str)
            .collect();
        unique.into_iter().collect()
    }
    pub fn build(&self) -> String {
        let mut result = vec![
            format!("# @{generated}", generated = "generated"),
            self.header.join(","),
        ];
        for row in &self.rows {
            result.push(row.join(","));
        }
        result.push(String::default());
        result.join("\n")
    }
    pub fn path_cycle_map(&self) -> BTreeMap<String, f64> {
        let mut op_index = None;
        let mut length_index = None;
        let mut cycles_index = None;
        for (i, name) in self.header.iter().enumerate() {
            match name.as_str() {
                OP => op_index = Some(i),
                LENGTH => length_index = Some(i),
                CYCLES => cycles_index = Some(i),
                _ => {}
            }
        }
        let mut map = BTreeMap::default();
        let Some(op_index) = op_index else {
            return map;
        };
        let Some(length_index) = length_index else {
            return map;
        };
        let Some(cycles_index) = cycles_index else {
            return map;
        };
        for row in &self.rows {
            let op = &row[op_index];
            let length = &row[length_index];
            let cycles = &row[cycles_index];
            let Ok(cycles) = cycles.parse::<f64>() else {
                continue;
            };
            map.insert(format!("{op}_{length}"), cycles);
        }
        map
    }
}
