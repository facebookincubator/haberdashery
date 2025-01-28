// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use perf_counters::counters::Counters;
use perf_counters::sched::pin_current_cpu;
use perf_events::Event;

sflags::define! {
    --event_group: Option<String>;
    --events: Option<String>;
}

const PORTS: &[Event] = &[
    Event::Cycles,
    Event::UopsExecutedPortPort0,
    Event::UopsExecutedPortPort1,
    Event::UopsExecutedPortPort5,
];
const PORTS234: &[Event] = &[
    Event::Cycles,
    Event::UopsExecutedPortPort2,
    Event::UopsExecutedPortPort3,
    Event::UopsExecutedPortPort4,
];
const PORTS567: &[Event] = &[
    Event::Cycles,
    Event::UopsExecutedPortPort5,
    Event::UopsExecutedPortPort6,
    Event::UopsExecutedPortPort7,
];
const PORTS8: &[Event] = &[
    Event::Cycles,
    Event::UopsExecutedPortPort0,
    Event::UopsExecutedPortPort1,
    Event::UopsExecutedPortPort2,
    Event::UopsExecutedPortPort3,
    Event::UopsExecutedPortPort4,
    Event::UopsExecutedPortPort5,
    Event::UopsExecutedPortPort6,
];
const POWER: &[Event] = &[
    Event::Cycles,
    Event::CorePowerLvl0TurboLicense,
    Event::CorePowerLvl1TurboLicense,
    Event::CorePowerLvl2TurboLicense,
];
const UOPS8: &[Event] = &[
    Event::Cycles,
    Event::Instructions,
    Event::UopsExecutedPortPort0,
    Event::UopsExecutedPortPort1,
    Event::UopsExecutedPortPort5,
    Event::UopsExecutedCoreCyclesGe1,
    Event::UopsExecutedCoreCyclesGe2,
    Event::UopsExecutedCoreCyclesGe3,
    Event::UopsExecutedCoreCyclesGe4,
];
pub const ALL: &[Event] = &[
    Event::Cycles,
    Event::UopsExecutedPortPort0,
    Event::UopsExecutedPortPort1,
    Event::UopsExecutedPortPort5,
    Event::CorePowerLvl0TurboLicense,
    Event::CorePowerLvl1TurboLicense,
    Event::CorePowerLvl2TurboLicense,
];

pub fn counters() -> Counters {
    pin_current_cpu().unwrap();

    let events: Vec<Event> = if let Some(group) = EVENT_GROUP.as_ref() {
        match group.as_str() {
            "" | "ports" | "ports015" => PORTS,
            "ports234" => PORTS234,
            "ports567" => PORTS567,
            "ports8" => PORTS8,
            "uops8" => UOPS8,
            "power" => POWER,
            "all" => ALL,
            "none" => &[],
            name => panic!("unknown events: {name}"),
        }
        .into()
    } else if let Some(events) = EVENTS.as_ref() {
        events.split(',').filter_map(Event::new).collect()
    } else {
        PORTS.into()
    };
    events.as_slice().try_into().unwrap()
}
