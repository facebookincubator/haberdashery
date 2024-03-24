// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::CpuidResult;

use crate::feature::*;
pub struct Processor {
    pub model: Model,
    pub raw_model: RawModel,
    leaf1: CpuidResult,
    leaf7: CpuidResult,
}
impl Default for Processor {
    #[inline(always)]
    fn default() -> Self {
        let leaf1 = unsafe { core::arch::x86_64::__cpuid(1) };
        let leaf7 = unsafe { core::arch::x86_64::__cpuid(7) };
        let raw_model = RawModel {
            family: shift_and_mask_byte(leaf1.eax, 8, 0xf),
            model: shift_and_mask_byte(leaf1.eax, 4, 0xf),
            extended_model: shift_and_mask_byte(leaf1.eax, 16, 0xf),
        };
        let model = raw_model.into();
        Self {
            model,
            raw_model,
            leaf1,
            leaf7,
        }
    }
}
impl core::fmt::Display for Processor {
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {
        writeln!(f, "Processor = [")?;
        writeln!(
            f,
            "\tmodel: {model:?} ({raw_model})",
            model = self.model,
            raw_model = self.raw_model
        )?;
        writeln!(f, "\thaswell: {}", self.has_haswell_support())?;
        writeln!(f, "\tskylake: {}", self.has_skylake_support())?;
        writeln!(f, "\ttigerlake: {}", self.has_tigerlake_support())?;
        writeln!(f, "\tleaf1.eax: {eax:#010x}", eax = self.leaf1.eax)?;
        writeln!(f, "\tleaf1.ebx: {ebx:#010x}", ebx = self.leaf1.ebx)?;
        writeln!(f, "\tleaf1.ecx: {ecx:#010x}", ecx = self.leaf1.ecx)?;
        writeln!(f, "\tleaf1.edx: {edx:#010x}", edx = self.leaf1.edx)?;
        writeln!(f, "\tleaf7.eax: {eax:#010x}", eax = self.leaf7.eax)?;
        writeln!(f, "\tleaf7.ebx: {ebx:#010x}", ebx = self.leaf7.ebx)?;
        writeln!(f, "\tleaf7.ecx: {ecx:#010x}", ecx = self.leaf7.ecx)?;
        writeln!(f, "\tleaf7.edx: {edx:#010x}", edx = self.leaf7.edx)?;
        write!(f, "]")?;
        Ok(())
    }
}
#[inline(always)]
fn shift_and_mask_byte(input: u32, shift: usize, mask: u8) -> u8 {
    ((input >> shift) as u8) & mask
}
impl Processor {
    pub fn canonical_name(&self) -> &'static str {
        match self.model {
            Model::IntelHaswell => "haswell",
            Model::IntelBroadwell => "broadwell",
            Model::IntelSkylake => "skylake",
            Model::IntelTigerlake => "tigerlake",
            _ => "unknown",
        }
    }
    #[inline(always)]
    pub fn has_haswell_support(&self) -> bool {
        self.has_support(Self::haswell_support())
    }
    #[inline(always)]
    pub fn has_skylake_support(&self) -> bool {
        self.has_support(Self::skylake_support())
    }
    #[inline(always)]
    pub fn has_tigerlake_support(&self) -> bool {
        self.has_support(Self::tigerlake_support())
    }
    #[inline(always)]
    fn has_support(&self, features: FeatureSet) -> bool {
        features.leaf1.is_supported(self.leaf1) && features.leaf7.is_supported(self.leaf7)
    }
    #[inline(always)]
    fn haswell_support() -> FeatureSet {
        // GCC's haswell extensions plus AES
        // https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html
        MMX | SSE
            | SSE2
            | SSE3
            | SSSE3
            | SSE4_1
            | SSE4_2
            | POPCNT
            | FXSR
            | AVX
            | XSAVE
            | PCLMUL
            | FSGSBASE
            | RDRND
            | F16C
            | AVX2
            | BMI
            | BMI2
            | FMA
            | MOVBE
            | AES
    }
    #[inline(always)]
    fn skylake_support() -> FeatureSet {
        // GCC's skylake-avx512 extensions minus xsavec, xsaves
        // https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html
        Self::haswell_support()
            | RDSEED
            | ADX
            | CLFLUSHOPT
            | AVX512F
            | CLWB
            | AVX512VL
            | AVX512BW
            | AVX512DQ
            | AVX512CD
    }
    #[inline(always)]
    fn tigerlake_support() -> FeatureSet {
        // GCC's tigerlake extensions minus xsavec, xsaves
        // https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html
        Self::skylake_support()
            | PKU
            | AVX512VBMI
            | AVX512IFMA
            | SHA
            | AVX512VNNI
            | GFNI
            | VAES
            | AVX512VBMI2
            | VPCLMULQDQ
            | AVX512BITALG
            | RDPID
            | AVX512VPOPCNTDQ
            | MOVDIRI
            | MOVDIR64B
            | AVX512VP2INTERSECT
            | KL
    }
}
#[derive(Debug)]
pub enum Model {
    IntelHaswell,
    IntelBroadwell,
    IntelSkylake,
    IntelTigerlake,
    Unknown,
}
impl From<RawModel> for Model {
    #[inline(always)]
    fn from(raw: RawModel) -> Self {
        use Model::*;
        match (raw.family, raw.extended_model, raw.model) {
            (0x6, 0x3, 0xc) => IntelHaswell,
            (0x6, 0x3, 0xf) => IntelHaswell,
            (0x6, 0x4, 0x5) => IntelHaswell,
            (0x6, 0x4, 0x6) => IntelHaswell,
            (0x6, 0x3, 0xd) => IntelBroadwell,
            (0x6, 0x4, 0x7) => IntelBroadwell,
            (0x6, 0x4, 0xf) => IntelBroadwell,
            (0x6, 0x5, 0x6) => IntelBroadwell,
            (0x6, 0x4, 0xe) => IntelSkylake,
            (0x6, 0x5, 0x5) => IntelSkylake,
            (0x6, 0x5, 0xe) => IntelSkylake,
            (0x6, 0x8, 0xc) => IntelTigerlake,
            (0x6, 0x8, 0xd) => IntelTigerlake,
            _ => Unknown,
        }
    }
}
#[derive(Clone, Copy, Debug)]
pub struct RawModel {
    pub family: u8,
    pub model: u8,
    pub extended_model: u8,
}
impl core::fmt::Display for RawModel {
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {
        write!(
            f,
            "{family:02x}_{extended_model:01x}{model:01x}H",
            family = self.family,
            model = self.model,
            extended_model = self.extended_model
        )
    }
}
