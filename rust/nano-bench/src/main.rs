// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;
use std::collections::BTreeSet;
use std::io::Write;
use std::path::Path;
use std::path::PathBuf;

use nano_bench::csv::Csv;
use tabled::builder::Builder;
use tabled::settings::Style;

const Z_SCORE: f64 = 2.58; // For 99% confidence interval

pub struct LengthGroup {
    header: Vec<String>,
    map: BTreeMap<Option<u64>, Vec<Csv>>,
}

pub fn group_by_length(records: Vec<Csv>) -> LengthGroup {
    let mut header = BTreeSet::<String>::default();
    let mut map = BTreeMap::<Option<u64>, Vec<Csv>>::default();
    for csv in records {
        if csv.length.is_some() {
            header.insert(csv.operation.clone());
        }
        map.entry(csv.length).or_default().push(csv);
    }

    LengthGroup {
        header: header.into_iter().collect(),
        map,
    }
}

pub fn format(csv: &Csv) -> String {
    let cycles = csv.avg;
    let pm = Z_SCORE * csv.standard_deviation / (csv.runs as f64).sqrt();
    let (cycles, pm) = match csv.length {
        None | Some(0) => (cycles, pm),
        Some(length) => (cycles / length as f64, pm / length as f64),
    };
    format!("{cycles:>10.4} ± {pm:5.4}")
}

fn metadata_table(metadata: &str) -> String {
    let mut table = Builder::default();
    table.set_header(["metadata"]);
    for (key, value) in metadata.split(';').filter_map(|row| row.split_once('=')) {
        table.push_record([key, value]);
    }
    table.build().with(Style::markdown()).to_string()
}

fn convert(src_path: &Path, dst_path: &Path) {
    let mut file = std::fs::File::open(&src_path).unwrap();
    let mut r = Csv::csv_reader(&mut file).unwrap();

    let records: Vec<Csv> = r.deserialize::<Csv>().filter_map(Result::ok).collect();
    let metadata = records.first().unwrap().metadata.clone();
    let length_group = group_by_length(records);

    let mut fixed_table = Builder::default();
    fixed_table.set_header(["operation", "cycles"]);
    let mut length_table = Builder::default();
    length_table.set_header(
        [
            ["bytes".to_string()].as_slice(),
            length_group.header.as_slice(),
        ]
        .concat(),
    );
    for (length, records) in length_group.map {
        match length {
            None => {
                for csv in records {
                    fixed_table.push_record([&csv.operation, &format(&csv)]);
                }
            }
            Some(0) => {
                for csv in records {
                    fixed_table.push_record([
                        format!("{operation} empty", operation = csv.operation),
                        format(&csv),
                    ]);
                }
            }
            Some(length) => {
                let mut map = BTreeMap::<String, String>::default();
                for csv in records {
                    map.insert(csv.operation.clone(), format(&csv));
                }
                let row: Vec<&str> = length_group
                    .header
                    .iter()
                    .map(|s| map.get(s).map(|s| s.as_str()).unwrap_or_default())
                    .collect();
                length_table.push_record(
                    [
                        [format!("{length:#}", length = units::Bytes::from(length)).as_str()]
                            .as_slice(),
                        row.as_slice(),
                    ]
                    .concat(),
                );
            }
        }
    }

    let mut file = std::fs::File::create(dst_path).unwrap();
    let fixed_table = fixed_table.build().with(Style::markdown()).to_string();
    let length_table = length_table.build().with(Style::markdown()).to_string();
    let metadata_table = metadata_table(&metadata);
    let w = &mut file;
    writeln!(w, "[//]: # (@{})\n", "generated").unwrap();
    writeln!(w, "{fixed_table}\n").unwrap();
    writeln!(w, "{length_table}\n").unwrap();
    writeln!(w, "{metadata_table}").unwrap();
}

fn main() {
    let benchmark_data_path = PathBuf::from("../../benchmark_data");

    for path in std::fs::read_dir(benchmark_data_path.join("csv"))
        .unwrap()
        .filter_map(Result::ok)
        .map(|entry| entry.path())
    {
        let Some(filestem) = path.file_stem().and_then(|s| s.to_str()) else {
            continue;
        };
        convert(
            &path,
            &benchmark_data_path
                .join("md")
                .join(format!("{filestem}.md")),
        );
    }
}
