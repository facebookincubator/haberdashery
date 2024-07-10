// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::process::Command;

pub fn bin_name(file: &str) -> &str {
    let file_parts = file.split(std::path::MAIN_SEPARATOR);
    let file_name = file_parts.last().unwrap();
    file_name.strip_suffix(".rs").unwrap()
}

#[track_caller]
pub fn command(file: &str) -> Command {
    use assert_cmd::prelude::*;
    Command::cargo_bin(bin_name(file)).unwrap()
}
