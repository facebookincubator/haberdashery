// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::CpuidResult;

use crate::feature::*;
use crate::xcr0::XCR0;
pub struct Processor {
    pub model: Model,
    pub raw_model: RawModel,
    leaf1: CpuidResult,
    leaf7: CpuidResult,
    leaf7_1: CpuidResult,
}
impl Default for Processor {
    #[inline(always)]
    fn default() -> Self {
        let leaf1 = core::arch::x86_64::__cpuid(1);
        let leaf7 = core::arch::x86_64::__cpuid(7);
        let leaf7_1 = core::arch::x86_64::__cpuid_count(7, 1);
        Self::from_cpuid(leaf1, leaf7, leaf7_1)
    }
}
impl Processor {
    #[inline(always)]
    fn from_cpuid(leaf1: CpuidResult, leaf7: CpuidResult, leaf7_1: CpuidResult) -> Self {
        let raw_model = RawModel {
            family: shift_and_mask_byte(leaf1.eax, 8, 0xf),
            extended_family: shift_and_mask_u16(leaf1.eax, 20, 0xff),
            model: shift_and_mask_byte(leaf1.eax, 4, 0xf),
            extended_model: shift_and_mask_byte(leaf1.eax, 16, 0xf),
        };
        let model = raw_model.into();
        Self {
            model,
            raw_model,
            leaf1,
            leaf7,
            leaf7_1,
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
        writeln!(f, "\tleaf1.eax:   {eax:#010x}", eax = self.leaf1.eax)?;
        writeln!(f, "\tleaf1.ebx:   {ebx:#010x}", ebx = self.leaf1.ebx)?;
        writeln!(f, "\tleaf1.ecx:   {ecx:#010x}", ecx = self.leaf1.ecx)?;
        writeln!(f, "\tleaf1.edx:   {edx:#010x}", edx = self.leaf1.edx)?;
        writeln!(f, "\tleaf7.ebx:   {ebx:#010x}", ebx = self.leaf7.ebx)?;
        writeln!(f, "\tleaf7.ecx:   {ecx:#010x}", ecx = self.leaf7.ecx)?;
        writeln!(f, "\tleaf7.edx:   {edx:#010x}", edx = self.leaf7.edx)?;
        writeln!(f, "\tleaf7.1.eax: {eax:#010x}", eax = self.leaf7_1.eax)?;
        write!(f, "]")?;
        Ok(())
    }
}
#[inline(always)]
fn shift_and_mask_u16(input: u32, shift: usize, mask: u16) -> u16 {
    ((input >> shift) as u16) & mask
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
            Model::IntelSkylakeX => "skylakex",
            Model::IntelIcelake => "icelake",
            Model::IntelKabylake => "kabylake",
            Model::IntelCannonlake => "cannonlake",
            Model::IntelCometlake => "cometlake",
            Model::IntelRocketlake => "rocketlake",
            Model::IntelTigerlake => "tigerlake",
            Model::IntelAlderlake => "alderlake",
            Model::IntelRaptorlake => "raptorlake",
            Model::IntelSapphireRapids => "sapphirerapids",
            Model::IntelEmeraldRapids => "emeraldrapids",
            Model::IntelMeteorlake => "meteorlake",
            Model::AmdZen4 => "zen4",
            _ => "unknown",
        }
    }
    #[inline(always)]
    pub fn is_supported(&self, features: FeatureSet) -> bool {
        self.is_supported_with_xcr0(features, || {
            // SAFETY: `is_supported_with_xcr0` invokes this callback only after
            // all CPUID requirements, including OSXSAVE, have passed.
            unsafe { XCR0::get_unchecked() }
        })
    }

    #[inline(always)]
    fn is_supported_with_xcr0<F>(&self, features: FeatureSet, read_xcr0: F) -> bool
    where
        F: FnOnce() -> XCR0,
    {
        if !features.leaf1.is_cpuid_supported(self.leaf1)
            || !features.leaf7.is_cpuid_supported(self.leaf7)
            || !features.leaf7_1.is_cpuid_supported(self.leaf7_1)
        {
            return false;
        }

        let required_xcr0 = features.required_xcr0();
        if required_xcr0.is_empty() {
            return true;
        }
        if !OSXSAVE.is_cpuid_supported(self.leaf1) {
            return false;
        }
        read_xcr0().contains(required_xcr0)
    }
}
#[derive(Debug, PartialEq)]
pub enum Model {
    IntelHaswell,
    IntelBroadwell,
    IntelSkylake,
    IntelSkylakeX,
    IntelIcelake,
    IntelKabylake,
    IntelCannonlake,
    IntelCometlake,
    IntelRocketlake,
    IntelTigerlake,
    IntelAlderlake,
    IntelRaptorlake,
    IntelSapphireRapids,
    IntelEmeraldRapids,
    IntelMeteorlake,
    AmdZen4,
    Unknown,
}
impl From<RawModel> for Model {
    #[inline(always)]
    fn from(raw: RawModel) -> Self {
        use Model::*;
        match (
            raw.family,
            raw.extended_model,
            raw.model,
            raw.extended_family,
        ) {
            (0x6, 0x3, 0xc, _) => IntelHaswell,
            (0x6, 0x3, 0xf, _) => IntelHaswell,
            (0x6, 0x4, 0x5, _) => IntelHaswell,
            (0x6, 0x4, 0x6, _) => IntelHaswell,
            (0x6, 0x3, 0xd, _) => IntelBroadwell,
            (0x6, 0x4, 0x7, _) => IntelBroadwell,
            (0x6, 0x4, 0xf, _) => IntelBroadwell,
            (0x6, 0x5, 0x6, _) => IntelBroadwell,
            (0x6, 0x4, 0xe, _) => IntelSkylake,
            (0x6, 0x5, 0xe, _) => IntelSkylake,
            (0x6, 0x5, 0x5, _) => IntelSkylakeX,
            (0x6, 0x6, 0xa, _) => IntelIcelake,
            (0x6, 0x6, 0xc, _) => IntelIcelake,
            (0x6, 0x8, 0xe, _) => IntelKabylake,
            (0x6, 0x9, 0xe, _) => IntelKabylake,
            (0x6, 0x6, 0x6, _) => IntelCannonlake,
            (0x6, 0xa, 0x5, _) => IntelCometlake,
            (0x6, 0xa, 0x6, _) => IntelCometlake,
            (0x6, 0x7, 0xd, _) => IntelIcelake,
            (0x6, 0x7, 0xe, _) => IntelIcelake,
            (0x6, 0xa, 0x7, _) => IntelRocketlake,
            (0x6, 0x8, 0xc, _) => IntelTigerlake,
            (0x6, 0x8, 0xd, _) => IntelTigerlake,
            (0x6, 0x9, 0x7, _) => IntelAlderlake,
            (0x6, 0x9, 0xa, _) => IntelAlderlake,
            (0x6, 0xb, 0xa, _) => IntelRaptorlake,
            (0x6, 0xb, 0x7, _) => IntelRaptorlake,
            (0x6, 0xb, 0xf, _) => IntelRaptorlake,
            (0x6, 0x8, 0xf, _) => IntelSapphireRapids,
            (0x6, 0xc, 0xf, _) => IntelEmeraldRapids,
            (0x6, 0xa, 0xa, _) => IntelMeteorlake,
            (0xf, 0x0, 0x1, 0x0a) => AmdZen4,
            (0xf, 0x0, 0x6, 0x0a) => AmdZen4,
            (0xf, 0x0, 0x7, 0x0a) => AmdZen4,
            (0xf, 0x8, 0x7, 0x0a) => AmdZen4,
            (0xf, 0x0, 0xa, 0x0a) => AmdZen4,
            (0xf, 0x1, 0x1, 0x0a) => AmdZen4,
            _ => Unknown,
        }
    }
}
#[derive(Clone, Copy, Debug)]
pub struct RawModel {
    pub family: u8,
    pub extended_family: u16,
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

#[cfg(test)]
mod tests {
    use core::cell::Cell;

