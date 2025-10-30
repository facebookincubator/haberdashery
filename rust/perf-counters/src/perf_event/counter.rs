// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::event::Event;
use crate::perf_event::handle::PerfEventOpenHandle;
use crate::perf_event::page::PerfEventMmapPage;

pub struct Counter {
    pub event: Event,
    file: PerfEventOpenHandle,
    #[cfg_attr(not(all(target_arch = "x86_64", feature = "rdpmc")), allow(unused))]
    page: PerfEventMmapPage,
}
impl Counter {
    pub fn new(event: Event) -> std::io::Result<Self> {
        let file = PerfEventOpenHandle::new(event)?;
        let page = PerfEventMmapPage::new(file.raw_fd());
        file.read()?;
        Ok(Self { event, file, page })
    }
    pub unsafe fn join(&self, event: Event) -> std::io::Result<Self> {
        let file = unsafe { self.file.join(event) }?;
        let page = PerfEventMmapPage::new(file.raw_fd());
        file.read()?;
        Ok(Self { event, file, page })
    }
    #[inline(always)]
    #[cfg(all(target_arch = "x86_64", feature = "rdpmc"))]
    pub fn offset(&self) -> i64 {
        self.page.offset
    }
    #[inline(always)]
    #[cfg(all(target_arch = "x86_64", feature = "rdpmc"))]
    pub fn read(&self) -> u64 {
        match self.page.event_index() {
            Some(index) => crate::perf_event::rdpmc::rdpmc(index),
            None => self.read_file(),
        }
    }
    #[inline(always)]
    #[cfg(not(all(target_arch = "x86_64", feature = "rdpmc")))]
    pub fn offset(&self) -> i64 {
        0
    }
    #[inline(always)]
    #[cfg(not(all(target_arch = "x86_64", feature = "rdpmc")))]
    pub fn read(&self) -> u64 {
        self.read_file()
    }
    #[inline(always)]
    fn read_file(&self) -> u64 {
        self.file.read().unwrap()
    }
}
