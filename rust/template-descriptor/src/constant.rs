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
pub struct Constants(Vec<Constant>);
impl AsRef<[Constant]> for Constants {
    fn as_ref(&self) -> &[Constant] {
        &self.0
    }
}
impl From<Vec<Constant>> for Constants {
    fn from(v: Vec<Constant>) -> Self {
        Self(v)
    }
}
impl Constants {
    pub const FILENAME: &'static str = "constants.yaml";
    pub fn read_yaml_path(path: &Path) -> anyhow::Result<Self> {
        let file = std::fs::File::open(path.join(Self::FILENAME))?;
        Ok(serde_yaml::from_reader(file)?)
    }
    pub fn write_yaml_path(&self, path: &Path) -> anyhow::Result<()> {
        #[allow(clippy::write_literal)]
        let yaml = format!(
            "# @{}\n{content}",
            "generated",
            content = serde_yaml::to_string(self)?
        );
        std::fs::create_dir_all(path)?;
        std::fs::write(path.join(Self::FILENAME), yaml)?;
        Ok(())
    }
}

#[derive(Serialize, Deserialize, Debug, PartialEq)]
pub struct Constant {
    pub name: String,
    pub value: String,
}
impl Constant {
    pub fn new(name: impl Into<String>, value: impl Into<String>) -> Self {
        Self {
            name: name.into(),
            value: value.into(),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn serialize_deserialize_constants() {
        let constants: Constants = vec![
            Constant::new("KEY_LEN", "32"),
            Constant::new("NONCE_LEN", "12"),
            Constant::new("TAG_LEN", "16"),
        ]
        .into();
        let yaml = serde_yaml::to_string(&constants).unwrap();
        pretty_assertions::assert_eq!(
            yaml,
            r#"- name: KEY_LEN
  value: '32'
- name: NONCE_LEN
  value: '12'
- name: TAG_LEN
  value: '16'
"#
        );
        assert_eq!(serde_yaml::from_str::<Constants>(&yaml).unwrap(), constants);
    }
}
