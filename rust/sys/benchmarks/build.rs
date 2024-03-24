// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::PathBuf;

const SUMS_FILENAME: &str = "sha256sums.txt";

fn main() {
    match std::env::var("OUT_DIR").is_ok() {
        true => cargo(),
        false => buck2(),
    }
}

fn buck2() {
    std::fs::copy(
        PathBuf::from("../srcs/sha256sums").join(SUMS_FILENAME),
        PathBuf::from("../out").join(SUMS_FILENAME),
    )
    .unwrap();
}

fn cargo() {
    const ASM_DIR: &str = "../../../asm/";
    println!("cargo:rerun-if-changed={ASM_DIR}");
    let out_path = PathBuf::from(&std::env::var("OUT_DIR").unwrap());
    std::fs::copy(
        PathBuf::from(ASM_DIR).join(SUMS_FILENAME),
        out_path.join(SUMS_FILENAME),
    )
    .unwrap();
}
