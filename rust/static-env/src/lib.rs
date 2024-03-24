// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::sync::OnceLock;

pub struct Env<T> {
    once: OnceLock<T>,
    name: &'static str,
    default: &'static str,
}
impl<T> Env<T> {
    pub const fn new(name: &'static str, default: &'static str) -> Self {
        Self {
            once: OnceLock::new(),
            name,
            default,
        }
    }
}
impl<T: for<'a> From<&'a str>> core::ops::Deref for Env<T> {
    type Target = T;
    fn deref(&self) -> &Self::Target {
        self.once.get_or_init(|| {
            std::env::var(self.name)
                .as_ref()
                .map(String::as_str)
                .unwrap_or(self.default)
                .into()
        })
    }
}