    use super::*;
    use crate::arch::haswell;
    use crate::arch::skylakex;
    use crate::xcr0::AVX_STATE;
    use crate::xcr0::AVX512_STATE;
    use crate::xcr0::HI16_ZMM;
    use crate::xcr0::OPMASK;
    use crate::xcr0::XMM;
    use crate::xcr0::YMM;
    use crate::xcr0::ZMM_HI256;

    fn all_features_processor() -> Processor {
        let all = CpuidResult {
            eax: u32::MAX,
            ebx: u32::MAX,
            ecx: u32::MAX,
            edx: u32::MAX,
        };
        Processor::from_cpuid(all, all, all)
    }

    #[test]
    fn missing_cpuid_feature_does_not_read_xcr0() {
        let mut processor = all_features_processor();
        processor.leaf7.ebx &= !(1 << 5);
        let called = Cell::new(false);
        assert!(!processor.is_supported_with_xcr0(haswell(), || {
            called.set(true);
            AVX_STATE
        }));
        assert!(!called.get());
    }

    #[test]
    fn missing_osxsave_does_not_read_xcr0() {
        let mut processor = all_features_processor();
        processor.leaf1.ecx &= !(1 << 27);
        let called = Cell::new(false);
        assert!(!processor.is_supported_with_xcr0(haswell(), || {
            called.set(true);
            AVX_STATE
        }));
        assert!(!called.get());
    }

    #[test]
    fn avx_requires_xmm_and_ymm_state() {
        let processor = all_features_processor();
        for state in [XCR0::default(), XMM, YMM] {
            assert!(!processor.is_supported_with_xcr0(haswell(), || state));
        }
        assert!(processor.is_supported_with_xcr0(haswell(), || AVX_STATE));
    }

    #[test]
    fn avx512_requires_all_extended_state() {
        let processor = all_features_processor();
        let missing_states = [
            YMM | OPMASK | ZMM_HI256 | HI16_ZMM,
            XMM | OPMASK | ZMM_HI256 | HI16_ZMM,
            XMM | YMM | ZMM_HI256 | HI16_ZMM,
            XMM | YMM | OPMASK | HI16_ZMM,
            XMM | YMM | OPMASK | ZMM_HI256,
        ];
        for state in missing_states {
            assert!(!processor.is_supported_with_xcr0(skylakex(), || state));
        }
        assert!(processor.is_supported_with_xcr0(skylakex(), || AVX512_STATE));
    }

    #[test]
    fn sse_only_features_do_not_read_xcr0() {
        let mut processor = all_features_processor();
        processor.leaf1.ecx &= !(1 << 27);
        assert!(processor.is_supported_with_xcr0(SSE2.into(), || {
            panic!("SSE-only checks must not read XCR0")
        }));

        processor.leaf1.edx &= !(1 << 26);
        assert!(!processor.is_supported_with_xcr0(SSE2.into(), || {
            panic!("failed CPUID checks must not read XCR0")
        }));
    }
}
