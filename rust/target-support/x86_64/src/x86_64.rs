// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[cfg(any(feature = "skylakex", feature = "zen4", feature = "sapphirerapids"))]
use core::arch::x86_64::__cpuid;
#[cfg(any(feature = "skylakex", feature = "zen4", feature = "sapphirerapids"))]
use core::arch::x86_64::__cpuid_count;
#[cfg(any(feature = "skylakex", feature = "zen4", feature = "sapphirerapids"))]
use core::arch::x86_64::_xgetbv;

#[cfg(not(any(feature = "skylakex", feature = "zen4", feature = "sapphirerapids")))]
#[inline(always)]
pub fn is_supported() -> bool {
    false
}

#[cfg(all(
    feature = "skylakex",
    not(any(feature = "zen4", feature = "sapphirerapids"))
))]
#[inline(always)]
pub fn is_supported() -> bool {
    const LEAF_1_ECX: u32 = (1 << 0)  // SSE3
        | (1 << 1)  // PCLMULQDQ
        | (1 << 9)  // SSSE3
        | (1 << 12) // FMA
        | (1 << 13) // CMPXCHG16B
        | (1 << 19) // SSE4.1
        | (1 << 20) // SSE4.2
        | (1 << 22) // MOVBE
        | (1 << 23) // POPCNT
        | (1 << 25) // AES
        | (1 << 26) // XSAVE
        | (1 << 27) // OSXSAVE
        | (1 << 28) // AVX
        | (1 << 29) // F16C
        | (1 << 30); // RDRAND
    const LEAF_1_EDX: u32 = (1 << 24) // FXSR
        | (1 << 25) // SSE
        | (1 << 26); // SSE2
    const LEAF_7_EBX: u32 = (1 << 3)  // BMI1
        | (1 << 5)  // AVX2
        | (1 << 8)  // BMI2
        | (1 << 16) // AVX512F
        | (1 << 17) // AVX512DQ
        | (1 << 18) // RDSEED
        | (1 << 19) // ADX
        | (1 << 28) // AVX512CD
        | (1 << 30) // AVX512BW
        | (1 << 31); // AVX512VL
    const XCR0_AVX512_STATE: u64 = (1 << 1) // XMM
        | (1 << 2) // YMM
        | (1 << 5) // opmask
        | (1 << 6) // ZMM high 256
        | (1 << 7); // high sixteen ZMM registers

    // SAFETY: CPUID is available on x86_64. XGETBV is executed only after
    // OSXSAVE is confirmed.
    unsafe {
        let max_basic = __cpuid(0).eax;
        if max_basic < 7 {
            return false;
        }

        let leaf_1 = __cpuid(1);
        if leaf_1.ecx & LEAF_1_ECX != LEAF_1_ECX
            || leaf_1.edx & LEAF_1_EDX != LEAF_1_EDX
            || _xgetbv(0) & XCR0_AVX512_STATE != XCR0_AVX512_STATE
        {
            return false;
        }

        let leaf_7 = __cpuid_count(7, 0);
        leaf_7.ebx & LEAF_7_EBX == LEAF_7_EBX
    }
}

#[cfg(any(feature = "zen4", feature = "sapphirerapids"))]
#[inline(always)]
pub fn is_supported() -> bool {
    const LEAF_1_ECX: u32 = (1 << 0)  // SSE3
        | (1 << 1)  // PCLMULQDQ
        | (1 << 9)  // SSSE3
        | (1 << 12) // FMA
        | (1 << 13) // CMPXCHG16B
        | (1 << 19) // SSE4.1
        | (1 << 20) // SSE4.2
        | (1 << 22) // MOVBE
        | (1 << 23) // POPCNT
        | (1 << 25) // AES
        | (1 << 26) // XSAVE
        | (1 << 27) // OSXSAVE
        | (1 << 28) // AVX
        | (1 << 29) // F16C
        | (1 << 30); // RDRAND
    const LEAF_1_EDX: u32 = (1 << 24) // FXSR
        | (1 << 25) // SSE
        | (1 << 26); // SSE2
    const LEAF_7_EBX: u32 = (1 << 3)  // BMI1
        | (1 << 5)  // AVX2
        | (1 << 8)  // BMI2
        | (1 << 16) // AVX512F
        | (1 << 17) // AVX512DQ
        | (1 << 18) // RDSEED
        | (1 << 19) // ADX
        | (1 << 21) // AVX512IFMA
        | (1 << 28) // AVX512CD
        | (1 << 29) // SHA
        | (1 << 30) // AVX512BW
        | (1 << 31); // AVX512VL
    const LEAF_7_ECX: u32 = (1 << 1)  // AVX512VBMI
        | (1 << 6)  // AVX512VBMI2
        | (1 << 8)  // GFNI
        | (1 << 9)  // VAES
        | (1 << 10) // VPCLMULQDQ
        | (1 << 11) // AVX512VNNI
        | (1 << 12) // AVX512BITALG
        | (1 << 14); // AVX512VPOPCNTDQ
    const LEAF_7_1_EAX: u32 = (1 << 5) // AVX512BF16
        | if cfg!(feature = "sapphirerapids") {
            1 << 4 // AVX-VNNI
        } else {
            0
        };
    const LEAF_7_1_EDX: u32 =
        if cfg!(feature = "sapphirerapids") && cfg!(target_feature = "avx512fp16") {
            1 << 23 // AVX512-FP16
        } else {
            0
        };
    const LEAF_D_1_EAX: u32 = (1 << 0) // XSAVEOPT
        | (1 << 1) // XSAVEC
        | (1 << 3); // XSAVES
    const EXTENDED_1_ECX: u32 = (1 << 5) // LZCNT
        | if cfg!(feature = "zen4") {
            1 << 6 // SSE4A
        } else {
            0
        };
    const XCR0_AVX512_STATE: u64 = (1 << 1) // XMM
        | (1 << 2) // YMM
        | (1 << 5) // opmask
        | (1 << 6) // ZMM high 256
        | (1 << 7); // high sixteen ZMM registers

    // SAFETY: CPUID is available on x86_64. XGETBV is executed only after
    // OSXSAVE is confirmed.
    unsafe {
        let max_basic = __cpuid(0).eax;
        if max_basic < 0x0d {
            return false;
        }

        let leaf_1 = __cpuid(1);
        if leaf_1.ecx & LEAF_1_ECX != LEAF_1_ECX
            || leaf_1.edx & LEAF_1_EDX != LEAF_1_EDX
            || _xgetbv(0) & XCR0_AVX512_STATE != XCR0_AVX512_STATE
        {
            return false;
        }

        let leaf_7 = __cpuid_count(7, 0);
        if leaf_7.ebx & LEAF_7_EBX != LEAF_7_EBX || leaf_7.ecx & LEAF_7_ECX != LEAF_7_ECX {
            return false;
        }

        let leaf_7_1 = __cpuid_count(7, 1);
        if leaf_7_1.eax & LEAF_7_1_EAX != LEAF_7_1_EAX
            || leaf_7_1.edx & LEAF_7_1_EDX != LEAF_7_1_EDX
        {
            return false;
        }

        let leaf_d_1 = __cpuid_count(0x0d, 1);
        if leaf_d_1.eax & LEAF_D_1_EAX != LEAF_D_1_EAX {
            return false;
        }

        let max_extended = __cpuid(0x8000_0000).eax;
        if max_extended < 0x8000_0001 {
            return false;
        }
        let extended_1 = __cpuid(0x8000_0001);
        extended_1.ecx & EXTENDED_1_ECX == EXTENDED_1_ECX
    }
}
