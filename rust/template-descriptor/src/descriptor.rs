// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;

use serde::Deserialize;
use serde::Serialize;

#[derive(Serialize, Deserialize, Debug, PartialEq)]
pub struct Descriptor {
    pub prefix: String,
    pub algorithm: String,
    pub profile: String,
    pub struct_name: String,
    pub struct_members: Vec<StructMember>,
}
impl Descriptor {
    pub fn new(
        prefix: &str,
        algorithm: &str,
        profile: &str,
        struct_name: &str,
        struct_members: Vec<StructMember>,
    ) -> Self {
        Self {
            prefix: prefix.to_string(),
            algorithm: algorithm.to_string(),
            profile: profile.to_string(),
            struct_name: struct_name.to_string(),
            struct_members,
        }
    }
    pub fn read_yaml_file(path: &Path) -> anyhow::Result<Self> {
        let file = std::fs::File::open(path)?;
        Ok(serde_yaml::from_reader(file)?)
    }
    pub fn write_yaml_file(&self, path: &Path) -> anyhow::Result<()> {
        use std::io::Write;
        std::fs::create_dir_all(path.parent().unwrap())?;
        let mut file = std::fs::File::create(path)?;
        // Annotate the written file as generated without annotating this source file as generated
        #[allow(clippy::write_literal)]
        writeln!(&mut file, "# @{}", "generated")?;
        serde_yaml::to_writer(&mut file, &self)?;
        Ok(())
    }
}
#[derive(Serialize, Deserialize, Debug, PartialEq)]
pub struct StructMember {
    pub name: String,
    pub ty: String,
    pub len: String,
}
impl StructMember {
    pub fn new(name: &str, ty: &str, len: &str) -> Self {
        Self {
            name: name.to_string(),
            ty: ty.to_string(),
            len: len.to_string(),
        }
    }
}
