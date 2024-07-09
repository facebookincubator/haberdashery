// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

sflags::define! {
    --flag: Vec<i32>
}

fn main() {
    sflags::parse_exact();
    print!("{FLAG:?}");
    assert_eq!(&*FLAG, FLAG.get().unwrap());
    assert_eq!(&*FLAG, <Vec<i32> as AsRef<[i32]>>::as_ref(&FLAG));
    assert_eq!(
        format!("{FLAG:?}"),
        [
            "[",
            &FLAG
                .iter()
                .map(ToString::to_string)
                .collect::<Vec<String>>()
                .join(", "),
            "]"
        ]
        .concat()
    );
    if !FLAG.is_empty() {
        assert_eq!(FLAG[0], *FLAG.first().unwrap());
    }
    assert_as_ref(&FLAG);
}
fn assert_as_ref(value: &[i32]) {
    assert_eq!(&*FLAG, value);
}
