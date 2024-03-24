// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::time::Duration;
use std::time::Instant;

use crate::measure::StartStop;

pub struct Wallclock;
impl StartStop for Wallclock {
    type Start = Instant;
    type Value = Duration;
    type Error = core::convert::Infallible;

    fn start() -> Result<Self::Start, Self::Error> {
        Ok(Instant::now())
    }
    fn stop(instant: Self::Start) -> Result<Self::Value, Self::Error> {
        Ok(instant.elapsed())
    }
}
