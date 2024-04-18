// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod perf_event_cycles;
pub mod rdtsc;
pub mod wallclock;

pub use perf_event_cycles::PerfEventCycles;
pub use rdtsc::Rdtsc;

#[derive(Clone, Copy, PartialEq)]
pub enum Metric {
    PerfEventCycles,
    Rdtsc,
    Wallclock,
}

pub trait Measure {
    fn start(&mut self);
    fn stop(&mut self);
    fn skip(&mut self);
}

impl<T: StartStop> Measure for MeasureState<T> {
    fn start(&mut self) {
        *self = match T::start() {
            Ok(start) => Self::Start(start),
            Err(e) => Self::Err(e),
        };
    }
    fn stop(&mut self) {
        *self = match core::mem::take(self) {
            Self::Start(start) => match T::stop(start) {
                Ok(metric) => Self::Success(metric),
                Err(e) => Self::Err(e),
            },
            x => x,
        };
    }
    fn skip(&mut self) {
        *self = match core::mem::take(self) {
            Self::Err(x) => Self::Err(x),
            _ => Self::Skip,
        };
    }
}

pub trait StartStop {
    type Start;
    type Value: Clone;
    type Error;

    fn start() -> Result<Self::Start, Self::Error>;
    fn stop(start: Self::Start) -> Result<Self::Value, Self::Error>;
}

pub(crate) enum MeasureState<T: StartStop> {
    Ready,
    Start(T::Start),
    Success(T::Value),
    Skip,
    Err(T::Error),
}

impl<T: StartStop> MeasureState<T> {
    pub fn value(&self) -> Option<T::Value> {
        match self {
            Self::Success(metric) => Some(metric.clone()),
            _ => None,
        }
    }
}

impl<T: StartStop> Default for MeasureState<T> {
    fn default() -> Self {
        Self::Ready
    }
}
