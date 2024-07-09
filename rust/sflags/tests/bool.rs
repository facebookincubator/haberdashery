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
    cmd.assert().success().stdout("true");
}
#[test]
fn set() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag=false");
    cmd.assert().success().stdout("false");
}
#[test]
fn set_implicit_true() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag");
    cmd.assert().success().stdout("true");
}
#[test]
fn set_implicit_false() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--noflag");
    cmd.assert().success().stdout("false");
}
#[test]
fn set_implicit_false_dash() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--no-flag");
    cmd.assert().success().stdout("false");
}
#[test]
fn set_implicit_false_underscore() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--no_flag");
    cmd.assert().success().stdout("false");
}
#[test]
fn not_bool() {
    let mut cmd = test_helper::command(std::file!());
    cmd.arg("--flag=frue");
    cmd.assert()
        .failure()
        .stderr(predicate::str::contains("ParseBoolError"));
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
