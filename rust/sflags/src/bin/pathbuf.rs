// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;
use std::path::PathBuf;

sflags::define! {
    --flag: PathBuf
}

fn main() {
    sflags::parse_exact();
    print!("{FLAG:?}");
    assert_eq!(&*FLAG, FLAG.get().unwrap());
    assert_eq!(&*FLAG, FLAG.as_path());
    assert_as_ref(&FLAG);
}
fn assert_as_ref(value: &Path) {
    assert_eq!(&*FLAG, value);
}
