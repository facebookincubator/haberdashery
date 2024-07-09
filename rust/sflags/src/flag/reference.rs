// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::fmt::Debug;
use core::fmt::Display;
use core::fmt::Formatter;
use core::fmt::Result;
use core::marker::PhantomData;
use core::ops::Deref;
use std::sync::OnceLock;

use crate::registry::SetFlag;
use crate::Parse;

pub struct RefFlag<T: AsRef<R>, R: ?Sized> {
    value: OnceLock<T>,
    default: Option<fn() -> T>,
    _p: PhantomData<R>,
}
impl<T: AsRef<R>, R: ?Sized> RefFlag<T, R> {
    pub const fn new() -> Self {
        Self {
            value: OnceLock::new(),
            default: None,
            _p: PhantomData,
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
    fn get(&self) -> &T {
        self.value
            .get()
            .expect("Flag is uninitialized, call sflags::parse() or access via .get()")
    }
    #[inline]
    pub fn try_get(&self) -> Option<&R> {
        self.value.get().map(AsRef::as_ref)
    }
}
impl<T: AsRef<R>, R: ?Sized> Deref for RefFlag<T, R> {
    type Target = R;
    #[inline]
    #[track_caller]
    fn deref(&self) -> &R {
        self.get().as_ref()
    }
}
impl<T: AsRef<R>, R: ?Sized> AsRef<R> for RefFlag<T, R> {
    #[inline]
    #[track_caller]
    fn as_ref(&self) -> &R {
        self
    }
}
impl<T: AsRef<R> + Debug, R: ?Sized> Debug for RefFlag<T, R> {
    #[inline]
    #[track_caller]
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "{:?}", self.get())
    }
}
impl<T: AsRef<R> + Display, R: ?Sized> Display for RefFlag<T, R> {
    #[inline]
    #[track_caller]
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "{}", self.get())
    }
}
impl<T: AsRef<R>, R: PartialEq<R> + ?Sized> PartialEq<R> for RefFlag<T, R> {
    fn eq(&self, other: &R) -> bool {
        self.get().as_ref().eq(other)
    }
}
impl<T: AsRef<R> + Parse + Sync + Send, R: ?Sized + Sync> SetFlag for RefFlag<T, R> {
    fn set(&self, s: String) {
        self.init(T::parse(&s));
    }
    fn set_default(&self) -> bool {
        if let Some(default) = self.default {
            self.init((default)());
        }
        self.value.get().is_some()
    }
}
