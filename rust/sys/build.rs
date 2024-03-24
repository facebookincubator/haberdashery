// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn main() {
    const ASM_DIR: &str = "../../asm/";
    println!("cargo:rerun-if-changed={ASM_DIR}");
    for path in std::fs::read_dir(ASM_DIR).unwrap().filter_map(Result::ok) {
        if let Some(asm_name) = path.file_name().to_str().and_then(|s| s.strip_suffix(".s")) {
            cc::Build::new().file(path.path()).compile(asm_name);
        }
    }
}
