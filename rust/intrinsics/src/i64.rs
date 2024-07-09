// @generated
use core::arch::x86_64::*;
pub trait i64Intrinsic: Sized {
    unsafe fn _bswap64(self) -> Self;
    unsafe fn _mm_tzcnt_64(a: u64) -> Self;
    unsafe fn _popcnt64(self) -> i32;
}
impl i64Intrinsic for i64 {
    #[inline(always)]
    unsafe fn _bswap64(self) -> Self {
        unsafe { _bswap64(self) }
    }
    #[inline(always)]
    unsafe fn _mm_tzcnt_64(a: u64) -> Self {
        unsafe { _mm_tzcnt_64(a) }
    }
    #[inline(always)]
    unsafe fn _popcnt64(self) -> i32 {
        unsafe { _popcnt64(self) }
    }
}
