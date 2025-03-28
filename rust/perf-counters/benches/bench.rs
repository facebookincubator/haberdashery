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
    --bench: bool = false;
    --events: &str = "UOPS_DISPATCHED_PORT_0,UOPS_DISPATCHED_PORT_1,UOPS_DISPATCHED_PORT_5";
    --runs: i32 = 1;
}
#[cfg(debug_assertions)]
sflags::define! {
    --iters: usize = 1 << 10;
}
#[cfg(not(debug_assertions))]
sflags::define! {
    --iters: usize = 1 << 20;
}

fn main() {
    sflags::parse_exact();
    pin_current_cpu().unwrap();

    let mut counters = Counters::new(Event::CYCLES).unwrap();
    for event in EVENTS.split(',').filter_map(Event::new) {
        counters.add(event).unwrap();
    }

    let mut overhead_total = 0;
    let mut overhead_count = 0;
    let mut runs = RUNS.value();
    let iterations = ITERS.value();
    while runs != 0 {
        let start = counters.start();
        aes256(iterations);
        let elapsed = start.elapsed();
        let overhead = elapsed.rdtscp - elapsed.rdtsc;
        overhead_total += overhead;
        overhead_count += 1;
        let per_iter = elapsed / (iterations as f64);
        let cycles = per_iter.find(Event::CYCLES).unwrap();
        let tsc = per_iter.rdtsc;
        let tscp = per_iter.rdtscp;
        println!("\t{cycles:.2}\tcycles");
        println!(
            "{percent:.2}%\t{tsc:.2}\ttsc",
            percent = tsc * 100.0 / cycles,
        );
        println!(
            "{percent:.2}%\t{tscp:.2}\ttscp",
            percent = tscp * 100.0 / cycles,
        );
        for (event, counter) in per_iter.rdpmc {
            if event != Event::CYCLES {
                println!(
                    "{percent:.2}%\t{counter:.2}\t{event}",
                    percent = counter * 100.0 / cycles,
                );
            }
        }
        println!("overhead: {:.6}% {overhead}", 100.0 * (tscp - tsc) / tscp);
        println!("overhead avg: {}", overhead_total / overhead_count);
        println!();

        let start_core = per_iter.start_core;
        let end_core = per_iter.end_core;
        assert_eq!(
            start_core, end_core,
            "workload rescheduled: {start_core} != {end_core}"
        );
        runs -= 1;
    }
}

fn aes256(mut iterations: usize) {
    use core::arch::x86_64::*;
    // aes256 uses 15 rounds
    const ROUNDS: usize = 15;
    // the aesenc instruction as latency 4 and throughput 1 on skylake.
    // To get maximal parallelism, LANES needs to be at least 5.
    // We use 8, a nice round number.
    const LANES: usize = 8;
    unsafe {
        let key = core::hint::black_box([_mm_setzero_si128(); ROUNDS]);
        let mut data = [core::hint::black_box(_mm_setzero_si128()); LANES];
        while iterations > 0 {
            for block in &mut data {
                *block = _mm_xor_si128(*block, key[0]);
            }
            for &key in &key[1..ROUNDS - 1] {
                for block in &mut data {
                    *block = _mm_aesenc_si128(*block, key);
                }
            }
            for block in &mut data {
                *block = _mm_aesenclast_si128(*block, key[ROUNDS - 1]);
            }
            iterations -= 1;
        }
        core::hint::black_box(data);
    }
}
