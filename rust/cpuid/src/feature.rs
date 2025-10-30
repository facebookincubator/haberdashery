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
    eax: u32,
    ebx: u32,
    ecx: u32,
    edx: u32,
}
impl<const L: u32> FeatureLeaf<L> {
    #[inline(always)]
    const fn eax<const B: usize>() -> Self {
        Self {
            eax: 1 << B,
            ebx: 0,
            ecx: 0,
            edx: 0,
        }
    }
    #[inline(always)]
    const fn ebx<const B: usize>() -> Self {
        Self {
            eax: 0,
            ebx: 1 << B,
            ecx: 0,
            edx: 0,
        }
    }
    #[inline(always)]
    const fn ecx<const B: usize>() -> Self {
        Self {
            eax: 0,
            ebx: 0,
            ecx: 1 << B,
            edx: 0,
        }
    }
    #[inline(always)]
    const fn edx<const B: usize>() -> Self {
        Self {
            eax: 0,
            ebx: 0,
            ecx: 0,
            edx: 1 << B,
        }
    }
    #[inline(always)]
    pub(crate) fn is_cpuid_supported(&self, cpuid: CpuidResult) -> bool {
        if self.eax == 0 && self.ebx == 0 && self.ecx == 0 && self.edx == 0 {
            return true;
        }
        if cpuid.eax & self.eax != self.eax {
            return false;
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
    #[inline(always)]
    pub fn is_supported(self) -> bool {
        FeatureSet::from(self).is_supported()
    }
}
impl<const L: u32> BitOr for FeatureLeaf<L> {
    type Output = Self;
    #[inline(always)]
    fn bitor(self, rhs: Self) -> Self::Output {
        Self {
            eax: self.eax | rhs.eax,
            ebx: self.ebx | rhs.ebx,
            ecx: self.ecx | rhs.ecx,
            edx: self.edx | rhs.edx,
        }
    }
}
#[derive(Copy, Clone, Default)]
pub struct FeatureSet {
    pub(crate) leaf1: FeatureLeaf<1>,
    pub(crate) leaf7: FeatureLeaf<7>,
    pub(crate) leaf7_1: FeatureLeaf<107>,
}
impl FeatureSet {
    #[inline(always)]
    pub fn is_supported(self) -> bool {
        crate::processor().is_supported(self)
    }
}
impl<const N: u32> From<FeatureLeaf<N>> for FeatureSet {
    #[inline(always)]
    fn from(leaf: FeatureLeaf<N>) -> Self {
        match N {
            1 => Self {
                leaf1: FeatureLeaf {
                    eax: leaf.eax,
                    ebx: leaf.ebx,
                    ecx: leaf.ecx,
                    edx: leaf.edx,
                },
                ..Self::default()
            },
            7 => Self {
                leaf7: FeatureLeaf {
                    eax: leaf.eax,
                    ebx: leaf.ebx,
                    ecx: leaf.ecx,
                    edx: leaf.edx,
                },
                ..Self::default()
            },
            107 => Self {
                leaf7_1: FeatureLeaf {
                    eax: leaf.eax,
                    ebx: leaf.ebx,
                    ecx: leaf.ecx,
                    edx: leaf.edx,
                },
                ..Self::default()
            },
            _ => unimplemented!(),
        }
    }
}
impl BitOr<FeatureLeaf<7>> for FeatureLeaf<1> {
    type Output = FeatureSet;
    #[inline(always)]
    fn bitor(self, rhs: FeatureLeaf<7>) -> Self::Output {
        FeatureSet {
            leaf1: self,
            leaf7: rhs,
            ..Self::Output::default()
        }
    }
}
impl<T: Into<FeatureSet>> BitOr<T> for FeatureSet {
    type Output = FeatureSet;
    #[inline(always)]
    fn bitor(self, rhs: T) -> Self::Output {
        let rhs = rhs.into();
        FeatureSet {
            leaf1: self.leaf1 | rhs.leaf1,
            leaf7: self.leaf7 | rhs.leaf7,
            leaf7_1: self.leaf7_1 | rhs.leaf7_1,
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
feature!(1, ecx, 1, PCLMULQDQ);
feature!(1, ecx, 2, DTES64);
feature!(1, ecx, 3, MWAIT);
feature!(1, ecx, 4, DSCPL);
feature!(1, ecx, 5, VMX);
feature!(1, ecx, 6, SMX);
feature!(1, ecx, 7, EST);
feature!(1, ecx, 8, TM2);
feature!(1, ecx, 9, SSSE3);
feature!(1, ecx, 10, CID);
feature!(1, ecx, 11, SDBG);
feature!(1, ecx, 12, FMA);
feature!(1, ecx, 13, CX16);
feature!(1, ecx, 14, XTPR);
feature!(1, ecx, 15, PDCM);
feature!(1, ecx, 17, PCID);
feature!(1, ecx, 18, DCA);
feature!(1, ecx, 19, SSE4_1);
feature!(1, ecx, 20, SSE4_2);
feature!(1, ecx, 21, X2APIC);
feature!(1, ecx, 22, MOVBE);
feature!(1, ecx, 23, POPCNT);
feature!(1, ecx, 24, TSC_DEADLINE_TIMER);
feature!(1, ecx, 25, AES);
feature!(1, ecx, 26, XSAVE);
feature!(1, ecx, 27, OSXSAVE);
feature!(1, ecx, 28, AVX);
feature!(1, ecx, 29, F16C);
feature!(1, ecx, 30, RDRAND);
feature!(1, ecx, 31, HYPERVISOR);

feature!(1, edx, 0, FPU);
feature!(1, edx, 1, VME);
feature!(1, edx, 2, DE);
feature!(1, edx, 3, PSE);
feature!(1, edx, 4, TSC);
feature!(1, edx, 5, MSR);
feature!(1, edx, 6, PAE);
feature!(1, edx, 7, MCE);
feature!(1, edx, 8, CX8);
feature!(1, edx, 9, APIC);
feature!(1, edx, 11, SEP);
feature!(1, edx, 12, MTRR);
feature!(1, edx, 13, PGE);
feature!(1, edx, 14, MCA);
feature!(1, edx, 15, CMOV);
feature!(1, edx, 16, PAT);
feature!(1, edx, 17, PSE36);
feature!(1, edx, 18, PN);
feature!(1, edx, 19, CLFLUSH);
feature!(1, edx, 21, DS);
feature!(1, edx, 22, ACPI);
feature!(1, edx, 23, MMX);
feature!(1, edx, 24, FXSR);
feature!(1, edx, 25, SSE);
feature!(1, edx, 26, SSE2);
feature!(1, edx, 27, SELFSNOOP);
feature!(1, edx, 28, HT);
feature!(1, edx, 29, ACC);
feature!(1, edx, 30, IA64);
feature!(1, edx, 31, PBE);

feature!(107, eax, 4, AVX_VNNI);
feature!(107, eax, 5, AVX512_BF16);
feature!(107, eax, 7, CMPCCXADD);
feature!(107, eax, 8, ARCH_PERFMON_EXT);
feature!(107, eax, 10, FZRM);
feature!(107, eax, 11, FSRS);
feature!(107, eax, 12, FSRC);
feature!(107, eax, 17, FRED);
feature!(107, eax, 18, LKGS);
feature!(107, eax, 19, WRMSRNS);
feature!(107, eax, 21, AMX_FP16);
feature!(107, eax, 23, AVX_IFMA);
feature!(107, eax, 26, LAM);

feature!(7, ebx, 0, FSGSBASE);
feature!(7, ebx, 1, TSC_ADJUST);
feature!(7, ebx, 2, SGX);
feature!(7, ebx, 3, BMI1);
feature!(7, ebx, 4, HLE);
feature!(7, ebx, 5, AVX2);
feature!(7, ebx, 6, FDP_EXCPTN_ONLY);
feature!(7, ebx, 7, SMEP);
feature!(7, ebx, 8, BMI2);
feature!(7, ebx, 9, ERMS);
feature!(7, ebx, 10, INVPCID);
feature!(7, ebx, 11, RTM);
feature!(7, ebx, 12, CQM);
feature!(7, ebx, 13, ZERO_FCS_FDS);
feature!(7, ebx, 14, MPX);
feature!(7, ebx, 15, RDT_A);
feature!(7, ebx, 16, AVX512F);
feature!(7, ebx, 17, AVX512DQ);
feature!(7, ebx, 18, RDSEED);
feature!(7, ebx, 19, ADX);
feature!(7, ebx, 20, SMAP);
feature!(7, ebx, 21, AVX512IFMA);
feature!(7, ebx, 23, CLFLUSHOPT);
feature!(7, ebx, 24, CLWB);
feature!(7, ebx, 25, INTEL_PT);
feature!(7, ebx, 26, AVX512PF);
feature!(7, ebx, 27, AVX512ER);
feature!(7, ebx, 28, AVX512CD);
feature!(7, ebx, 29, SHA_NI);
feature!(7, ebx, 30, AVX512BW);
feature!(7, ebx, 31, AVX512VL);

feature!(7, ecx, 1, AVX512VBMI);
feature!(7, ecx, 2, UMIP);
feature!(7, ecx, 3, PKU);
feature!(7, ecx, 4, OSPKE);
feature!(7, ecx, 5, WAITPKG);
feature!(7, ecx, 6, AVX512_VBMI2);
feature!(7, ecx, 7, SHSTK);
feature!(7, ecx, 8, GFNI);
feature!(7, ecx, 9, VAES);
feature!(7, ecx, 10, VPCLMULQDQ);
feature!(7, ecx, 11, AVX512_VNNI);
feature!(7, ecx, 12, AVX512_BITALG);
feature!(7, ecx, 13, TME);
feature!(7, ecx, 14, AVX512_VPOPCNTDQ);
feature!(7, ecx, 16, LA57);
feature!(7, ecx, 22, RDPID);
feature!(7, ecx, 23, KL);
feature!(7, ecx, 24, BUS_LOCK_DETECT);
feature!(7, ecx, 25, CLDEMOTE);
feature!(7, ecx, 27, MOVDIRI);
feature!(7, ecx, 28, MOVDIR64B);
feature!(7, ecx, 29, ENQCMD);
feature!(7, ecx, 30, SGX_LC);

feature!(7, edx, 2, AVX512_4VNNIW);
feature!(7, edx, 3, AVX512_4FMAPS);
feature!(7, edx, 4, FSRM);
feature!(7, edx, 5, UINTR);
feature!(7, edx, 8, AVX512_VP2INTERSECT);
feature!(7, edx, 9, SRBDS_CTRL);
feature!(7, edx, 10, MD_CLEAR);
feature!(7, edx, 11, RTM_ALWAYS_ABORT);
feature!(7, edx, 13, TSX_FORCE_ABORT);
feature!(7, edx, 14, SERIALIZE);
feature!(7, edx, 15, HYBRID_CPU);
feature!(7, edx, 16, TSXLDTRK);
feature!(7, edx, 18, PCONFIG);
feature!(7, edx, 19, ARCH_LBR);
feature!(7, edx, 20, IBT);
feature!(7, edx, 22, AMX_BF16);
feature!(7, edx, 23, AVX512_FP16);
feature!(7, edx, 24, AMX_TILE);
feature!(7, edx, 25, AMX_INT8);
feature!(7, edx, 26, SPEC_CTRL);
feature!(7, edx, 27, INTEL_STIBP);
feature!(7, edx, 28, FLUSH_L1D);
feature!(7, edx, 29, ARCH_CAPABILITIES);
feature!(7, edx, 30, CORE_CAPABILITIES);
feature!(7, edx, 31, SPEC_CTRL_SSBD);
