#![no_std]
// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cfg(not(all(target_arch = "aarch64", target_os = "linux")))]
compile_error!("target-support-aarch64 currently supports aarch64 Linux");

#[cfg(feature = "neoversev2")]
#[inline(always)]
pub fn is_supported() -> bool {
    let isar0 = read_id_aa64isar0_el1();
    let pfr0 = read_id_aa64pfr0_el1();
    let zfr0 = read_id_aa64zfr0_el1();

    // AES >= 2 includes AES and PMULL; SHA3 >= 1 includes EOR3.
    field(isar0, 4) >= 2
        && field(isar0, 32) >= 1
        && field(pfr0, 20) != 0xf // Advanced SIMD
        && field(pfr0, 32) >= 1 // SVE
        && field(zfr0, 0) >= 1 // SVE2
        && field(zfr0, 32) >= 1 // SVE2 SHA3
}

#[cfg(feature = "neoversev2")]
#[inline(always)]
const fn field(register: u64, shift: u32) -> u64 {
    (register >> shift) & 0xf
}

#[cfg(feature = "neoversev2")]
#[inline(always)]
fn read_id_aa64isar0_el1() -> u64 {
    let value;
    unsafe {
        core::arch::asm!(
            "mrs {value}, ID_AA64ISAR0_EL1",
            value = out(reg) value,
            options(nomem, nostack, preserves_flags),
        );
    }
    value
}

#[cfg(feature = "neoversev2")]
#[inline(always)]
fn read_id_aa64pfr0_el1() -> u64 {
    let value;
    unsafe {
        core::arch::asm!(
            "mrs {value}, ID_AA64PFR0_EL1",
            value = out(reg) value,
            options(nomem, nostack, preserves_flags),
        );
    }
    value
}

#[cfg(feature = "neoversev2")]
#[inline(always)]
fn read_id_aa64zfr0_el1() -> u64 {
    let value;
    unsafe {
        core::arch::asm!(
            "mrs {value}, ID_AA64ZFR0_EL1",
            value = out(reg) value,
            options(nomem, nostack, preserves_flags),
        );
    }
    value
}

#[cfg(not(feature = "neoversev2"))]
#[inline(always)]
pub fn is_supported() -> bool {
    false
}
