// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod cpp20;
mod rust;

pub use cozybuf_proc::descriptor;
pub use cozybuf_proc::main;

pub struct Descriptor<const N: usize> {
    pub name: &'static str,
    pub fields: [Field; N],
}
pub struct Field {
    pub name: &'static str,
    pub ty: Type,
}
pub enum Type {
    String,
    Bytes,
    U32,
}
