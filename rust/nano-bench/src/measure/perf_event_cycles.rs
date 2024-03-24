// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use perf_event::events::Hardware;
use perf_event::Builder;
use perf_event::Counter;
use perf_event::Group;

use crate::measure::StartStop;

pub struct PerfEventCycles;
impl StartStop for PerfEventCycles {
    type Start = (Group, Counter);
    type Value = u64;
    type Error = anyhow::Error;

    #[inline(always)]
    fn start() -> Result<Self::Start, Self::Error> {
        let mut group = Group::new()?;
        let cycles = Builder::new()
            .group(&mut group)
            .kind(Hardware::CPU_CYCLES)
            .build()?;
        group.enable()?;
        Ok((group, cycles))
    }
    #[inline(always)]
    fn stop((mut group, mut cycles): Self::Start) -> Result<Self::Value, Self::Error> {
        group.disable()?;
        let cycles = cycles.read_count_and_time()?;
        if cycles.time_enabled != cycles.time_running {
            anyhow::bail!("measure was not properly scheduled");
        }
        Ok(cycles.count)
    }
}
