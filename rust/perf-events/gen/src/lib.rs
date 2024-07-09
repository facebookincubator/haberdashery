// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod csv;
pub mod json;

use anyhow::Context;
use convert_case::Case;
use convert_case::Casing;
use csv::Arch;

sflags::define! {
    --base_path: String = "./data/perfmon"
}

pub struct Events {
    pub arch: Arch,
    pub events: Vec<Event>,
}
impl Events {
    pub fn new(arch: &Arch) -> Self {
        Self {
            arch: arch.clone(),
            events: json::events(&arch.path)
                .into_iter()
                .map(Event::new)
                .filter_map(Result::ok)
                .collect(),
        }
    }
}

#[derive(Clone, PartialEq)]
pub struct Event {
    pub name: String,
    pub is_fixed: bool,
    pub code: u8,        // IA32_PERFEVTSELx[7:0]
    pub umask: u8,       // IA32_PERFEVTSELx[15:8]
    pub edge_detect: u8, // IA32_PERFEVTSELx[18]
    pub invert: u8,      // IA32_PERFEVTSELx[23]
    pub cmask: u8,       // IA32_PERFEVTSELx[31:24]
}
impl Event {
    pub fn new(e: json::Event) -> anyhow::Result<Self> {
        let code = e
            .event_code
            .strip_prefix("0x")
            .with_context(|| "EventCode hex missing '0x'")?;
        let code = hex::decode(code)?[0];
        let umask = e
            .u_mask
            .strip_prefix("0x")
            .with_context(|| "UMask hex missing '0x'")?;
        let umask = hex::decode(umask)?[0];
        let cmask = e.counter_mask.parse::<u8>()?;
        let edge_detect = e.edge_detect.parse::<u8>()?;
        let invert = match e.invert.as_str() {
            "0" => 0x00,
            "1" => 0x80,
            invert => anyhow::bail!("unexpected invert value: {invert}"),
        };
        Ok(Self {
            name: e.event_name,
            is_fixed: e.counter.starts_with("Fixed counter"),
            code,
            umask,
            invert,
            edge_detect,
            cmask,
        })
    }
    pub fn enum_name(&self) -> String {
        self.name.replace('.', "_").to_case(Case::UpperCamel)
    }
    pub fn value_string(&self) -> String {
        match (self.invert, self.cmask) {
            (0, 0) => format!("0x{:02x}{:02x}", self.umask, self.code),
            (invert, cmask) => format!(
                "0x{cmask:02x}{invert:02x}_{:02x}{:02x}",
                self.umask, self.code
            ),
        }
    }
}
