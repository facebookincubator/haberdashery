// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

sflags::define! {
    --flag: Option<String>
}

fn main() {
    sflags::parse_exact();
    match &*FLAG {
        Some(v) => print!("{v}"),
        None => print!("None"),
    }
    assert_eq!(&*FLAG, FLAG.get().unwrap());
}