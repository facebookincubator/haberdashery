// @generated
use core::arch::x86_64::*;
pub trait u16Intrinsic: Sized {
    unsafe fn _kand_mask16(self, b: Self) -> Self;
    unsafe fn _kandn_mask16(self, b: Self) -> Self;
    unsafe fn _knot_mask16(self) -> Self;
    unsafe fn _kor_mask16(self, b: Self) -> Self;
    unsafe fn _kxnor_mask16(self, b: Self) -> Self;
    unsafe fn _kxor_mask16(self, b: Self) -> Self;
    unsafe fn _mm512_int2mask(mask: i32) -> Self;
    unsafe fn _mm512_kand(self, b: Self) -> Self;
    unsafe fn _mm512_kandn(self, b: Self) -> Self;
    unsafe fn _mm512_kmov(self) -> Self;
    unsafe fn _mm512_knot(self) -> Self;
    unsafe fn _mm512_kor(self, b: Self) -> Self;
    unsafe fn _mm512_kortestc(self, k2: Self) -> i32;
    unsafe fn _mm512_kunpackb(self, b: Self) -> Self;
    unsafe fn _mm512_kxnor(self, b: Self) -> Self;
    unsafe fn _mm512_kxor(self, b: Self) -> Self;
    unsafe fn _mm512_mask2int(self) -> i32;
    unsafe fn _rdrand16_step(val: &mut Self) -> i32;
    unsafe fn _rdseed16_step(val: &mut Self) -> i32;
}
impl u16Intrinsic for u16 {
    #[inline(always)]
    unsafe fn _kand_mask16(self, b: Self) -> Self {
        unsafe { _kand_mask16(self, b) }
    }
    #[inline(always)]
    unsafe fn _kandn_mask16(self, b: Self) -> Self {
        unsafe { _kandn_mask16(self, b) }
    }
    #[inline(always)]
    unsafe fn _knot_mask16(self) -> Self {
        unsafe { _knot_mask16(self) }
    }
    #[inline(always)]
    unsafe fn _kor_mask16(self, b: Self) -> Self {
        unsafe { _kor_mask16(self, b) }
    }
    #[inline(always)]
    unsafe fn _kxnor_mask16(self, b: Self) -> Self {
        unsafe { _kxnor_mask16(self, b) }
    }
    #[inline(always)]
    unsafe fn _kxor_mask16(self, b: Self) -> Self {
        unsafe { _kxor_mask16(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_int2mask(mask: i32) -> Self {
        unsafe { _mm512_int2mask(mask) }
    }
    #[inline(always)]
    unsafe fn _mm512_kand(self, b: Self) -> Self {
        unsafe { _mm512_kand(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_kandn(self, b: Self) -> Self {
        unsafe { _mm512_kandn(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_kmov(self) -> Self {
        unsafe { _mm512_kmov(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_knot(self) -> Self {
        unsafe { _mm512_knot(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_kor(self, b: Self) -> Self {
        unsafe { _mm512_kor(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_kortestc(self, k2: Self) -> i32 {
        unsafe { _mm512_kortestc(self, k2) }
    }
    #[inline(always)]
    unsafe fn _mm512_kunpackb(self, b: Self) -> Self {
        unsafe { _mm512_kunpackb(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_kxnor(self, b: Self) -> Self {
        unsafe { _mm512_kxnor(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_kxor(self, b: Self) -> Self {
        unsafe { _mm512_kxor(self, b) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask2int(self) -> i32 {
        unsafe { _mm512_mask2int(self) }
    }
    #[inline(always)]
    unsafe fn _rdrand16_step(val: &mut Self) -> i32 {
        unsafe { _rdrand16_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdseed16_step(val: &mut Self) -> i32 {
        unsafe { _rdseed16_step(val) }
    }
}
