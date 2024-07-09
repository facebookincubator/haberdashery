// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;

use gen::csv::Arch;
use gen::Event;
use gen::Events;

const GENERATED: &str = concat!("// @", "generated");

fn main() {
    sflags::parse_exact();
    let archs = gen::csv::archs("mapfile.csv");
    // Some archs models share the same json, we zero the model to dedup
    let mut unique_archs: Vec<Arch> = archs
        .iter()
        .map(|a| Arch {
            model: 0,
            ..a.clone()
        })
        .collect();
    unique_archs.sort();
    unique_archs.dedup();
    let arch_events: Vec<Events> = unique_archs.iter().map(gen::Events::new).collect();
    let mut event_values = BTreeMap::<String, Option<Event>>::default();
    for events in &arch_events {
        for event in &events.events {
            if let Some(value) = event_values.get_mut(&event.name) {
                if value.as_ref() != Some(event) {
                    *value = None;
                }
            } else {
                event_values.insert(event.name.clone(), Some(event.clone()));
            }
        }
    }
    let global_events: Vec<Event> = event_values
        .into_iter()
        .filter_map(|(_, event)| event)
        .collect();
    for events in arch_events {
        let name = &events.arch.name;
        let enum_name = &events.arch.enum_name();
        let events: Vec<Event> = events
            .events
            .into_iter()
            .filter(|e| !global_events.contains(e))
            .collect();
        if events.is_empty() {
            println!("Skipping {name}.rs");
            continue;
        }
        let content = generate_profile_source(enum_name, &events, &global_events).unwrap();
        std::fs::write(format!("../src/{name}.rs"), content).unwrap();
        println!("Wrote {:3} events to {name}.rs", events.len());
    }

    let content = generate_lib_source(&archs, &global_events).unwrap();
    std::fs::write("../src/lib.rs", content).unwrap();
    println!("Wrote {:3} events to lib.rs", global_events.len());
}

fn generate_profile_source(
    arch_enum_name: &str,
    events: &[Event],
    global_events: &[Event],
) -> anyhow::Result<String> {
    let mut enum_values = vec![];
    let mut new_match_arms = vec![];
    let mut value_match_arms = vec![];
    let mut name_match_arms = vec![];
    for event in events {
        let event_name = &event.name;
        let enum_name = event.enum_name();
        let value = event.value_string();
        enum_values.push(format!(r"    {enum_name},"));
        new_match_arms.push(format!(
            r#"            "{event_name}" => crate::Event::{arch_enum_name}(Self::{enum_name}),"#
        ));
        value_match_arms.push(format!(r"            Self::{enum_name} => {value},"));
        name_match_arms.push(format!(
            r#"            Self::{enum_name} => "{event_name}","#
        ));
    }
    for event in global_events {
        let event_name = &event.name;
        let enum_name = event.enum_name();
        new_match_arms.push(format!(
            r#"            "{event_name}" => crate::Event::{enum_name},"#
        ));
    }
    let enum_value_lines = enum_values.join("\n");
    let new_fn_lines = new_match_arms.join("\n");
    let value_fn_lines = value_match_arms.join("\n");
    let name_fn_lines = name_match_arms.join("\n");

    Ok(format!(
        r#"{GENERATED}
#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Event {{
{enum_value_lines}
}}
impl Event {{
    pub fn new(name: &str) -> Option<crate::Event> {{
        Some(match name {{
{new_fn_lines}
            _ => return None,
        }})
    }}
    pub fn value(self) -> u32 {{
        match self {{
{value_fn_lines}
        }}
    }}
    pub fn name(self) -> &'static str {{
        match self {{
{name_fn_lines}
        }}
    }}
}}
impl core::fmt::Display for Event {{
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {{
        write!(f, "{{}}", self.name())
    }}
}}
"#
    ))
}

fn join_unique(mut v: Vec<String>) -> String {
    v.sort();
    v.dedup();
    v.join("\n")
}

fn generate_lib_source(archs: &[Arch], events: &[Event]) -> anyhow::Result<String> {
    let mut global_enum_values = vec![];
    let mut global_value_match_arms = vec![];
    let mut global_name_match_arms = vec![];
    for event in events {
        let event_name = &event.name;
        let enum_name = event.enum_name();
        let value = event.value_string();
        global_enum_values.push(format!(r"    {enum_name},"));
        global_value_match_arms.push(format!(r"            Self::{enum_name} => {value},"));
        global_name_match_arms.push(format!(
            r#"            Self::{enum_name} => "{event_name}","#
        ));
    }
    let global_enum_value_lines = join_unique(global_enum_values);
    let global_value_fn_lines = join_unique(global_value_match_arms);
    let global_name_fn_lines = join_unique(global_name_match_arms);

    let mut module_lines = vec![];
    let mut enum_values = vec![];
    let mut new_match_arms = vec![];
    let mut value_match_arms = vec![];
    let mut name_match_arms = vec![];
    for arch in archs {
        let name = &arch.name;
        let model = &arch.model;
        let enum_name = arch.enum_name();
        module_lines.push(format!("pub mod {name};"));
        enum_values.push(format!(r"    {enum_name}({name}::Event),"));
        new_match_arms.push(format!(
            r"            0x{model:2x} => {name}::Event::new(name),"
        ));
        value_match_arms.push(format!(
            r"            Self::{enum_name}(event) => event.value(),"
        ));
        name_match_arms.push(format!(
            r#"            Self::{enum_name}(event) => event.name(),"#
        ));
    }

    let module_lines = join_unique(module_lines);
    let enum_value_lines = join_unique(enum_values);
    let new_fn_lines = join_unique(new_match_arms);
    let value_fn_lines = join_unique(value_match_arms);
    let name_fn_lines = join_unique(name_match_arms);
    Ok(format!(
        r#"{GENERATED}
#![cfg_attr(not(test), no_std)]

{module_lines}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Event {{
    Cycles,
    Instructions,
{global_enum_value_lines}
{enum_value_lines}
}}
impl Event {{
    pub fn new(name: &str) -> Option<Self> {{
        match name {{
            "cycles" => return Some(Self::Cycles),
            "instructions" => return Some(Self::Instructions),
            _ => {{}}
        }}
        let eax = unsafe {{ core::arch::x86_64::__cpuid(1) }}.eax;
        let model = ((eax >> 4) & 0x0f) | ((eax >> 12) & 0xf0);
        match model {{
{new_fn_lines}
            _ => None,
        }}
    }}
    pub fn value(self) -> u32 {{
        match self {{
            Self::Cycles | Self::Instructions => 0,
{global_value_fn_lines}
{value_fn_lines}
        }}
    }}
    pub fn name(self) -> &'static str {{
        match self {{
            Self::Cycles => "cycles",
            Self::Instructions => "instructions",
{global_name_fn_lines}
{name_fn_lines}
        }}
    }}
}}
impl core::fmt::Display for Event {{
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {{
        write!(f, "{{}}", self.name())
    }}
}}
"#
    ))
}
