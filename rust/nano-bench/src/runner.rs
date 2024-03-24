// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::measure::Measure;

pub trait Runner: Send {
    fn run(&self, iters: u64, measure: &mut dyn Measure);
}

impl<F> Runner for F
where
    F: Fn(u64, &mut dyn Measure) + Send,
{
    fn run(&self, iters: u64, measure: &mut dyn Measure) {
        self(iters, measure);
    }
}
