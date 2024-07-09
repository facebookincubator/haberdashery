// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use assert_cmd::prelude::*;
use predicates::prelude::*;

#[test]
fn default() {
    let mut cmd = test_helper::command(std::file!());
    cmd.assert().success().stdout("None");
}
#[test]
fn set() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag=banana");
    cmd.assert().success().stdout("banana");
}
#[test]
fn extra_args() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--undefined-flag");
    cmd.arg("--flag=true");
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("Unused arguments"));
}
