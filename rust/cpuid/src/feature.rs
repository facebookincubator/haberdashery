// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::CpuidResult;
use core::ops::BitOr;

#[derive(Copy, Clone, Default)]
pub struct FeatureLeaf<const L: u32> {
    ebx: u32,
    ecx: u32,
    edx: u32,
}
impl<const L: u32> FeatureLeaf<L> {
    #[inline(always)]
    const fn ebx<const B: usize>() -> Self {
        Self {
            ebx: 1 << B,
            ecx: 0,
            edx: 0,
        }
    }
    #[inline(always)]
    const fn ecx<const B: usize>() -> Self {
        Self {
            ebx: 0,
            ecx: 1 << B,
            edx: 0,
        }
    }
    #[inline(always)]
    const fn edx<const B: usize>() -> Self {
        Self {
            ebx: 0,
            ecx: 0,
            edx: 1 << B,
        }
    }
    #[inline(always)]
    pub fn is_supported(&self, cpuid: CpuidResult) -> bool {
        if self.ebx == 0 && self.ecx == 0 && self.edx == 0 {
            return true;
        }
        if cpuid.ebx & self.ebx != self.ebx {
            return false;
        }
        if cpuid.ecx & self.ecx != self.ecx {
            return false;
        }
        if cpuid.edx & self.edx != self.edx {
            return false;
        }
        true
    }
}
impl<const L: u32> BitOr for FeatureLeaf<L> {
    type Output = Self;
    #[inline(always)]
    fn bitor(self, rhs: Self) -> Self::Output {
        Self {
            ebx: self.ebx | rhs.ebx,
            ecx: self.ecx | rhs.ecx,
            edx: self.edx | rhs.edx,
        }
    }
}
#[derive(Copy, Clone, Default)]
pub struct FeatureSet {
    pub leaf1: FeatureLeaf<1>,
    pub leaf7: FeatureLeaf<7>,
}
impl BitOr<FeatureLeaf<7>> for FeatureLeaf<1> {
    type Output = FeatureSet;
    #[inline(always)]
    fn bitor(self, rhs: FeatureLeaf<7>) -> Self::Output {
        FeatureSet {
            leaf1: self,
            leaf7: rhs,
        }
    }
}
impl BitOr<FeatureLeaf<1>> for FeatureSet {
    type Output = Self;
    #[inline(always)]
    fn bitor(self, rhs: FeatureLeaf<1>) -> Self::Output {
        FeatureSet {
            leaf1: self.leaf1 | rhs,
            leaf7: self.leaf7,
        }
    }
}
impl BitOr<FeatureLeaf<7>> for FeatureSet {
    type Output = Self;
    #[inline(always)]
    fn bitor(self, rhs: FeatureLeaf<7>) -> Self::Output {
        FeatureSet {
            leaf1: self.leaf1,
            leaf7: self.leaf7 | rhs,
        }
    }
}

// Use a macro here to get pretty alignment
macro_rules! feature {
    ($leaf:literal, $reg: ident, $bit: literal, $name:ident) => {
        pub const $name: FeatureLeaf<$leaf> = FeatureLeaf::$reg::<$bit>();
    };
}
// inputs: leaf, register, bit, name
feature!(1, ecx, 0, SSE3);
feature!(1, ecx, 1, PCLMUL);
feature!(1, ecx, 9, SSSE3);
feature!(1, ecx, 12, FMA);
feature!(1, ecx, 19, SSE4_1);
feature!(1, ecx, 20, SSE4_2);
feature!(1, ecx, 22, MOVBE);
feature!(1, ecx, 23, POPCNT);
feature!(1, ecx, 25, AES);
feature!(1, ecx, 26, XSAVE);
feature!(1, ecx, 28, AVX);
feature!(1, ecx, 29, F16C);
feature!(1, ecx, 30, RDRND);
feature!(1, edx, 23, MMX);
feature!(1, edx, 24, FXSR);
feature!(1, edx, 25, SSE);
feature!(1, edx, 26, SSE2);
feature!(7, ebx, 0, FSGSBASE);
feature!(7, ebx, 3, BMI);
feature!(7, ebx, 4, HLE);
feature!(7, ebx, 5, AVX2);
feature!(7, ebx, 8, BMI2);
feature!(7, ebx, 10, AVX512F);
feature!(7, ebx, 17, AVX512DQ);
feature!(7, ebx, 18, RDSEED);
feature!(7, ebx, 19, ADX);
feature!(7, ebx, 21, AVX512IFMA);
feature!(7, ebx, 23, CLFLUSHOPT);
feature!(7, ebx, 24, CLWB);
feature!(7, ebx, 28, AVX512CD);
feature!(7, ebx, 29, SHA);
feature!(7, ebx, 30, AVX512BW);
feature!(7, ebx, 31, AVX512VL);
feature!(7, ecx, 1, AVX512VBMI);
feature!(7, ecx, 3, PKU);
feature!(7, ecx, 6, AVX512VBMI2);
feature!(7, ecx, 8, GFNI);
feature!(7, ecx, 9, VAES);
feature!(7, ecx, 10, VPCLMULQDQ);
feature!(7, ecx, 11, AVX512VNNI);
feature!(7, ecx, 12, AVX512BITALG);
feature!(7, ecx, 14, AVX512VPOPCNTDQ);
feature!(7, ecx, 22, RDPID);
feature!(7, ecx, 23, KL);
feature!(7, ecx, 27, MOVDIRI);
feature!(7, ecx, 28, MOVDIR64B);
feature!(7, edx, 8, AVX512VP2INTERSECT);
