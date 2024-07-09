// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

sflags::define! {
    --flag: bool = true
}

fn main() {
    sflags::parse_exact();
    print!("{FLAG}");
    assert_eq!(&*FLAG, FLAG.get().unwrap());
    assert_eq!(*FLAG, FLAG.value());
    match *FLAG {
        true => assert!(*FLAG),
        false => assert!(!*FLAG),
    }
}
