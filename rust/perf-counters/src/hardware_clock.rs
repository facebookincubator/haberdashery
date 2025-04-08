// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cfg(target_arch = "x86_64")]
mod rdtsc;
#[cfg(target_arch = "x86_64")]
mod rdtscp;

#[cfg(target_arch = "x86_64")]
pub use rdtsc::Rdtsc as HardwareClock;
#[cfg(target_arch = "x86_64")]
pub use rdtscp::Rdtscp;

#[cfg(target_arch = "aarch64")]
mod aarch64;
#[cfg(target_arch = "aarch64")]
pub use aarch64::*;
