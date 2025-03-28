// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use nix::libc;
use nix::sched::sched_setaffinity;
use nix::sched::CpuSet;
use nix::unistd::Pid;

fn sched_getcpu() -> nix::Result<usize> {
    let res = unsafe { libc::sched_getcpu() };
    nix::errno::Errno::result(res).map(|int| int as usize)
}

pub fn pin_current_cpu() -> nix::Result<usize> {
    let cpu = sched_getcpu()?;
    let mut cpu_set = CpuSet::new();
    cpu_set.set(cpu)?;
    sched_setaffinity(Pid::this(), &cpu_set)?;
    Ok(cpu)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::hardware_clock::Rdtscp;

    #[test]
    fn same_core() {
        let core = pin_current_cpu().unwrap() as u32;
        let rdtscp = Rdtscp::default();
        let result = rdtscp.elapsed();
        assert_eq!(result.start_core, core);
        assert_eq!(result.end_core, core);
    }
}
