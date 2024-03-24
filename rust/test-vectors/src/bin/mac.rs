// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cozybuf::descriptor]
pub struct MacTestVector {
    pub key: Vec<u8>,
    pub message: Vec<u8>,
    pub tag: Vec<u8>,
}

cozybuf::main! {MacTestVector}
