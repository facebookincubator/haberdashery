// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;
use std::path::Path;

use serde::Deserialize;
use serde::Serialize;

const Z_SCORE: f64 = 2.58; // For 99% confidence interval

#[derive(Serialize, Deserialize, Debug, Clone, Default)]
pub struct Report {
    #[serde(flatten)]
    pub metadata: ReportMetadata,
    pub avg: f64,
    pub standard_deviation: f64,
    pub iters: u64,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub length: Option<u64>,
    pub measurements: Vec<u64>,
}
impl Report {
    pub fn new(iters: u64, metadata: ReportMetadata, measurements: &[u64]) -> Self {
        let avg = {
            let mut total = 0_f64;
            measurements.iter().for_each(|x| total += *x as f64);
            total / measurements.len() as f64
        };
        let standard_deviation = {
            let mut diff_sum = 0_f64;
            measurements.iter().for_each(|x| {
                let diff = avg - *x as f64;
                diff_sum += diff * diff;
            });
            (diff_sum / measurements.len() as f64).sqrt()
        };
        let avg = avg / iters as f64;
        let standard_deviation = standard_deviation / iters as f64;
        let length = metadata.get_as::<u64>("length");
        Self {
            metadata,
            avg,
            standard_deviation,
            iters,
            length,
            measurements: measurements.into(),
        }
    }
    pub fn cpb(self) -> Self {
        let denominator = match self.length {
            Some(0) | None => 1_f64,
            Some(length) => length as f64,
        };
        Self {
            metadata: self.metadata,
            avg: self.avg / denominator,
            standard_deviation: self.standard_deviation / denominator,
            iters: self.iters,
            length: self.length,
            measurements: self.measurements,
        }
    }
    pub fn confidence(&self) -> f64 {
        Z_SCORE * self.standard_deviation / (self.measurements.len() as f64).sqrt()
    }
    pub fn write_yaml_file(&self, path: &Path) -> anyhow::Result<()> {
        let yaml = format!(
            "# @{}generated\n{content}",
            "",
            content = serde_yaml::to_string(self)?
        );
        std::fs::write(path, yaml)?;
        Ok(())
    }
    pub fn read_yaml_file(path: &Path) -> anyhow::Result<Self> {
        let file = std::fs::File::open(path)?;
        let result = serde_yaml::from_reader(file)?;
        Ok(result)
    }
}

#[derive(
    Serialize,
    Deserialize,
    Clone,
    Default,
    Debug,
    PartialEq,
    Eq,
    PartialOrd,
    Ord
)]
pub struct ReportMetadata {
    pub metadata: BTreeMap<String, String>,
}
impl From<&[(&str, &str)]> for ReportMetadata {
    fn from(pairs: &[(&str, &str)]) -> Self {
        Self {
            metadata: BTreeMap::from_iter(
                pairs.iter().map(|(k, v)| (k.to_string(), v.to_string())),
            ),
        }
    }
}
impl ReportMetadata {
    pub fn get(&self, key: &str) -> Option<&str> {
        self.metadata.get(key).map(|s| s.as_str())
    }
    pub fn get_as<T: core::str::FromStr>(&self, key: &str) -> Option<T> {
        self.metadata.get(key).and_then(|s| s.parse::<T>().ok())
    }
    pub fn length(&self) -> Option<u64> {
        self.get_as::<u64>("length")
    }
    pub fn matches(&self, filter: &BTreeMap<String, String>) -> bool {
        for (key, value) in filter {
            match self.metadata.get(key) {
                Some(other) => {
                    if value != other {
                        return false;
                    }
                }
                None => return false,
            }
        }
        true
    }
    pub fn set_length(self, length: u64) -> Self {
        self.add("length", length)
    }
    pub fn add(mut self, key: impl ToString, value: impl ToString) -> Self {
        self.metadata.insert(key.to_string(), value.to_string());
        self
    }
    pub fn put(&mut self, key: impl ToString, value: impl ToString) {
        self.metadata.insert(key.to_string(), value.to_string());
    }
}
impl From<BTreeMap<String, String>> for ReportMetadata {
    fn from(metadata: BTreeMap<String, String>) -> Self {
        Self { metadata }
    }
}

pub trait ReportVec: Sized {
    fn group_by(self, key: &str) -> BTreeMap<ReportMetadata, Vec<Report>>;
}

impl ReportVec for Vec<Report> {
    fn group_by(self, key: &str) -> BTreeMap<ReportMetadata, Vec<Report>> {
        let mut result = BTreeMap::<ReportMetadata, Vec<Report>>::default();
        for report in self {
            let Some(value) = report.metadata.get(key) else {
                continue;
            };
            let metadata = ReportMetadata::default().add(key, value);
            match result.get_mut(&metadata) {
                Some(reports) => reports.push(report),
                None => _ = result.insert(metadata.clone(), vec![report]),
            }
        }
        result
    }
}

impl ReportVec for BTreeMap<ReportMetadata, Vec<Report>> {
    fn group_by(self, key: &str) -> BTreeMap<ReportMetadata, Vec<Report>> {
        let mut result = BTreeMap::<ReportMetadata, Vec<Report>>::default();
        for (metadata, reports) in self {
            for report in reports {
                let Some(value) = report.metadata.get(key) else {
                    continue;
                };
                let metadata = metadata.clone().add(key, value);
                match result.get_mut(&metadata) {
                    Some(reports) => reports.push(report),
                    None => _ = result.insert(metadata.clone(), vec![report]),
                }
            }
        }
        result
    }
}
