// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod aead;
mod aead_streaming;
mod hash;
mod mac;

use std::path::Path;

use crate::Descriptor;
use crate::Descriptors;
use crate::get_all_descriptors_from_flag;
use crate::write_generated;

pub fn bindings() {
    let crate_path = crate::BINDINGS_PATH.join("rust_sys");
    let aead_descriptors = unit_bindings(&crate_path, "aead", aead::SYS_SRC, aead::UNIT_SRC);
    let aead_streaming_descriptors = unit_bindings(
        &crate_path,
        "aead_streaming",
        aead_streaming::SYS_SRC,
        aead_streaming::UNIT_SRC,
    );
    let hash_descriptors = unit_bindings(&crate_path, "hash", hash::SYS_SRC, hash::UNIT_SRC);
    let mac_descriptors = unit_bindings(&crate_path, "mac", mac::SYS_SRC, mac::UNIT_SRC);
    let descriptors = aead_descriptors
        .concat(aead_streaming_descriptors)
        .concat(hash_descriptors)
        .concat(mac_descriptors);
    write_cargo_toml(&crate_path, &descriptors);
    write_lib_rs(&crate_path.join("src/lib.rs"), &descriptors);
}
pub fn unit_bindings(
    crate_path: &Path,
    primitive: &str,
    sys_source_template: &str,
    unit_source_template: &str,
) -> Descriptors {
    let descriptors = get_all_descriptors_from_flag(primitive);
    for descriptor in descriptors.iter() {
        let name = &descriptor["name"];
        let source = descriptor.apply(sys_source_template);
        write_generated::rust(
            crate_path.join(format!("src/{primitive}/{name}.rs")),
            source,
        )
        .unwrap();
        let asm_options = match descriptor.get("arch") {
            Some("aarch64") => "raw",
            _ => "att_syntax, raw",
        };
        let mut descriptor = descriptor.clone();
        descriptor.insert("asm_options", asm_options);
        write_compilation_unit(
            &crate_path.join(format!("units/{name}")),
            &descriptor,
            unit_source_template,
        );
    }
    write_module(
        &crate_path.join(format!("src/{primitive}.rs")),
        &descriptors,
    );
    descriptors
}
pub fn write_cargo_toml(crate_path: &Path, descriptors: &Descriptors) {
    let feature_lines = descriptors.apply(|d| d.apply("{name} = [\"dep:{name}\"]\n"));
    let mut x86_dep_lines: Vec<String> = descriptors
        .iter()
        .filter(|d| d["arch"] == "x86_64")
        .map(|d| d.apply("{name} = { path = \"units/{name}\", optional = true }\n"))
        .collect();
    x86_dep_lines.sort();

    let mut aarch64_dep_lines: Vec<String> = descriptors
        .iter()
        .filter(|d| d["arch"] == "aarch64")
        .map(|d| d.apply("{name} = { path = \"units/{name}\", optional = true }\n"))
        .collect();
    aarch64_dep_lines.sort();

    let cargo_toml = [
        SYS_CARGO_TOML_HEADER,
        "\n[features]\n",
        "default = []\n",
        &feature_lines.concat(),
        "\n[target.'cfg(target_arch = \"x86_64\")'.dependencies]\n",
        &x86_dep_lines.concat(),
        "\n[target.'cfg(target_arch = \"aarch64\")'.dependencies]\n",
        &aarch64_dep_lines.concat(),
    ]
    .concat();
    write_generated::toml(crate_path.join("Cargo.toml"), cargo_toml).unwrap();
}
pub fn write_compilation_unit(
    unit_path: &Path,
    descriptor: &Descriptor,
    unit_source_template: &str,
) {
    write_generated::rust(
        unit_path.join("src/lib.rs"),
        descriptor.apply(unit_source_template),
    )
    .unwrap();
    write_generated::toml(
        unit_path.join("Cargo.toml"),
        descriptor.apply(UNIT_CARGO_TOML),
    )
    .unwrap();
}
pub fn write_module(module_path: &Path, descriptors: &Descriptors) {
    let mut modules: Vec<String> = descriptors
        .iter()
        .map(|d| {
            d.apply(
                r#"#[cfg(all(feature = "{name}", target_arch = "{arch}"))]
pub mod {name};
"#,
            )
        })
        .collect();
    modules.sort();
    write_generated::rust(module_path, [modules.concat()].concat()).unwrap();
}
pub fn write_lib_rs(lib_path: &Path, descriptors: &Descriptors) {
    let mut modules = descriptors.apply(|d| d.apply("pub mod {primitive};\n"));
    modules.sort();
    modules.dedup();
    let lib = ["#![no_std]\n", &modules.concat()].concat();
    write_generated::rust(lib_path, lib).unwrap();
}

const SYS_CARGO_TOML_HEADER: &str = r#"[package]
name = "haberdashery-sys"
version = "0.1.0"
edition = "2021"

[lib]
doctest = false
"#;

pub(crate) const UNIT_CARGO_TOML: &str = r#"[package]
name = "{name}"
edition = "2021"

[features]
asm-path = []

[lib]
doctest = false
"#;
