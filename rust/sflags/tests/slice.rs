// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::process::Command;

use assert_cmd::prelude::*;
use predicates::prelude::*;

fn command() -> Command {
    test_helper::command(std::file!())
}

#[test]
fn default() {
    let mut cmd = command();
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("Flag not set: --flag"));
}
#[test]
fn set() {
    let mut cmd = command();
    cmd.arg("--flag=-42");
    cmd.assert().success().stdout("[-42]");
}
#[test]
fn extra_args() {
    let mut cmd = command();
    cmd.arg("--undefined-flag");
    cmd.arg("--flag=42");
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("Unused arguments"));
}
#[test]
fn set_many() {
    let mut cmd = command();
    cmd.arg("--flag=1,2,3,4,5");
    cmd.assert().success().stdout("[1, 2, 3, 4, 5]");
}
#[test]
fn set_nan() {
    let mut cmd = command();
    cmd.arg("--flag=banana");
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("ParseIntError"));
}
