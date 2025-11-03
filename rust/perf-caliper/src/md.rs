// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;

use tabled::builder::Builder;
use tabled::settings::Style;

use crate::csv::Csv;

pub fn to_markdown(csv: &Csv) -> String {
    let data: Data = csv.into();
    let data = data.by_length();

    format!(
        r"[//]: # (@{generated})
{fixed_table}

{length_table}

{metadata_table}
",
        generated = "generated",
        fixed_table = fixed_table(&data),
        length_table = length_table(&data),
        metadata_table = metadata_table(csv),
    )
}

fn fixed_table(data: &LengthMap) -> String {
    let mut fixed_table = Builder::default();
    fixed_table.push_record(["operation", "cycles"]);

    for Datum {
        operation, cycles, ..
    } in data.get(&None).into_iter().flatten()
    {
        fixed_table.push_record([operation, &format!("{cycles:.4}")]);
    }

    for Datum {
        operation, cycles, ..
    } in data.get(&Some(0)).into_iter().flatten()
    {
        fixed_table.push_record([&format!("{operation} empty"), &format!("{cycles:.4}")]);
    }
    fixed_table.build().with(Style::markdown()).to_string()
}

fn length_table(data: &LengthMap) -> String {
    let mut length_table = Builder::default();
    let mut length_header = Vec::<&str>::new();
    for (length, row) in data {
        let length = match length {
            None | Some(0) => continue,
            Some(length) => units::Bytes::from(*length),
        };
        if length_table.count_rows() == 0 {
            length_header = row.iter().map(|datum| datum.operation.as_str()).collect();
            length_table.push_record(
                std::iter::once("bytes").chain(row.iter().map(|datum| datum.operation.as_str())),
            );
        }
        length_table.push_record(std::iter::once(length.to_string()).chain(
            row.iter().enumerate().map(|(i, datum)| {
                assert_eq!(datum.operation, length_header[i]);
                format!("{:.4}", datum.cycles)
            }),
        ));
    }
    length_table.build().with(Style::markdown()).to_string()
}
fn metadata_table(csv: &Csv) -> String {
    // Work out which columns have exactly one value
    let mut metadata: Vec<(String, String)> = csv
        .header
        .iter()
        .enumerate()
        .filter_map(|(i, name)| {
            let value = &csv.rows[0][i];
            for row in &csv.rows {
                if &row[i] != value {
                    return None;
                }
            }
            Some((name.clone(), value.clone()))
        })
        .collect();
    metadata.sort_by(|lhs, rhs| lhs.0.cmp(&rhs.0));

    let mut metadata_table = Builder::default();
    metadata_table.push_record(["metadata"]);
    for (key, value) in &metadata {
        metadata_table.push_record([key, value]);
    }

    metadata_table.build().with(Style::markdown()).to_string()
}

type LengthMap<'a> = BTreeMap<Option<usize>, Vec<&'a Datum>>;

struct Datum {
    length: Option<usize>,
    operation: String,
    cycles: f64,
}
struct Data(Vec<Datum>);
impl Data {
    pub fn data(&self) -> &[Datum] {
        &self.0
    }
    pub fn by_length(&self) -> LengthMap<'_> {
        let mut result = LengthMap::default();
        for datum in self.data() {
            result.entry(datum.length).or_default().push(datum);
        }
        result
    }
}
impl From<&Csv> for Data {
    fn from(csv: &Csv) -> Self {
        let mut length_index = None;
        let mut operation_index = None;
        let mut cycles_index = None;
        for (i, col) in csv.header.iter().enumerate() {
            match col.as_str() {
                "length" => length_index = Some(i),
                "operation" => operation_index = Some(i),
                "cycles" => cycles_index = Some(i),
                _ => {}
            }
        }
        let length_index = length_index;
        let operation_index = operation_index.unwrap();
        let cycles_index = cycles_index.unwrap();
        let data: Vec<Datum> = csv
            .rows
            .iter()
            .map(|row| {
                let length = length_index.and_then(|i| row[i].parse().ok());
                let operation = row[operation_index].clone();
                let cycles = row[cycles_index]
                    .parse()
                    .expect("Couldn't parse cycles as float");
                Datum {
                    length,
                    operation,
                    cycles,
                }
            })
            .collect();
        Self(data)
    }
}
