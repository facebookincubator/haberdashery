// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::PathBuf;

use clap::Parser;
use haberdashery_template_bindings::*;

#[derive(Parser, Debug)]
struct Args {
    #[arg(long)]
    language: String,

    #[arg(long)]
    primitive: String,

    #[arg(long)]
    descriptor_dir: String,

    #[arg(long)]
    out_dir: String,
}
impl Args {
    fn language(&self) -> Language {
        Language::parse(&self.language)
            .unwrap_or_else(|| panic!("Couldn't parse language from {}", self.language))
    }
    fn primitive(&self) -> Primitive {
        Primitive::parse(&self.primitive)
            .unwrap_or_else(|| panic!("Couldn't parse primitive from {}", self.primitive))
    }
    fn descriptor_dir(&self) -> PathBuf {
        PathBuf::from(&self.descriptor_dir)
    }
    fn out_dir(&self) -> PathBuf {
        PathBuf::from(&self.out_dir)
    }
}

fn main() {
    let args = Args::parse();
    bindings(
        &args.out_dir(),
        &args.descriptor_dir(),
        &args.language(),
        &args.primitive(),
    )
    .unwrap();
}
