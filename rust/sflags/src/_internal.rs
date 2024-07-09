// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub use paste::paste;

pub use crate::convert::DefaultConvert;
pub use crate::registry::Registration;
pub use crate::registry::REGISTRY;

pub mod linkme {
    pub use linkme::*;
}
