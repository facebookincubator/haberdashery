// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;

use crate::get_descriptors_from_flag;
use crate::write_generated;
use crate::Descriptors;

pub fn bindings() {
    let crate_path = crate::BINDINGS_PATH.join("rust_bench");
    let aead_descriptors = get_descriptors_from_flag("aead");
    let hash_descriptors = get_descriptors_from_flag("hash");
    let mac_descriptors = get_descriptors_from_flag("mac");
    let descriptors = aead_descriptors
        .concat(hash_descriptors)
        .concat(mac_descriptors);
    write_cargo_toml(&crate_path, &descriptors);
}

pub fn write_cargo_toml(crate_path: &Path, descriptors: &Descriptors) {
    let feature_lines = descriptors.apply(|d| d.apply("{name} = [\"haberdashery-lib/{name}\"]\n"));
    let quoted_features = descriptors.apply(|d| d.apply(r#""{name}""#));
    let default_feature = ["default = [", &quoted_features.join(", "), "]\n"].concat();

    let cargo_toml = [
        CARGO_TOML_HEADER.to_string(),
        default_feature,
        feature_lines.concat(),
    ]
    .concat();
    write_generated::toml(crate_path.join("Cargo.toml"), cargo_toml).unwrap();
}

pub const CARGO_TOML_HEADER: &str = r#"[package]
name = "haberdashery_bench"
version = "0.1.0"
edition = "2021"

[[bench]]
name = "bench"
harness = false

[dependencies]
haberdashery-lib = { path = "../rust_lib", default-features = false, features = ["bench"] }
perf-caliper = { path = "../../rust/perf-caliper" }

[features]
"#;
