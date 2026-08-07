// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;

pub trait SetFlag: Sync {
    fn set(&self, s: &[String]);
    fn set_default(&self) -> bool;
    fn needs_value(&self) -> bool {
        true
    }
}

pub struct Registration {
    pub name: &'static str,
    flag: &'static dyn SetFlag,
}
impl Registration {
    pub const fn new(name: &'static str, flag: &'static dyn SetFlag) -> Self {
        Self { name, flag }
    }
    pub(crate) fn set_default(&self) -> bool {
        self.flag.set_default()
    }
}
#[linkme::distributed_slice]
pub static REGISTRY: [Registration];
pub(crate) fn get_flag(name: &str) -> Option<&'static dyn SetFlag> {
    for registration in REGISTRY {
        if registration.name == name {
            return Some(registration.flag);
        }
    }
    None
}
fn normalize_name(raw: &str) -> String {
    raw.replace('-', "_")
}
pub fn parse_exact() {
    let remainder = parse();
    if !remainder.is_empty() {
        panic!("Unused arguments: {}", remainder.join(", "));
    }
}
pub fn parse() -> Vec<String> {
    let mut leftovers = Vec::<String>::default();
    let mut flag_map = BTreeMap::<String, Vec<String>>::new();
    let mut args = std::env::args().skip(1);
    while let Some(arg) = args.next() {
        if arg == "--" {
            break;
        }
        let Some(name_value) = arg.strip_prefix("--") else {
            leftovers.push(arg);
            continue;
        };
        if let Some((raw_name, value)) = name_value.split_once('=') {
            let name = normalize_name(raw_name);
            if get_flag(&name).is_none() {
                leftovers.push(arg);
                continue;
            }
            flag_map.entry(name).or_default().push(value.to_string());
        } else {
            let name = normalize_name(name_value);
            if let Some(flag) = get_flag(&name) {
                if flag.needs_value() {
                    match args.next() {
                        Some(value) => {
                            flag_map.entry(name).or_default().push(value);
                        }
                        None => {
                            panic!("Flag --{} requires a value", name_value);
                        }
                    }
                } else {
                    flag_map.entry(name).or_default().push("true".to_string());
                }
            } else if let Some(stripped) = name.strip_prefix("no_").or(name.strip_prefix("no")) {
                if get_flag(stripped).is_some() {
                    flag_map
                        .entry(stripped.to_string())
                        .or_default()
                        .push("false".to_string());
                } else {
                    leftovers.push(arg);
                }
            } else {
                leftovers.push(arg);
            }
        }
    }
    for (name, values) in flag_map {
        let flag = get_flag(&name).unwrap();
        flag.set(&values);
    }
    args.for_each(|arg| leftovers.push(arg));
    for registration in REGISTRY {
        if !registration.set_default() {
            panic!("Flag not set: --{}", registration.name);
        }
    }
    leftovers
}
