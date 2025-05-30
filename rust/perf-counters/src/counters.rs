// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::Add;
use core::ops::Div;
use std::collections::BTreeMap;
use std::time::Duration;
use std::time::Instant;

use crate::event::Event;
use crate::fence::fence;
use crate::hardware_clock::HardwareClock;
#[cfg(not(target_arch = "x86_64"))]
use crate::hardware_clock::HardwareClock as Rdtscp;
#[cfg(target_arch = "x86_64")]
use crate::hardware_clock::Rdtscp;
use crate::perf_event::counter::Counter;

#[derive(Default)]
pub struct Counters(Vec<Counter>);
impl Counters {
    #[inline(always)]
    pub fn new(event: Event) -> std::io::Result<Self> {
        Ok(Self(vec![Counter::new(event)?]))
    }
    pub fn add(&mut self, event: Event) -> std::io::Result<()> {
        let counter = match self.0.first() {
            Some(parent) => unsafe { parent.join(event) }?,
            None => Counter::new(event)?,
        };
        self.0.push(counter);
        Ok(())
    }
    #[inline(always)]
    pub fn start<'a>(&'a self) -> CountersStart<'a> {
        CountersStart::new(self)
    }
    pub fn events(&self) -> impl Iterator<Item = Event> + '_ {
        self.0.iter().map(|c| c.event)
    }
}
impl TryFrom<&[Event]> for Counters {
    type Error = std::io::Error;
    fn try_from(events: &[Event]) -> std::io::Result<Self> {
        let mut counters = Counters::default();
        for &event in events.iter() {
            counters.add(event)?;
        }
        Ok(counters)
    }
}

#[derive(Clone)]
pub struct RdpmcStart<'a> {
    offset: i64,
    start: u64,
    counter: &'a Counter,
}
impl<'a> RdpmcStart<'a> {
    fn new(counter: &'a Counter) -> Self {
        let offset = counter.offset();
        Self {
            offset,
            start: 0,
            counter,
        }
    }
    #[inline(always)]
    fn start(&mut self) {
        self.start = self.counter.read();
    }
}

pub struct RdpmcEnd<'a> {
    offset: i64,
    start: u64,
    end: u64,
    counter: &'a Counter,
}
impl<'a> RdpmcEnd<'a> {
    #[inline(always)]
    fn new(rdpmc_start: RdpmcStart<'a>) -> Self {
        let counter = rdpmc_start.counter;
        Self {
            offset: rdpmc_start.offset,
            start: rdpmc_start.start,
            end: counter.read(),
            counter,
        }
    }
    fn result(self) -> (Event, u64) {
        let offset = self.counter.offset();
        let counter = self
            .end
            .wrapping_add_signed(offset)
            .wrapping_sub(self.start.wrapping_add_signed(self.offset));
        #[cfg(all(target_arch = "x86_64", feature = "rdpmc"))]
        let counter = counter & crate::perf_event::rdpmc::mask();
        (self.counter.event, counter)
    }
}

pub struct CountersStart<'a> {
    rdtsc: HardwareClock,
    rdtscp: Rdtscp,
    rdpmc: Vec<RdpmcStart<'a>>,
    instant: Instant,
}
impl<'a> CountersStart<'a> {
    #[inline(always)]
    fn new(counters: &'a Counters) -> Self {
        let instant = Instant::now();
        let mut rdpmc: Vec<RdpmcStart<'a>> = counters.0.iter().map(RdpmcStart::new).collect();
        fence();
        let rdtscp = Rdtscp::default();
        #[cfg(feature = "benchbench")]
        fence();
        rdpmc.iter_mut().for_each(RdpmcStart::start);
        #[cfg(feature = "benchbench")]
        fence();
        let rdtsc = HardwareClock::default();
        fence();
        Self {
            rdtsc,
            rdtscp,
            rdpmc,
            instant,
        }
    }
    #[inline(always)]
    pub fn elapsed(self) -> CountersElapsed {
        fence();
        let rdtsc = self.rdtsc.elapsed();
        #[cfg(feature = "benchbench")]
        fence();
        let rdpmc = self.rdpmc.into_iter().map(RdpmcEnd::new);
        #[cfg(feature = "benchbench")]
        fence();
        let rdtscp = self.rdtscp.elapsed();
        fence();
        let rdpmc = rdpmc.map(RdpmcEnd::result).collect();
        let duration = self.instant.elapsed();
        CountersElapsed {
            rdtsc,
            #[cfg(target_arch = "x86_64")]
            rdtscp: rdtscp.elapsed,
            #[cfg(not(target_arch = "x86_64"))]
            rdtscp,
            rdpmc,
            #[cfg(target_arch = "x86_64")]
            start_core: rdtscp.start_core,
            #[cfg(target_arch = "x86_64")]
            end_core: rdtscp.end_core,
            duration,
        }
    }
}

