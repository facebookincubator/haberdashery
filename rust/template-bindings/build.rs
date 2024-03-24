// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::fs::copy;
use std::fs::create_dir_all;
use std::fs::read_dir;
use std::path::PathBuf;

fn main() {
    const TEMPLATE_DIR: &str = "templates";
    println!("cargo:rerun-if-changed={TEMPLATE_DIR}");

    let out_path = PathBuf::from(&std::env::var("OUT_DIR").unwrap());
    for dir_entry in read_dir(TEMPLATE_DIR).unwrap().filter_map(Result::ok) {
        let Some(language) = dir_entry.file_name().to_str().map(|s| s.to_string()) else {
            continue;
        };
        let path = dir_entry.path();
        let out_path = out_path.join(TEMPLATE_DIR).join(&language);
        create_dir_all(&out_path).unwrap();
        for file_entry in read_dir(path).unwrap().filter_map(Result::ok) {
            let Some(filename) = file_entry.file_name().to_str().map(|s| s.to_string()) else {
                continue;
            };
            copy(file_entry.path(), out_path.join(filename)).unwrap();
        }
    }
}
