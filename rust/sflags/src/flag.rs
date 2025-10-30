// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod reference;

use core::fmt::Debug;
use core::fmt::Display;
use core::fmt::Formatter;
use core::fmt::Result;
use core::ops::Deref;
use std::sync::OnceLock;

use crate::Parse;
use crate::registry::SetFlag;

pub struct Flag<T> {
    value: OnceLock<T>,
    default: Option<fn() -> T>,
}
impl<T> Flag<T> {
    pub const fn new() -> Self {
        Self {
            value: OnceLock::new(),
            default: None,
        }
    }
    pub const fn with_default(mut self, default: fn() -> T) -> Self {
        self.default = Some(default);
        self
    }
    pub(crate) fn init(&self, value: T) {
        _ = self.value.set(value);
    }
    #[inline]
    pub fn get(&self) -> Option<&T> {
        self.value.get()
    }
    #[inline]
    pub fn value(&self) -> T
    where
        T: Copy,
    {
        *self.deref()
    }
}
impl<T: AsRef<S>, S> AsRef<S> for Flag<T> {
    #[inline]
    #[track_caller]
    fn as_ref(&self) -> &S {
        self.deref().as_ref()
    }
}
impl<T> Deref for Flag<T> {
    type Target = T;
    #[inline]
    #[track_caller]
    fn deref(&self) -> &T {
        self.get()
            .expect("Flag is uninitialized, call sflags::parse() or access via .get()")
    }
}
impl<T: Debug> Debug for Flag<T> {
    #[inline]
    #[track_caller]
    fn fmt(&self, f: &mut Formatter) -> Result {
        self.deref().fmt(f)
    }
}
impl<T: Display> Display for Flag<T> {
    #[inline]
    #[track_caller]
    fn fmt(&self, f: &mut Formatter) -> Result {
        self.deref().fmt(f)
    }
}
impl<T: PartialEq<S>, S> PartialEq<S> for Flag<T> {
    fn eq(&self, other: &S) -> bool {
        self.deref().eq(other)
    }
}
impl<T: Parse + Sync + Send> SetFlag for Flag<T> {
    fn set(&self, s: &[String]) {
        self.init(T::parse(s));
    }
    fn set_default(&self) -> bool {
        if let Some(default) = self.default {
            self.init((default)());
        }
        self.get().is_some()
    }
}
