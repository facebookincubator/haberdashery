// @generated
use core::arch::x86_64::*;
pub trait u8Intrinsic: Sized {
    unsafe fn _addcarry_u32(self, a: u32, b: u32, out: &mut u32) -> Self;
    unsafe fn _addcarry_u64(self, a: u64, b: u64, out: &mut u64) -> Self;
    unsafe fn _addcarryx_u32(self, a: u32, b: u32, out: &mut u32) -> Self;
    unsafe fn _addcarryx_u64(self, a: u64, b: u64, out: &mut u64) -> Self;
    unsafe fn _subborrow_u32(self, a: u32, b: u32, out: &mut u32) -> Self;
    unsafe fn _subborrow_u64(self, a: u64, b: u64, out: &mut u64) -> Self;
}
impl u8Intrinsic for u8 {
    #[inline(always)]
    unsafe fn _addcarry_u32(self, a: u32, b: u32, out: &mut u32) -> Self {
        unsafe { _addcarry_u32(self, a, b, out) }
    }
    #[inline(always)]
    unsafe fn _addcarry_u64(self, a: u64, b: u64, out: &mut u64) -> Self {
        unsafe { _addcarry_u64(self, a, b, out) }
    }
    #[inline(always)]
    unsafe fn _addcarryx_u32(self, a: u32, b: u32, out: &mut u32) -> Self {
        unsafe { _addcarryx_u32(self, a, b, out) }
    }
    #[inline(always)]
    unsafe fn _addcarryx_u64(self, a: u64, b: u64, out: &mut u64) -> Self {
        unsafe { _addcarryx_u64(self, a, b, out) }
    }
    #[inline(always)]
    unsafe fn _subborrow_u32(self, a: u32, b: u32, out: &mut u32) -> Self {
        unsafe { _subborrow_u32(self, a, b, out) }
    }
    #[inline(always)]
    unsafe fn _subborrow_u64(self, a: u64, b: u64, out: &mut u64) -> Self {
        unsafe { _subborrow_u64(self, a, b, out) }
    }
}
