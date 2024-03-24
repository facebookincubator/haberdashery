// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::io::Read;
use std::io::Write;

use serde::Deserialize;
use serde::Serialize;

use crate::Report;

#[derive(Serialize, Deserialize, Debug, Clone, Default)]
pub struct Csv {
    pub operation: String,
    pub length: Option<u64>,
    pub avg: f64,
    pub standard_deviation: f64,
    pub runs: usize,
    pub iters_per_run: u64,
    pub metadata: String,
}
impl From<Report> for Csv {
    fn from(report: Report) -> Self {
        let operation = report.metadata.get("operation").unwrap().to_string();
        let mut metadata = report.metadata.metadata.clone();
        metadata.remove("length");
        metadata.remove("operation");
        let metadata = metadata
            .into_iter()
            .map(|(key, value)| [key, value].join("="))
            .collect::<Vec<String>>()
            .join(";");
        Self {
            operation,
            length: report.length,
            avg: report.avg,
            standard_deviation: report.standard_deviation,
            runs: report.measurements.len(),
            iters_per_run: report.iters,
            metadata,
        }
    }
}
trait StripPrefix {
    fn strip_prefix<const N: usize>(&mut self, prefix: &[u8; N]) -> std::io::Result<bool>;
}
impl<R: Read> StripPrefix for R {
    fn strip_prefix<const N: usize>(&mut self, prefix: &[u8; N]) -> std::io::Result<bool> {
        let mut buf = [0u8; N];
        self.read_exact(&mut buf)?;
        Ok(buf == *prefix)
    }
}
impl Csv {
    pub fn write_headers(w: &mut dyn Write) -> std::io::Result<()> {
        write!(w, "# @")?;
        writeln!(w, "generated")?;
        writeln!(
            w,
            "operation,length,avg,standard_deviation,runs,iters_per_run,metadata"
        )
    }
    pub fn csv_writer<W: Write>(w: W) -> csv::Writer<W> {
        csv::WriterBuilder::new()
            .has_headers(false)
            .flexible(true)
            .from_writer(w)
    }
    pub fn csv_reader<R: Read>(mut r: R) -> std::io::Result<csv::Reader<R>> {
        if !r.strip_prefix(b"# @")? || !r.strip_prefix(b"generated\n")? {
            return Err(std::io::Error::new(
                std::io::ErrorKind::InvalidData,
                "Missing generated comment",
            ));
        }
        Ok(csv::ReaderBuilder::new().flexible(true).from_reader(r))
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn serialize() {
        let mut data = Vec::<u8>::default();
        {
            Csv::write_headers(&mut data).unwrap();
            let mut w = Csv::csv_writer(&mut data);
            w.serialize(Csv {
                operation: "operation".into(),
                length: None,
                avg: 42.0,
                standard_deviation: 12.15,
                runs: 1,
                iters_per_run: 21,
                metadata: "metadata".into(),
            })
            .unwrap();
            w.serialize(Csv::default()).unwrap();
            w.serialize(Csv {
                operation: "operation2".into(),
                length: Some(99),
                avg: 4200.0,
                standard_deviation: 1215.0,
                runs: 100,
                iters_per_run: 2100,
                metadata: "metadata2".into(),
            })
            .unwrap();
        }
        pretty_assertions::assert_eq!(
            std::str::from_utf8(&data).unwrap(),
            concat!(
                "# @",
                "generated",
                r#"
operation,length,avg,standard_deviation,runs,iters_per_run,metadata
operation,,42.0,12.15,1,21,metadata
,,0.0,0.0,0,0,
operation2,99,4200.0,1215.0,100,2100,metadata2
"#
            )
        );
    }

    #[test]
    fn deserialize() {
        let mut data = concat!(
            "# @",
            "generated",
            r#"
operation,length,avg,standard_deviation,runs,iters_per_run,metadata
operation,,42.0,12.15,1,21,metadata
,,0.0,0.0,0,0,
operation2,99,4200.0,1215.0,100,2100,metadata2
"#
        )
        .as_bytes();

        let mut r = Csv::csv_reader(&mut data).unwrap();
        let mut iter = r.deserialize::<Csv>();
        let csv = iter.next().unwrap().unwrap();
        assert_eq!(csv.metadata, "metadata");
        assert_eq!(csv.length, None);
        let csv = iter.next().unwrap().unwrap();
        assert_eq!(csv.metadata, "");
        assert_eq!(csv.length, None);
        let csv = iter.next().unwrap().unwrap();
        assert_eq!(csv.metadata, "metadata2");
        assert_eq!(csv.length, Some(99));
    }
}
