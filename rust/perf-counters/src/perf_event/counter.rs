// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use perf_events::Event;

use crate::perf_event::handle::PerfEventOpenHandle;
use crate::perf_event::page::PerfEventMmapPage;

pub struct Counter {
    pub event: Event,
    file: PerfEventOpenHandle,
    page: PerfEventMmapPage,
}
impl Counter {
    pub fn new(event: Event) -> std::io::Result<Self> {
        let file = PerfEventOpenHandle::new(event)?;
        let page = PerfEventMmapPage::new(file.raw_fd());
        if page.event_index().is_none() {
            return Err(std::io::ErrorKind::ConnectionRefused.into());
        }
        assert!(page.is_rdpmc_supported());
        file.read()?;
        Ok(Self { event, file, page })
    }
    pub unsafe fn join(&self, event: Event) -> std::io::Result<Self> {
        let file = unsafe { self.file.join(event) }?;
        let page = PerfEventMmapPage::new(file.raw_fd());
        if page.event_index().is_none() {
            return Err(std::io::ErrorKind::ConnectionRefused.into());
        }
        assert!(page.is_rdpmc_supported());
        file.read()?;
        Ok(Self { event, file, page })
    }
    #[inline(always)]
    pub fn rdpmc_offset(&self) -> i64 {
        self.page.offset
    }
    pub fn event_index(&self) -> u32 {
        self.page
            .event_index()
            .unwrap_or_else(|| panic!("Failed to get index for {}", self.event))
    }
}