#[derive(Default, Clone)]
pub struct CountersElapsed<T = u64> {
    pub rdtsc: T,
    pub rdtscp: T,
    pub rdpmc: Vec<(Event, T)>,
    #[cfg(target_arch = "x86_64")]
    pub start_core: u32,
    #[cfg(target_arch = "x86_64")]
    pub end_core: u32,
    pub duration: Duration,
}
impl CountersElapsed<f64> {
    pub fn percent(&self) -> Self {
        let cycles = self.rdpmc_cycles().unwrap();
        let mut result = self / (cycles / 100.0);
        result.rdpmc.iter_mut().for_each(|(event, c)| {
            if *event == Event::CYCLES {
                *c = cycles
            }
        });
        result
    }
}
impl<T: Copy> CountersElapsed<T> {
    pub fn find(&self, target: Event) -> Option<T> {
        for &(event, count) in &self.rdpmc {
            if event == target {
                return Some(count);
            }
        }
        None
    }
    pub fn rdpmc_cycles(&self) -> Option<T> {
        self.find(Event::CYCLES)
    }
}
impl Div<f64> for &CountersElapsed<f64> {
    type Output = CountersElapsed<f64>;
    fn div(self, rhs: f64) -> CountersElapsed<f64> {
        let rdpmc = self
            .rdpmc
            .iter()
            .map(|&(event, counter)| (event, counter / rhs))
            .collect();
        CountersElapsed {
            rdtsc: self.rdtsc / rhs,
            rdtscp: self.rdtscp / rhs,
            rdpmc,
            #[cfg(target_arch = "x86_64")]
            start_core: self.start_core,
            #[cfg(target_arch = "x86_64")]
            end_core: self.end_core,
            duration: self.duration,
        }
    }
}
impl Div<f64> for &CountersElapsed<u64> {
    type Output = CountersElapsed<f64>;
    fn div(self, rhs: f64) -> CountersElapsed<f64> {
        let rdpmc = self
            .rdpmc
            .iter()
            .map(|&(event, counter)| (event, counter as f64 / rhs))
            .collect();
        CountersElapsed {
            rdtsc: self.rdtsc as f64 / rhs,
            rdtscp: self.rdtscp as f64 / rhs,
            rdpmc,
            #[cfg(target_arch = "x86_64")]
            start_core: self.start_core,
            #[cfg(target_arch = "x86_64")]
            end_core: self.end_core,
            duration: self.duration,
        }
    }
}
impl Div<f64> for CountersElapsed<u64> {
    type Output = CountersElapsed<f64>;
    fn div(self, rhs: f64) -> CountersElapsed<f64> {
        (&self) / rhs
    }
}
impl<T: Add<Output = T> + Copy> Add<&Self> for CountersElapsed<T> {
    type Output = Self;
    fn add(self, rhs: &Self) -> Self {
        let rdpmc = self
            .rdpmc
            .iter()
            .zip(rhs.rdpmc.iter())
            .map(|(lhs, rhs)| {
                assert_eq!(lhs.0, rhs.0);
                (lhs.0, lhs.1 + rhs.1)
            })
            .collect();
        Self {
            rdtsc: self.rdtsc + rhs.rdtsc,
            rdtscp: self.rdtscp + rhs.rdtscp,
            rdpmc,
            #[cfg(target_arch = "x86_64")]
            start_core: self.start_core,
            #[cfg(target_arch = "x86_64")]
            end_core: self.end_core,
            duration: self.duration + rhs.duration,
        }
    }
}
impl From<CountersElapsed<f64>> for BTreeMap<String, String> {
    fn from(counters: CountersElapsed<f64>) -> Self {
        let mut map: Self = [
            ("rdtsc".into(), format!("{:.6}", counters.rdtsc)),
            ("rdtscp".into(), format!("{:.6}", counters.rdtscp)),
            (
                "total_ns".into(),
                format!("{:.6}", counters.duration.as_nanos()),
            ),
        ]
        .into();
        for (event, count) in &counters.rdpmc {
            map.insert(event.to_string(), format!("{:.6}", count));
        }
        map
    }
}
