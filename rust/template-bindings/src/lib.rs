// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod c;
pub mod parameters;
pub mod rust_sys;

use std::path::Path;

use haberdashery_template_descriptor::constant::Constants;
use haberdashery_template_descriptor::descriptor::Descriptor;

use crate::parameters::TemplateParameters;

#[macro_export]
macro_rules! include_out_dir_str {
    ($path: tt) => {
        include_str!(concat!(env!("OUT_DIR"), $path))
    };
}

#[derive(Clone, Copy)]
pub enum Language {
    RustSys,
    C,
}
impl Language {
    pub fn parse(s: &str) -> Option<Self> {
        use Language::*;
        match s {
            "rust_sys" => Some(RustSys),
            "c" => Some(C),
            _ => None,
        }
    }
}
pub enum Primitive {
    Aead,
    Mac,
}
impl Primitive {
    pub fn parse(s: &str) -> Option<Self> {
        use Primitive::*;
        match s {
            "aead" => Some(Aead),
            "mac" => Some(Mac),
            _ => None,
        }
    }
}

pub fn bindings(
    out_path: &Path,
    descriptor_path: &Path,
    language: &Language,
    primitive: &Primitive,
) -> anyhow::Result<()> {
    let mut descriptors = vec![];
    let constants = Constants::read_yaml_path(descriptor_path)?;
    for path in std::fs::read_dir(descriptor_path)?.filter_map(Result::ok) {
        if let Ok(file_type) = path.file_type() {
            if !file_type.is_file() {
                continue;
            }
        } else {
            continue;
        }
        let filename = path.file_name();
        if filename == "constants.yaml" {
            continue;
        }
        descriptors.push(Descriptor::read_yaml_file(&path.path())?);
    }

    match language {
        Language::RustSys => {
            rust_sys::Template::from(primitive).bindings(out_path, &constants, &descriptors)
        }
        Language::C => c::Template::from(primitive).bindings(out_path, &constants, &descriptors),
    }
}
