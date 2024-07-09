// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

sflags::define! {
    --name: &str;
}

fn main() {
    sflags::parse_exact();
    match &*NAME {
        "openssl_evp" => bindings::openssl_evp(),
        "rust_bench" => bindings::rust_bench(),
        "rust_lib" => bindings::rust_lib(),
        "rust_sys" => bindings::rust_sys(),
        "c89" => bindings::c89(),
        name => panic!("unknown bindings type: {name}"),
    }
}
