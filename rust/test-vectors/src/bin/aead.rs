// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cozybuf::descriptor]
pub struct AeadTestVector {
    pub key: Vec<u8>,
    pub nonce: Vec<u8>,
    pub aad: Vec<u8>,
    pub plaintext: Vec<u8>,
    pub ciphertext: Vec<u8>,
    pub tag: Vec<u8>,
}

cozybuf::main! {AeadTestVector}
