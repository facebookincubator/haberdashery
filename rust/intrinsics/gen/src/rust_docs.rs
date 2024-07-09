// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::sync::OnceLock;

pub fn has_function(s: &str) -> bool {
    functions().binary_search(&s).is_ok()
}

pub fn functions() -> &'static [&'static str] {
    static FUNCTIONS: OnceLock<Vec<&'static str>> = OnceLock::new();
    static FILE_CONTENT: OnceLock<String> = OnceLock::new();

    let file_content: &'static str = FILE_CONTENT.get_or_init(|| {
        let file_path = "data/rust_docs.html";
        std::fs::read_to_string(file_path).unwrap_or_else(|e| {
            panic!("Failed to read {file_path}. Try running gen/download.sh: {e}")
        })
    });
    FUNCTIONS.get_or_init(|| {
        let mut result: Vec<&'static str> = file_content
            .split("fn core::arch::x86_64::")
            .filter_map(|s| s.split_once('"'))
            .map(|s| s.0)
            .collect();
        result.sort();
        result
    })
}
