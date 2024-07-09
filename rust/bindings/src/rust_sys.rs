// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod aead;
mod aead_streaming;
mod mac;

use std::path::Path;

use crate::get_descriptors_from_flag;
use crate::write_generated;
use crate::Descriptor;
use crate::Descriptors;

pub fn bindings() {
    let crate_path = crate::BINDINGS_PATH.join("rust_sys");
    let aead_descriptors = unit_bindings(&crate_path, "aead", aead::SYS_SRC, aead::UNIT_SRC);
    let aead_streaming_descriptors = unit_bindings(
        &crate_path,
        "aead_streaming",
        aead_streaming::SYS_SRC,
        aead_streaming::UNIT_SRC,
    );
    let mac_descriptors = unit_bindings(&crate_path, "mac", mac::SYS_SRC, mac::UNIT_SRC);
    let descriptors = aead_descriptors
        .concat(aead_streaming_descriptors)
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
    let descriptors = get_descriptors_from_flag(primitive);
    for descriptor in descriptors.iter() {
        let name = &descriptor["name"];
        let source = descriptor.apply(sys_source_template);
        write_generated::rust(
            crate_path.join(format!("src/{primitive}/{name}.rs")),
            source,
        )
        .unwrap();
        write_compilation_unit(
            &crate_path.join(format!("units/{name}")),
            descriptor,
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
    let dep_lines =
        descriptors.apply(|d| d.apply("{name} = { path = \"units/{name}\", optional = true }\n"));

    let cargo_toml = [
        SYS_CARGO_TOML_HEADER,
        "\n[features]\n",
        "default = []\n",
        &feature_lines.concat(),
        "\n[dependencies]\n",
        &dep_lines.concat(),
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
    let modules = descriptors.apply(|d| {
        d.apply(
            r#"#[cfg(feature = "{name}")]
pub mod {name};
"#,
        )
    });
    write_generated::rust(module_path, modules.concat()).unwrap();
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

[lib]
doctest = false
"#;
