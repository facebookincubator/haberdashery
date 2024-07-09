// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn main() {
    match std::env::args().nth(1).as_ref().map(String::as_str) {
        Some("canonical") => println!("{}", cpuid::processor().canonical_name()),
        _ => println!("{}", cpuid::processor()),
    }
}
