// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::PathBuf;

use convert_case::Case;
use convert_case::Casing;

pub fn archs(path: &str) -> Vec<Arch> {
    let content = std::fs::read_to_string(PathBuf::from(crate::BASE_PATH.as_str()).join(path))
        .unwrap_or_else(|e| panic!("Failed to read {path:?}. Try running gen/download.sh: {e}"));
    let mut archs: Vec<Arch> = content.lines().filter_map(Arch::new).collect();
    archs.sort();
    archs
}

#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord)]
pub struct Arch {
    pub name: String,
    pub model: u8,
    pub path: PathBuf,
}
impl Arch {
    pub fn new(s: &str) -> Option<Self> {
        let cells: Vec<&str> = s.split(',').collect();
        let family_model = cells.first()?;
        let model = family_model.split('-').nth(2)?;
        let model = *hex::decode(model).ok()?.first()?;
        let path = cells.get(2)?.strip_prefix('/')?;
        let name = path
            .split('/')
            .last()?
            .strip_suffix("_core.json")?
            .to_case(Case::Snake);
        if *cells.get(3)? != "core" {
            return None;
        }
        // cascadelakex can use skylakex data, as their cpuid values collide
        if path == "CLX/events/cascadelakex_core.json" {
            return None;
        }
        Some(Arch {
            name,
            model,
            path: path.into(),
        })
    }
    pub fn enum_name(&self) -> String {
        self.name.to_case(Case::UpperCamel)
    }
}
