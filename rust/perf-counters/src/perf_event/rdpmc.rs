// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[inline(always)]
pub fn rdpmc(event: u32) -> u64 {
    let eax: u32;
    let edx: u32;
    unsafe {
        core::arch::asm!(
            "rdpmc",
            out("eax") eax,
            in("ecx") event,
            out("edx") edx,
            options(
                att_syntax,
                nomem,
                nostack,
                preserves_flags,
            ),
        );
    }
    (edx as u64) << 32 | eax as u64
}
#[inline]
pub fn mask() -> u64 {
    const SHIFT: usize = 16;
    const MASK: u32 = 0xff;
    let leaf_0ah = unsafe { core::arch::x86_64::__cpuid(0x0a) };
    let mut width = (leaf_0ah.eax >> SHIFT) & MASK;
    if width == 0 {
        width = 40;
    }
    unsafe { core::arch::x86_64::_bzhi_u64(u64::MAX, width) }
}
