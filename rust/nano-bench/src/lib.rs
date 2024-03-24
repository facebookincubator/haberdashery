// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![cfg_attr(feature = "buck2", feature(used_with_arg))]

pub mod benchmark;
pub mod config;
pub mod csv;
pub mod measure;
pub mod report;
pub mod runner;
pub mod suite;
pub mod thread_pool;

pub use crate::benchmark::Benchmark;
pub use crate::config::Config;
pub use crate::measure::perf_event_cycles::PerfEventCycles;
pub use crate::measure::Measure;
pub use crate::report::Report;
pub use crate::report::ReportMetadata;
pub use crate::report::ReportVec;
pub use crate::runner::Runner;
pub use crate::suite::Suite;
pub use crate::thread_pool::ThreadPool;

#[cfg(any(test, feature = "macros"))]
pub mod linkme;
#[cfg(any(test, feature = "macros"))]
pub use nano_bench_proc::benchmark;
#[cfg(any(test, feature = "macros"))]
pub use nano_bench_proc::main;
