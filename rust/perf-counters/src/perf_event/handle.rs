// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::fs::File;

use perf_event_open_sys::bindings::perf_event_attr;
use perf_event_open_sys::perf_event_open;
use perf_events::Event;

pub struct PerfEventOpenHandle(File);
impl PerfEventOpenHandle {
    pub fn new(event: Event) -> std::io::Result<Self> {
        let mut attr: perf_event_attr = to_attr(event);
        attr.set_pinned(1);
        attr.set_exclusive(1);
        unsafe { Self::new_internal(attr, -1) }
    }
    pub unsafe fn join(&self, event: Event) -> std::io::Result<Self> {
        unsafe { Self::new_internal(to_attr(event), self.raw_fd()) }
    }
    unsafe fn new_internal(mut attr: perf_event_attr, group_fd: i32) -> std::io::Result<Self> {
        let fd = unsafe { perf_event_open(&mut attr, 0, -1, group_fd, 0) };
        use std::os::fd::FromRawFd;
        match fd < 0 {
            true => Err(std::io::Error::from_raw_os_error(fd)),
            false => Ok(Self(unsafe { File::from_raw_fd(fd) })),
        }
    }
    pub fn raw_fd(&self) -> i32 {
        use std::os::fd::AsRawFd;
        self.0.as_raw_fd()
    }
    pub fn read(&self) -> std::io::Result<u64> {
        let mut result = 0u64;
        let len = core::mem::size_of::<u64>();
        let res = unsafe {
            nix::libc::read(
                self.raw_fd(),
                (&mut result as *mut u64) as *mut core::ffi::c_void,
                len,
            )
        };
        match res <= 0 {
            true => Err(std::io::Error::from_raw_os_error(res as _)),
            false => Ok(result),
        }
    }
}

fn to_attr(event: Event) -> perf_event_attr {
    use perf_event_open_sys::bindings::*;
    let (type_, config) = match event {
        Event::Cycles => (PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES),
        Event::Instructions => (PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS),
        _ => (PERF_TYPE_RAW, event.value()),
    };
    let mut attr = perf_event_attr {
        size: std::mem::size_of::<perf_event_attr>() as u32,
        type_,
        config: config as u64,
        ..Default::default()
    };
    attr.set_disabled(0);
    attr.set_exclude_kernel(1);
    attr.set_exclude_hv(1);
    attr
}
