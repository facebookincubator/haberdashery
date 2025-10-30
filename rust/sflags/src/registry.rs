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
fn split(name_value: &str) -> Option<(String, &str)> {
    let (name, value) = match name_value.split_once('=') {
        Some((name, value)) => (name, Some(value)),
        None => (name_value, None),
    };
    let name = name.replace('-', "_");
    let name = name.as_str();
    let (name, value) = match (value, name.strip_prefix("no_").or(name.strip_prefix("no"))) {
        (Some(value), _) => (name, value),
        (None, Some(name)) => (name, "false"),
        (None, None) => (name, "true"),
    };
    Some((name.into(), value))
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
    for arg in args.by_ref() {
        if arg == "--" {
            break;
        }
        let Some(name_value) = arg.strip_prefix("--") else {
            leftovers.push(arg);
            continue;
        };
        let Some((name, value)) = split(name_value) else {
            leftovers.push(arg);
            continue;
        };
        if get_flag(&name).is_none() {
            leftovers.push(arg);
            continue;
        }
        if let Some(values) = flag_map.get_mut(&name) {
            values.push(value.to_string());
        } else {
            flag_map.insert(name, vec![value.to_string()]);
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
