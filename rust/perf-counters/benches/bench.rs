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
    --runs: i32 = 1;
}

#[cfg(target_arch = "x86_64")]
sflags::define! {
    --events: &str = "UOPS_EXECUTED_PORT_PORT_0,UOPS_EXECUTED_PORT_PORT_1,UOPS_EXECUTED_PORT_PORT_5";
}
#[cfg(target_arch = "aarch64")]
sflags::define! {
    --events: &str = "0x77,0x74,0x73,0x78,0x79"; // crypto, simd, int, branch, branch miss
}
#[cfg(debug_assertions)]
sflags::define! {
    --iters: usize = 1 << 10;
}
#[cfg(all(not(debug_assertions), target_arch = "x86_64"))]
sflags::define! {
    --iters: usize = 1 << 24;
}
#[cfg(all(not(debug_assertions), target_arch = "aarch64"))]
sflags::define! {
    --iters: usize = 1 << 20;
}

fn main() {
    sflags::parse_exact();
    pin_current_cpu().unwrap();

    let mut counters = Counters::new(Event::CYCLES).unwrap();
    #[cfg(target_arch = "aarch64")]
    counters.add(Event::INSTRUCTIONS).unwrap();
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

        let ratio = if cfg!(target_arch = "x86_64") {
            cycles
        } else {
            per_iter.find(Event::INSTRUCTIONS).unwrap()
        };
        let tsc = per_iter.rdtsc;
        let tscp = per_iter.rdtscp;
        for (event, counter) in per_iter.rdpmc {
            match event {
                Event::CYCLES => println!("\t{cycles:.2}\tcycles"),
                Event::INSTRUCTIONS => println!("\t{counter:.2}\t{event}"),
                _ => println!(
                    "{percent:.2}%\t{counter:.2}\t{event}",
                    percent = counter * 100.0 / ratio,
                ),
            }
        }
        println!(
            "{percent:.2}%\t{tsc:.2}\ttsc",
            percent = tsc * 100.0 / cycles,
        );
        println!(
            "{percent:.2}%\t{tscp:.2}\ttscp",
            percent = tscp * 100.0 / cycles,
        );
        println!("overhead: {:.6}% {overhead}", 100.0 * (tscp - tsc) / tscp);
        println!("overhead avg: {}", overhead_total / overhead_count);
        println!();

        #[cfg(target_arch = "x86_64")]
        {
            let start_core = per_iter.start_core;
            let end_core = per_iter.end_core;
            assert_eq!(
                start_core, end_core,
                "workload rescheduled: {start_core} != {end_core}"
            );
        }
        runs -= 1;
    }
}

#[cfg(target_arch = "x86_64")]
fn aes256(mut iterations: usize) {
    use core::arch::x86_64::*;
    // aes256 uses 15 rounds
    const ROUNDS: usize = 15;
    // The instruction aesenc has latency 4 and throughput 1 on skylake.
    //
    // To get maximal parallelism, LANES needs to be at least 5.
    // We use 8, a nice round number.
    //
    // This suggests we'll measure:
    //  - 112 cycles per iteration (8 128-bit blocks)
    //  - 14 cycles per 128-bit block
    //  - 0.875 cycles per byte
    //
    //  We measure 112 cycles per iteration, with more than 99% usage of port0
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
#[cfg(target_arch = "aarch64")]
fn aes256(mut iterations: usize) {
    use core::arch::aarch64::*;
    // aes256 uses 15 rounds
    const ROUNDS: usize = 15;
    // The instructions aese and aesmc share the same pipline and have
    // latency 2 and throughput 4. The single xor can run in parallel.
    //
    // Each round requires an aese instruction followed by a aesmc
    // instruction, which can be done with latency 4 and throughput 2. Thus,
    // LANES needs to be at least 8. Indeed, 8 LANES seems to be suitable in
    // practise.
    //
    // This suggests we'll measure per iteration:
    //  - 224 instructions
    //  - 216 crypto instructions (96.43%)
    //  - 8 simd instructions (3.57%)
    //  - 26 cycles per iteration
    //
    // 26 cycles per iteration is 0.231 cycles per byte
    //
    //  We measure 30 cycles per iteration, 226 instructions per iteration,
    //  95.58% crypto, 3.58% simd, and 0.2343 cycles per byte.
    //  Branch and decrement in the loop make up for the missing two
    //  instructions.
    const LANES: usize = 8;
    unsafe {
        let key: [uint8x16_t; ROUNDS] = [core::mem::transmute([0u8; 16]); ROUNDS];
        let data: [uint8x16_t; LANES] = [core::mem::transmute([0u8; 16]); LANES];
        let key = core::hint::black_box(key);
        let mut data = core::hint::black_box(data);
        while iterations > 0 {
            for &key in &key[0..ROUNDS - 2] {
                for block in &mut data {
                    *block = vaeseq_u8(*block, key);
                    *block = vaesmcq_u8(*block);
                }
            }
            for block in &mut data {
                *block = vaeseq_u8(*block, key[ROUNDS - 2]);
            }
            for block in &mut data {
                *block = veorq_u8(*block, key[ROUNDS - 1]);
            }
            iterations -= 1;
        }
        core::hint::black_box(data);
    }
}
