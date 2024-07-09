// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod aead;
pub mod mac;

pub static TEST_VECTORS: static_env::Env<std::path::PathBuf> =
    static_env::Env::new("TEST_VECTOR_PATH", "../../test_vectors");
