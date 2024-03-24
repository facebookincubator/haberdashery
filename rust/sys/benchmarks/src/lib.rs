// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(feature = "buck2", feature(used_with_arg))]

pub mod aead;
pub mod mac;

use std::collections::BTreeMap;
use std::sync::OnceLock;

fn init_version_map() -> BTreeMap<(&'static str, &'static str), &'static str> {
    const SUMS: &str = include_str!(concat!(env!("OUT_DIR"), "/sha256sums.txt"));
    SUMS.split('\n')
        .filter_map(|line| {
            let mut iter = line.split(':');
            let _filename = iter.next()?;
            let algorithm = iter.next()?;
            let profile = iter.next()?;
            let sha256sum = iter.next()?;
            Some(((algorithm, profile), sha256sum))
        })
        .collect()
}
pub fn version(algorithm: &str, profile: &str) -> Option<&'static str> {
    static VERSION_MAP: OnceLock<BTreeMap<(&'static str, &'static str), &'static str>> =
        OnceLock::new();
    VERSION_MAP
        .get_or_init(init_version_map)
        .get(&(algorithm, profile))
        .copied()
}
