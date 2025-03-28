// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn parse_hex(s: &str) -> Option<u32> {
    u32::from_str_radix(s.strip_prefix("0x")?, 16).ok()
}
#[derive(Copy, Clone, Debug, PartialEq)]
pub struct Event(EventInternal);
impl Event {
    pub const CYCLES: Self = Event(EventInternal::Named(perf_events::Event::Cycles));
    pub const INSTRUCTIONS: Self = Event(EventInternal::Named(perf_events::Event::Instructions));

    pub fn new(name: &'static str) -> Option<Self> {
        #[allow(clippy::manual_map)]
        if let Some(event) = perf_events::Event::new(name) {
            Some(Self(EventInternal::Named(event)))
        } else if let Ok(value) = name.parse::<u32>() {
            Some(Self(EventInternal::Raw(value, name)))
        } else if let Some(value) = parse_hex(name) {
            Some(Self(EventInternal::Raw(value, name)))
        } else {
            None
        }
    }
    pub fn value(&self) -> u32 {
        match self.0 {
            EventInternal::Named(event) => event.value(),
            EventInternal::Raw(value, _) => value,
        }
    }
    pub fn name(&self) -> &'static str {
        match self.0 {
            EventInternal::Named(event) => event.name(),
            EventInternal::Raw(_, name) => name,
        }
    }
}
impl core::fmt::Display for Event {
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {
        match self.0 {
            EventInternal::Named(event) => event.fmt(f),
            EventInternal::Raw(_, name) => name.fmt(f),
        }
    }
}

#[derive(Copy, Clone, Debug, PartialEq)]
enum EventInternal {
    Named(perf_events::Event),
    Raw(u32, &'static str),
}
