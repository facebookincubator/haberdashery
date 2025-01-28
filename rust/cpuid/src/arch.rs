// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::feature::*;

// ISA extension mappings are taking with modifications from GCC:
// https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html
// Modifications are listed in each function

#[inline(always)]
pub fn haswell() -> FeatureSet {
    // GCC's haswell extensions plus AES
    MOVBE
        | MMX
        | SSE
        | SSE2
        | SSE3
        | SSSE3
        | SSE4_1
        | SSE4_2
        | POPCNT
        | FXSR
        | AVX
        | XSAVE
        | PCLMULQDQ
        | FSGSBASE
        | RDRAND
        | F16C
        | AVX2
        | BMI1
        | BMI2
        | FMA
        | AES
}
#[inline(always)]
pub fn broadwell() -> FeatureSet {
    // GCC's broadwell extensions plus aes minux lzcnt
    haswell() // line break
        | RDSEED
        | ADX
}
#[inline(always)]
pub fn skylake() -> FeatureSet {
    // GCC's skylake extensions minus xsavec, xsaves, lzcnt
    broadwell() // line break
        | CLFLUSHOPT
}
#[inline(always)]
pub fn skylakex() -> FeatureSet {
    // GCC's skylake-avx512 extensions minus xsavec, xsaves, lzcnt
    skylake() // line break
        | AVX512F
        | CLWB
        | AVX512VL
        | AVX512BW
        | AVX512DQ
        | AVX512CD
}
#[inline(always)]
pub fn cannonlake() -> FeatureSet {
    // GCC's cannonlake extensions minus xsavec, xsaves, lzcnt
    skylakex() // line break
        | PKU
        | AVX512VBMI
        | AVX512IFMA
        | SHA_NI
}
#[inline(always)]
pub fn icelake() -> FeatureSet {
    // GCC's icelake extensions minus xsavec, xsaves, lzcnt
    cannonlake() // line break
        | AVX512_VNNI
        | GFNI
        | VAES
        | AVX512_VBMI2
        | VPCLMULQDQ
        | AVX512_BITALG
        | RDPID
        | AVX512_VPOPCNTDQ
}
#[inline(always)]
pub fn tigerlake() -> FeatureSet {
    // GCC's tigerlake extensions minus xsavec, xsaves, lzcnt
    icelake() // line break
        | MOVDIRI
        | MOVDIR64B
        | AVX512_VP2INTERSECT
        | KL
}
#[inline(always)]
pub fn zen3() -> FeatureSet {
    // GCC's znver3 minux xsavec, xsaves, wbnoinvd
    MOVBE
        | MMX
        | SSE
        | SSE2
        | SSE3
        | SSSE3
        | SSE4_1
        | SSE4_2
        | POPCNT
        | AVX
        | PCLMULQDQ
        | FSGSBASE
        | F16C
        | AVX2
        | BMI1
        | BMI2
        | CLWB
        | FMA
        | RDSEED
        | ADX
        | AES
        | CLFLUSHOPT
        | PKU
        | SHA_NI
        | VAES
        | VPCLMULQDQ
        | RDPID
}
#[inline(always)]
pub fn zen4() -> FeatureSet {
    // GCC's znver4 minux xsavec, xsaves, wbnoinvd
    zen3() // line break
        | RDPID
        | AVX512F
        | AVX512DQ
        | AVX512IFMA
        | AVX512CD
        | AVX512BW
        | AVX512VL
        | AVX512_BF16
        | AVX512VBMI
        | AVX512_VBMI2
        | AVX512_VNNI
        | AVX512_BITALG
        | AVX512_VPOPCNTDQ
        | GFNI
}
