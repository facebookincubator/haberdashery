// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod m128i;
mod m256i;
mod m512i;

pub use m128i::M128i as Block128;
pub use m256i::M256i as Block256;
pub use m512i::M512i as Block512;
