// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod aead;
mod hash;
mod mac;

use std::path::Path;

use crate::Descriptors;
use crate::get_all_descriptors_from_flag;
use crate::write_generated;

pub fn bindings() {
    let crate_path = crate::BINDINGS_PATH.join("rust_lib");
    let aead_descriptors = unit_bindings(&crate_path, "aead", aead::SRC);
    let hash_descriptors = unit_bindings(&crate_path, "hash", hash::SRC);
    let mac_descriptors = unit_bindings(&crate_path, "mac", mac::SRC);
    let descriptors = aead_descriptors
        .concat(hash_descriptors)
        .concat(mac_descriptors);
    write_cargo_toml(&crate_path, &descriptors);
}

pub fn write_cargo_toml(crate_path: &Path, descriptors: &Descriptors) {
    let feature_lines = descriptors.apply(|d| d.apply("{name} = [\"haberdashery-sys/{name}\"]\n"));
    let quoted_features = descriptors.apply(|d| d.apply("\"{name}\""));
    let default_feature = ["default = [", &quoted_features.join(", "), "]\n"].concat();

    let cargo_toml = [CARGO_TOML_HEADER, &default_feature, &feature_lines.concat()].concat();
    write_generated::toml(crate_path.join("Cargo.toml"), cargo_toml).unwrap();
}
pub fn unit_bindings(crate_path: &Path, primitive: &str, source_template: &str) -> Descriptors {
    let descriptors = get_all_descriptors_from_flag(primitive);
    for descriptor in descriptors.iter() {
        let name = &descriptor["name"];
        write_generated::rust(
            crate_path.join(format!("src/{primitive}/{name}.rs")),
            descriptor.apply(source_template),
        )
        .unwrap();
    }
    write_module(
        &crate_path.join(format!("src/{primitive}.rs")),
        &descriptors,
    );
    descriptors
}
pub fn write_module(module_path: &Path, descriptors: &Descriptors) {
    let descriptors: Descriptors = descriptors
        .iter()
        .map(|d| {
            let mut d = d.clone();
            if d["arch"] == "x86" {
                d.insert("arch", "x86_64");
            }
            d
        })
        .collect::<Vec<_>>()
        .into();
    let modules = descriptors.apply(|d| {
        d.apply(
            r#"#[cfg(all(feature = "{name}", target_arch = "{arch}"))]
pub mod {name};
"#,
        )
    });
    write_generated::rust(module_path, modules.concat()).unwrap();
}

pub const CARGO_TOML_HEADER: &str = r#"[package]
name = "haberdashery-lib"
version = "0.1.0"
edition = "2021"

[lib]
doctest = false

[dependencies]
haberdashery-sys = { path = "../rust_sys" }
perf-caliper = { path = "../../rust/perf-caliper", optional = true }

[dev-dependencies]
anyhow = "1.0.82"
random = { path = "../../rust/random" }
static-env = { path = "../../rust/static-env" }
test-vectors = { path = "../../rust/test-vectors" }

[features]
bench = ["perf-caliper"]
gen = []
"#;
