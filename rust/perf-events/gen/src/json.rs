// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;
use std::path::PathBuf;

use serde::Deserialize;

pub fn events(path: &Path) -> Vec<Event> {
    let content = std::fs::read_to_string(PathBuf::from(crate::BASE_PATH.as_str()).join(path))
        .unwrap_or_else(|e| panic!("Failed to read {path:?}. Try running gen/download.sh: {e}"));
    File::new(&content)
        .unwrap_or_else(|e| panic!("Failed to parse {path:?}: {e}"))
        .events()
}

#[derive(Deserialize)]
#[serde(rename_all = "PascalCase")]
pub struct File {
    pub events: Vec<Event>,
}
impl File {
    pub fn new(s: &str) -> Result<Self, serde_json::Error> {
        serde_json::from_str(s)
    }
    pub fn events(self) -> Vec<Event> {
        let mut events: Vec<Event> = self
            .events
            .into_iter()
            .map(|mut e| {
                e.event_name = e.event_name.replace('.', "_");
                e
            })
            .collect();
        events.sort();
        events.dedup();
        events
    }
}
#[derive(Deserialize, PartialEq, Eq, PartialOrd, Ord)]
#[serde(rename_all = "PascalCase")]
pub struct Event {
    pub event_code: String,
    pub u_mask: String,
    pub event_name: String,
    pub counter: String,
    pub counter_mask: String,
    pub invert: String,
    pub any_thread: Option<String>,
    pub edge_detect: String,
}
