// @generated
use core::arch::x86_64::*;
pub trait i8Intrinsic: Sized {
    unsafe fn _mm_prefetch<const i: i32>(p: *const Self);
}
impl i8Intrinsic for i8 {
    #[inline(always)]
    unsafe fn _mm_prefetch<const i: i32>(p: *const Self) {
        unsafe { _mm_prefetch::<i>(p) }
    }
}
