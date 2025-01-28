// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod benchmark;
pub mod benchmark_main;
pub mod counters;
pub mod csv;
pub mod flags;
pub mod md;
pub mod measure;
mod perf;
pub mod table;

pub mod _internal {
    pub mod linkme {
        pub use linkme::*;
    }
}

pub trait Measure {
    fn start(&mut self);
    fn stop(&mut self);
    fn skip(&mut self);
}
pub use perf_caliper_proc::benchmark;
