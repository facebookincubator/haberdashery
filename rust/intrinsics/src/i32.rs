// @generated
use core::arch::x86_64::*;
pub trait i32Intrinsic: Sized {
    unsafe fn _bswap(self) -> Self;
    unsafe fn _mm512_int2mask(self) -> u16;
    unsafe fn _mm512_kortestc(k1: u16, k2: u16) -> Self;
    unsafe fn _mm512_mask2int(k1: u16) -> Self;
    unsafe fn _mm_tzcnt_32(a: u32) -> Self;
    unsafe fn _popcnt32(self) -> Self;
    unsafe fn _popcnt64(a: i64) -> Self;
    unsafe fn _rdrand16_step(val: &mut u16) -> Self;
    unsafe fn _rdrand32_step(val: &mut u32) -> Self;
    unsafe fn _rdrand64_step(val: &mut u64) -> Self;
    unsafe fn _rdseed16_step(val: &mut u16) -> Self;
    unsafe fn _rdseed32_step(val: &mut u32) -> Self;
    unsafe fn _rdseed64_step(val: &mut u64) -> Self;
}
impl i32Intrinsic for i32 {
    #[inline(always)]
    unsafe fn _bswap(self) -> Self {
        unsafe { _bswap(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_int2mask(self) -> u16 {
        unsafe { _mm512_int2mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_kortestc(k1: u16, k2: u16) -> Self {
        unsafe { _mm512_kortestc(k1, k2) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask2int(k1: u16) -> Self {
        unsafe { _mm512_mask2int(k1) }
    }
    #[inline(always)]
    unsafe fn _mm_tzcnt_32(a: u32) -> Self {
        unsafe { _mm_tzcnt_32(a) }
    }
    #[inline(always)]
    unsafe fn _popcnt32(self) -> Self {
        unsafe { _popcnt32(self) }
    }
    #[inline(always)]
    unsafe fn _popcnt64(a: i64) -> Self {
        unsafe { _popcnt64(a) }
    }
    #[inline(always)]
    unsafe fn _rdrand16_step(val: &mut u16) -> Self {
        unsafe { _rdrand16_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdrand32_step(val: &mut u32) -> Self {
        unsafe { _rdrand32_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdrand64_step(val: &mut u64) -> Self {
        unsafe { _rdrand64_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdseed16_step(val: &mut u16) -> Self {
        unsafe { _rdseed16_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdseed32_step(val: &mut u32) -> Self {
        unsafe { _rdseed32_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdseed64_step(val: &mut u64) -> Self {
        unsafe { _rdseed64_step(val) }
    }
}
