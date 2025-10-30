// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn main() {
    match std::env::args().nth(1).as_ref().map(String::as_str) {
        Some("canonical") => println!("{}", cpuid::processor().canonical_name()),
        Some("supported") => supported(),
        Some("xcr0") | Some("xgetbv") => println!("{}", cpuid::xcr0::XCR0::get()),
        _ => println!("{}", cpuid::processor()),
    }
}

fn supported() {
    use cpuid::*;

    let p = processor();

    println!("{}\t haswell", p.is_supported(haswell()));
    println!("{}\t broadwell", p.is_supported(haswell()));
    println!("{}\t skylake", p.is_supported(skylake()));
    println!("{}\t skylakex", p.is_supported(skylakex()));
    println!("{}\t cannonlake", p.is_supported(cannonlake()));
    println!("{}\t icelake", p.is_supported(icelake()));
    println!("{}\t tigerlake", p.is_supported(tigerlake()));
    println!("{}\t sapphirerapids", p.is_supported(sapphirerapids()));
    println!("{}\t zen3", p.is_supported(zen3()));
    println!("{}\t zen4", p.is_supported(zen4()));
}
