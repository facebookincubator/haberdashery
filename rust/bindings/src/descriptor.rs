// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;
use std::path::Path;

use anyhow::Context;
pub use convert_case::Case;
use convert_case::Casing;

pub struct Descriptors(Vec<Descriptor>);
impl TryFrom<&Path> for Descriptors {
    type Error = anyhow::Error;
    fn try_from(path: &Path) -> Result<Self, Self::Error> {
        Ok(Self(
            std::fs::read_dir(path)
                .with_context(|| format!("Couldn't read {path:?}"))?
                .filter_map(Result::ok)
                .filter_map(|dir_entry| Descriptor::read_from_file(&dir_entry.path()).ok())
                .collect(),
        ))
    }
}
impl From<Vec<Descriptor>> for Descriptors {
    fn from(descriptors: Vec<Descriptor>) -> Self {
        Self(descriptors)
    }
}
impl Descriptors {
    pub fn iter(&self) -> core::slice::Iter<Descriptor> {
        self.0.iter()
    }
    pub fn apply<F: Fn(&Descriptor) -> String>(&self, f: F) -> Vec<String> {
        let mut result: Vec<String> = self.iter().map(f).collect();
        result.sort();
        result
    }
    pub fn write_files(&self, path: &Path) {
        self.iter().for_each(|descriptor| {
            let algorithm = descriptor.get_with_case("algorithm", Case::Flat);
            let profile = &descriptor["profile"];
            let path = path.join(format!("{algorithm}_{profile}.txt"));
            descriptor
                .write_file(&path)
                .unwrap_or_else(|e| panic!("{e}: Can't write file {path:?}"));
        });
    }
    pub fn concat(mut self, other: Self) -> Self {
        self.0.extend(other.0);
        self
    }
}

#[derive(Default, Clone)]
pub struct Descriptor {
    map: BTreeMap<String, String>,
}
impl From<&[(&str, &str)]> for Descriptor {
    fn from(pairs: &[(&str, &str)]) -> Descriptor {
        let mut map = BTreeMap::new();
        for (key, value) in pairs {
            map.insert(key.to_string(), value.to_string());
        }
        Self::new(map)
    }
}
impl core::ops::Index<&str> for Descriptor {
    type Output = String;
    fn index(&self, key: &str) -> &String {
        &self.map[key]
    }
}
impl Descriptor {
    pub fn new(map: impl Into<BTreeMap<String, String>>) -> Self {
        let map = map.into();
        let mut this = Self { map };
        let algorithm = this.get_with_case("algorithm", Case::Flat);
        let profile = &this["profile"];
        let name = match this.get("api") {
            Some(api) => format!("{algorithm}_{api}_{profile}"),
            None => format!("{algorithm}_{profile}"),
        };
        this.insert("name", name);
        this
    }
    pub fn insert(&mut self, key: impl Into<String>, value: impl Into<String>) {
        self.map.insert(key.into(), value.into());
    }
    pub fn contains_key(&self, key: &str) -> bool {
        self.map.contains_key(key)
    }
    pub fn get(&self, key: &str) -> Option<&str> {
        self.map.get(key).map(String::as_ref)
    }
    pub fn get_with_case(&self, key: &str, case: Case) -> String {
        self.map[key].to_case(case)
    }
    pub fn read_from_file(path: &Path) -> std::io::Result<Self> {
        Ok(Self::parse(&std::fs::read_to_string(path)?))
    }
    pub fn write_file(&self, path: &Path) -> std::io::Result<()> {
        let data = self
            .map
            .iter()
            .map(|(key, value)| format!("{key}={value}\n"))
            .collect::<Vec<String>>();
        let data = ["# @", "generated\n", &data.concat()].concat();
        std::fs::write(path, data.as_bytes())
    }
    pub fn read_from_dir(path: &Path) -> Vec<Self> {
        std::fs::read_dir(path)
            .unwrap_or_else(|e| panic!("{e}: Couldn't read {path:?}"))
            .map(|dir_entry| {
                dir_entry
                    .unwrap_or_else(|e| panic!("{e}: Couldn't read {path:?}"))
                    .path()
            })
            .map(|path| {
                Descriptor::read_from_file(&path)
                    .unwrap_or_else(|e| panic!("{e}: Couldn't read {path:?}"))
            })
            .collect()
    }
    pub fn parse(s: &str) -> Self {
        s.lines()
            .filter_map(|x| match x.starts_with('#') {
                true => None,
                false => Some(
                    x.split_once('=')
                        .unwrap_or_else(|| panic!("Couldn't split {x} from {s}")),
                ),
            })
            .collect::<Vec<(&str, &str)>>()
            .as_slice()
            .into()
    }
    pub fn apply(&self, template: &str) -> String {
        let mut result = template.replace("{generated}", "generated");
        for (key, value) in &self.map {
            result = result
                .replace(&format!("{{{key}}}"), value)
                .replace(&format!("{{{key}:Snake}}"), &value.to_case(Case::Snake))
                .replace(
                    &format!("{{{key}:UpperCamel}}"),
                    &value.to_case(Case::UpperCamel),
                )
                .replace(
                    &format!("{{{key}:UpperSnake}}"),
                    &value.to_case(Case::UpperSnake),
                )
                .replace(&format!("{{{key}:Flat}}"), &value.to_case(Case::Flat));
        }
        result
    }
}
