// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![allow(unused)]

#[derive(Clone, Copy, Default, PartialEq, Eq)]
pub struct XCR0(u64);

pub const X87: XCR0 = XCR0(1 << 0);
pub const XMM: XCR0 = XCR0(1 << 1);
pub const YMM: XCR0 = XCR0(1 << 2);
pub const SSE: XCR0 = XMM;
pub const AVX: XCR0 = YMM;
pub const BNDREG: XCR0 = XCR0(1 << 3);
pub const BNDCRS: XCR0 = XCR0(1 << 4);
pub const OPMASK: XCR0 = XCR0(1 << 5);
pub const ZMM_HI256: XCR0 = XCR0(1 << 6);
pub const HI16_ZMM: XCR0 = XCR0(1 << 7);
pub const PT: XCR0 = XCR0(1 << 8);
pub const PKRU: XCR0 = XCR0(1 << 9);
pub const PASID: XCR0 = XCR0(1 << 10);
pub const CET_U: XCR0 = XCR0(1 << 11);
pub const CET_S: XCR0 = XCR0(1 << 12);
pub const HDC: XCR0 = XCR0(1 << 13);
pub const UINTR: XCR0 = XCR0(1 << 14);
pub const LBR: XCR0 = XCR0(1 << 15);
pub const HWP: XCR0 = XCR0(1 << 16);
pub const XTILECFG: XCR0 = XCR0(1 << 17);
pub const XTILEDATA: XCR0 = XCR0(1 << 18);
pub const APX: XCR0 = XCR0(1 << 19);

pub(crate) const AVX_STATE: XCR0 = XCR0(XMM.0 | YMM.0);
pub(crate) const AVX512_STATE: XCR0 = XCR0(AVX_STATE.0 | OPMASK.0 | ZMM_HI256.0 | HI16_ZMM.0);

impl XCR0 {
    #[inline(always)]
    pub fn get() -> Self {
        assert!(
            crate::feature::OSXSAVE.is_supported(),
            "XGETBV requires CPUID OSXSAVE support"
        );
        // SAFETY: The OSXSAVE check above establishes that XGETBV is enabled,
        // and XCR0 is always readable with index zero.
        unsafe { Self::get_unchecked() }
    }

    /// # Safety
    ///
    /// CPUID leaf 1 must report OSXSAVE before this function is called.
    #[inline(always)]
    pub(crate) unsafe fn get_unchecked() -> Self {
        // SAFETY: The caller guarantees OSXSAVE, and index zero selects XCR0.
        Self(unsafe { core::arch::x86_64::_xgetbv(0) })
    }

    #[inline(always)]
    pub(crate) fn contains(self, required: Self) -> bool {
        self & required == required
    }

    #[inline(always)]
    pub(crate) fn is_empty(self) -> bool {
        self.0 == 0
    }
}
impl core::fmt::Display for XCR0 {
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {
        writeln!(f, "{:>5}: X87", *self & X87 == X87)?;
        writeln!(f, "{:>5}: SSE", *self & SSE == SSE)?;
        writeln!(f, "{:>5}: AVX", *self & AVX == AVX)?;
        writeln!(f, "{:>5}: BNDREG", *self & BNDREG == BNDREG)?;
        writeln!(f, "{:>5}: BNDCRS", *self & BNDCRS == BNDCRS)?;
        writeln!(f, "{:>5}: OPMASK", *self & OPMASK == OPMASK)?;
        writeln!(f, "{:>5}: ZMM_HI256", *self & ZMM_HI256 == ZMM_HI256)?;
        writeln!(f, "{:>5}: HI16_ZMM", *self & HI16_ZMM == HI16_ZMM)?;
        writeln!(f, "{:>5}: PT", *self & PT == PT)?;
        writeln!(f, "{:>5}: PKRU", *self & PKRU == PKRU)?;
        writeln!(f, "{:>5}: PASID", *self & PASID == PASID)?;
        writeln!(f, "{:>5}: CET_U", *self & CET_U == CET_U)?;
        writeln!(f, "{:>5}: CET_S", *self & CET_S == CET_S)?;
        writeln!(f, "{:>5}: HDC", *self & HDC == HDC)?;
        writeln!(f, "{:>5}: UINTR", *self & UINTR == UINTR)?;
        writeln!(f, "{:>5}: LBR", *self & LBR == LBR)?;
        writeln!(f, "{:>5}: HWP", *self & HWP == HWP)?;
        writeln!(f, "{:>5}: XTILECFG", *self & XTILECFG == XTILECFG)?;
        writeln!(f, "{:>5}: XTILEDATA", *self & XTILEDATA == XTILEDATA)?;
        writeln!(f, "{:>5}: APX", *self & APX == APX)?;
        Ok(())
    }
}
impl core::ops::BitAnd for XCR0 {
    type Output = Self;
    #[inline(always)]
    fn bitand(self, rhs: Self) -> Self::Output {
        Self(self.0 & rhs.0)
    }
}
impl core::ops::BitOr for XCR0 {
    type Output = Self;
    #[inline(always)]
    fn bitor(self, rhs: Self) -> Self::Output {
        Self(self.0 | rhs.0)
    }
}
