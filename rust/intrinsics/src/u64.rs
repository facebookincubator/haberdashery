// @generated
use core::arch::x86_64::*;
pub trait u64Intrinsic: Sized {
    unsafe fn __rdtscp(mem_addr: *mut u32) -> Self;
    unsafe fn _andn_u64(self, b: Self) -> Self;
    unsafe fn _bextr2_u64(self, control: Self) -> Self;
    unsafe fn _bextr_u64(self, start: u32, len: u32) -> Self;
    unsafe fn _blsi_u64(self) -> Self;
    unsafe fn _blsmsk_u64(self) -> Self;
    unsafe fn _blsr_u64(self) -> Self;
    unsafe fn _bzhi_u64(self, index: u32) -> Self;
    unsafe fn _kadd_mask64(self, b: Self) -> Self;
    unsafe fn _kand_mask64(self, b: Self) -> Self;
    unsafe fn _kandn_mask64(self, b: Self) -> Self;
    unsafe fn _knot_mask64(self) -> Self;
    unsafe fn _kor_mask64(self, b: Self) -> Self;
    unsafe fn _kxnor_mask64(self, b: Self) -> Self;
    unsafe fn _kxor_mask64(self, b: Self) -> Self;
    unsafe fn _load_mask64(mem_addr: *mut Self) -> Self;
    unsafe fn _lzcnt_u64(self) -> Self;
    unsafe fn _mm_crc32_u64(self, v: Self) -> Self;
    unsafe fn _mm_tzcnt_64(self) -> i64;
    unsafe fn _mulx_u64(self, b: Self, hi: &mut Self) -> Self;
    unsafe fn _pdep_u64(self, mask: Self) -> Self;
    unsafe fn _pext_u64(self, mask: Self) -> Self;
    unsafe fn _rdrand64_step(val: &mut Self) -> i32;
    unsafe fn _rdseed64_step(val: &mut Self) -> i32;
    unsafe fn _store_mask64(mem_addr: *mut Self, a: Self);
    unsafe fn _tzcnt_u64(self) -> Self;
    unsafe fn _xgetbv(a: u32) -> Self;
}
impl u64Intrinsic for u64 {
    #[inline(always)]
    unsafe fn __rdtscp(mem_addr: *mut u32) -> Self {
        unsafe { __rdtscp(mem_addr) }
    }
    #[inline(always)]
    unsafe fn _andn_u64(self, b: Self) -> Self {
        unsafe { _andn_u64(self, b) }
    }
    #[inline(always)]
    unsafe fn _bextr2_u64(self, control: Self) -> Self {
        unsafe { _bextr2_u64(self, control) }
    }
    #[inline(always)]
    unsafe fn _bextr_u64(self, start: u32, len: u32) -> Self {
        unsafe { _bextr_u64(self, start, len) }
    }
    #[inline(always)]
    unsafe fn _blsi_u64(self) -> Self {
        unsafe { _blsi_u64(self) }
    }
    #[inline(always)]
    unsafe fn _blsmsk_u64(self) -> Self {
        unsafe { _blsmsk_u64(self) }
    }
    #[inline(always)]
    unsafe fn _blsr_u64(self) -> Self {
        unsafe { _blsr_u64(self) }
    }
    #[inline(always)]
    unsafe fn _bzhi_u64(self, index: u32) -> Self {
        unsafe { _bzhi_u64(self, index) }
    }
    #[inline(always)]
    unsafe fn _kadd_mask64(self, b: Self) -> Self {
        unsafe { _kadd_mask64(self, b) }
    }
    #[inline(always)]
    unsafe fn _kand_mask64(self, b: Self) -> Self {
        unsafe { _kand_mask64(self, b) }
    }
    #[inline(always)]
    unsafe fn _kandn_mask64(self, b: Self) -> Self {
        unsafe { _kandn_mask64(self, b) }
    }
    #[inline(always)]
    unsafe fn _knot_mask64(self) -> Self {
        unsafe { _knot_mask64(self) }
    }
    #[inline(always)]
    unsafe fn _kor_mask64(self, b: Self) -> Self {
        unsafe { _kor_mask64(self, b) }
    }
    #[inline(always)]
    unsafe fn _kxnor_mask64(self, b: Self) -> Self {
        unsafe { _kxnor_mask64(self, b) }
    }
    #[inline(always)]
    unsafe fn _kxor_mask64(self, b: Self) -> Self {
        unsafe { _kxor_mask64(self, b) }
    }
    #[inline(always)]
    unsafe fn _load_mask64(mem_addr: *mut Self) -> Self {
        unsafe { _load_mask64(mem_addr) }
    }
    #[inline(always)]
    unsafe fn _lzcnt_u64(self) -> Self {
        unsafe { _lzcnt_u64(self) }
    }
    #[inline(always)]
    unsafe fn _mm_crc32_u64(self, v: Self) -> Self {
        unsafe { _mm_crc32_u64(self, v) }
    }
    #[inline(always)]
    unsafe fn _mm_tzcnt_64(self) -> i64 {
        unsafe { _mm_tzcnt_64(self) }
    }
    #[inline(always)]
    unsafe fn _mulx_u64(self, b: Self, hi: &mut Self) -> Self {
        unsafe { _mulx_u64(self, b, hi) }
    }
    #[inline(always)]
    unsafe fn _pdep_u64(self, mask: Self) -> Self {
        unsafe { _pdep_u64(self, mask) }
    }
    #[inline(always)]
    unsafe fn _pext_u64(self, mask: Self) -> Self {
        unsafe { _pext_u64(self, mask) }
    }
    #[inline(always)]
    unsafe fn _rdrand64_step(val: &mut Self) -> i32 {
        unsafe { _rdrand64_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdseed64_step(val: &mut Self) -> i32 {
        unsafe { _rdseed64_step(val) }
    }
    #[inline(always)]
    unsafe fn _store_mask64(mem_addr: *mut Self, a: Self) {
        unsafe { _store_mask64(mem_addr, a) }
    }
    #[inline(always)]
    unsafe fn _tzcnt_u64(self) -> Self {
        unsafe { _tzcnt_u64(self) }
    }
    #[inline(always)]
    unsafe fn _xgetbv(a: u32) -> Self {
        unsafe { _xgetbv(a) }
    }
}
