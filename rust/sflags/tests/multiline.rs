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
    cmd.assert().success().stdout("-32,-64");
}
#[test]
fn set() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag32=32");
    cmd.arg("--flag64=64");
    cmd.assert().success().stdout("32,64");
}
#[test]
fn set_first() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag32=32");
    cmd.arg("--flag64=64");
    cmd.assert().success().stdout("32,64");
}
#[test]
fn set_second() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag32=32");
    cmd.arg("--flag64=64");
    cmd.assert().success().stdout("32,64");
}
#[test]
fn set_nan() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag32=banana");
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("ParseIntError"));
}
#[test]
fn extra_args() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--undefined-flag");
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("Unused arguments"));
}
