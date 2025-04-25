// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use perf_counters::counters::Counters;
use perf_counters::event::Event;
use perf_counters::sched::pin_current_cpu;

sflags::define! {
    --event_group: Option<String>;
    --events: Option<String>;
}

const INSTRUCTIONS: &[&str] = &["cycles", "instructions"];

const PORTS: &[&str] = &[
    "cycles",
    "UOPS_EXECUTED_PORT_PORT_0",
    "UOPS_EXECUTED_PORT_PORT_1",
    "UOPS_EXECUTED_PORT_PORT_5",
];
const PORTS234: &[&str] = &[
    "cycles",
    "UOPS_EXECUTED_PORT_PORT_2",
    "UOPS_EXECUTED_PORT_PORT_3",
    "UOPS_EXECUTED_PORT_PORT_4",
];
const PORTS567: &[&str] = &[
    "cycles",
    "UOPS_EXECUTED_PORT_PORT_5",
    "UOPS_EXECUTED_PORT_PORT_6",
    "UOPS_EXECUTED_PORT_PORT_7",
];
const PORTS8: &[&str] = &[
    "cycles",
    "UOPS_EXECUTED_PORT_PORT_0",
    "UOPS_EXECUTED_PORT_PORT_1",
    "UOPS_EXECUTED_PORT_PORT_2",
    "UOPS_EXECUTED_PORT_PORT_3",
    "UOPS_EXECUTED_PORT_PORT_4",
    "UOPS_EXECUTED_PORT_PORT_5",
    "UOPS_EXECUTED_PORT_PORT_6",
];
const POWER: &[&str] = &[
    "cycles",
    "CORE_POWER_LVL0_TURBO_LICENSE",
    "CORE_POWER_LVL1_TURBO_LICENSE",
    "CORE_POWER_LVL2_TURBO_LICENSE",
];
const UOPS8: &[&str] = &[
    "cycles",
    "instructions",
    "UOPS_EXECUTED_PORT_PORT_0",
    "UOPS_EXECUTED_PORT_PORT_1",
    "UOPS_EXECUTED_PORT_PORT_5",
    "UOPS_EXECUTED_CORE_CYCLES_GE_1",
    "UOPS_EXECUTED_CORE_CYCLES_GE_2",
    "UOPS_EXECUTED_CORE_CYCLES_GE_3",
    "UOPS_EXECUTED_CORE_CYCLES_GE_4",
];
const ALL: &[&str] = &[
    "cycles",
    "UOPS_EXECUTED_PORT_PORT_0",
    "UOPS_EXECUTED_PORT_PORT_1",
    "UOPS_EXECUTED_PORT_PORT_5",
    "CORE_POWER_LVL0_TURBO_LICENSE",
    "CORE_POWER_LVL1_TURBO_LICENSE",
    "CORE_POWER_LVL2_TURBO_LICENSE",
];

#[cfg(target_arch = "x86_64")]
const DEFAULT: &[&str] = PORTS;

#[cfg(target_arch = "aarch64")]
const DEFAULT: &[&str] = &[
    "cycles",
    "instructions",
    "0x0070", // load
    "0x0071", // store
    "0x0073", // arithmatic
    "0x0074", // simd
    "0x0077", // crypto
];

fn parse_flags() -> Vec<&'static str> {
    if let Some(group) = EVENT_GROUP.as_ref() {
        let events = match group.as_str() {
            "instructions" => INSTRUCTIONS,
            "ports" | "ports015" => PORTS,
            "ports234" => PORTS234,
            "ports567" => PORTS567,
            "ports8" => PORTS8,
            "uops8" => UOPS8,
            "power" => POWER,
            "all" => ALL,
            "none" => &[],
            group => panic!("unknown event group: {group}"),
        };
        events.into()
    } else if let Some(events) = EVENTS.as_ref() {
        events.split(',').collect()
    } else {
        DEFAULT.into()
    }
}
pub fn counters() -> Counters {
    pin_current_cpu().unwrap();

    let events: Vec<Event> = parse_flags()
        .iter()
        .map(|name| Event::new(name).unwrap_or_else(|| panic!("Unknown event: {name}")))
        .collect();
    events.as_slice().try_into().unwrap()
}
