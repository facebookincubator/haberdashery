// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod x25519;

use aws_lc_sys::AWSLC_VERSION_NUMBER_STRING;

pub fn version() -> &'static str {
    core::str::from_utf8(AWSLC_VERSION_NUMBER_STRING).unwrap()
}
