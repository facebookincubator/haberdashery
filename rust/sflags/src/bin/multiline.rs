// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

sflags::define! {
    --flag32: i32 = -32;
    --opt0: Option<String>;
    --string0: String = "string0";
    --vec0: Vec<String>;
    --flag64: i64 = -64;
    --opt1: Option<String>;
    --string1: String = "string1";
    --vec1: Vec<String>;
}

fn main() {
    sflags::parse_exact();
    print!("{FLAG32},{FLAG64}");
}
