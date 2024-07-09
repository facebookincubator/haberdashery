// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use perf_event_open_sys::bindings::perf_event_mmap_page;

use crate::mmap::Mmap;

pub struct PerfEventMmapPage(Mmap<perf_event_mmap_page>);
impl PerfEventMmapPage {
    pub fn new(fd: i32) -> Self {
        Self(Mmap::new(fd))
    }
    pub fn is_rdpmc_supported(&self) -> bool {
        unsafe { self.0.__bindgen_anon_1.__bindgen_anon_1 }
            ._bitfield_1
            .get_bit(2)
    }
    #[track_caller]
    pub fn event_index(&self) -> Option<u32> {
        self.0.index.checked_sub(1)
    }
}
impl core::ops::Deref for PerfEventMmapPage {
    type Target = perf_event_mmap_page;
    fn deref(&self) -> &Self::Target {
        self.0.deref()
    }
}
