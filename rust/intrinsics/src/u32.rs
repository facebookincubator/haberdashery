// @generated
use core::arch::x86_64::*;
pub trait u32Intrinsic: Sized {
    unsafe fn __rdtscp(mem_addr: *mut Self) -> u64;
    unsafe fn _andn_u32(self, b: Self) -> Self;
    unsafe fn _bextr2_u32(self, control: Self) -> Self;
    unsafe fn _bextr_u32(self, start: Self, len: Self) -> Self;
    unsafe fn _blsi_u32(self) -> Self;
    unsafe fn _blsmsk_u32(self) -> Self;
    unsafe fn _blsr_u32(self) -> Self;
    unsafe fn _bzhi_u32(self, index: Self) -> Self;
    unsafe fn _kadd_mask32(self, b: Self) -> Self;
    unsafe fn _kand_mask32(self, b: Self) -> Self;
    unsafe fn _kandn_mask32(self, b: Self) -> Self;
    unsafe fn _knot_mask32(self) -> Self;
    unsafe fn _kor_mask32(self, b: Self) -> Self;
    unsafe fn _kxnor_mask32(self, b: Self) -> Self;
    unsafe fn _kxor_mask32(self, b: Self) -> Self;
    unsafe fn _load_mask32(mem_addr: *mut Self) -> Self;
    unsafe fn _lzcnt_u32(self) -> Self;
    unsafe fn _mm_crc32_u16(self, v: u16) -> Self;
    unsafe fn _mm_crc32_u32(self, v: Self) -> Self;
    unsafe fn _mm_crc32_u8(self, v: u8) -> Self;
    unsafe fn _mm_tzcnt_32(self) -> i32;
    unsafe fn _mulx_u32(self, b: Self, hi: &mut Self) -> Self;
    unsafe fn _pdep_u32(self, mask: Self) -> Self;
    unsafe fn _pext_u32(self, mask: Self) -> Self;
    unsafe fn _rdrand32_step(val: &mut Self) -> i32;
    unsafe fn _rdseed32_step(val: &mut Self) -> i32;
    unsafe fn _store_mask32(mem_addr: *mut Self, a: Self);
    unsafe fn _tzcnt_u32(self) -> Self;
    unsafe fn _xgetbv(self) -> u64;
    unsafe fn _xsetbv(self, val: u64);
}
impl u32Intrinsic for u32 {
    #[inline(always)]
    unsafe fn __rdtscp(mem_addr: *mut Self) -> u64 {
        unsafe { __rdtscp(mem_addr) }
    }
    #[inline(always)]
    unsafe fn _andn_u32(self, b: Self) -> Self {
        unsafe { _andn_u32(self, b) }
    }
    #[inline(always)]
    unsafe fn _bextr2_u32(self, control: Self) -> Self {
        unsafe { _bextr2_u32(self, control) }
    }
    #[inline(always)]
    unsafe fn _bextr_u32(self, start: Self, len: Self) -> Self {
        unsafe { _bextr_u32(self, start, len) }
    }
    #[inline(always)]
    unsafe fn _blsi_u32(self) -> Self {
        unsafe { _blsi_u32(self) }
    }
    #[inline(always)]
    unsafe fn _blsmsk_u32(self) -> Self {
        unsafe { _blsmsk_u32(self) }
    }
    #[inline(always)]
    unsafe fn _blsr_u32(self) -> Self {
        unsafe { _blsr_u32(self) }
    }
    #[inline(always)]
    unsafe fn _bzhi_u32(self, index: Self) -> Self {
        unsafe { _bzhi_u32(self, index) }
    }
    #[inline(always)]
    unsafe fn _kadd_mask32(self, b: Self) -> Self {
        unsafe { _kadd_mask32(self, b) }
    }
    #[inline(always)]
    unsafe fn _kand_mask32(self, b: Self) -> Self {
        unsafe { _kand_mask32(self, b) }
    }
    #[inline(always)]
    unsafe fn _kandn_mask32(self, b: Self) -> Self {
        unsafe { _kandn_mask32(self, b) }
    }
    #[inline(always)]
    unsafe fn _knot_mask32(self) -> Self {
        unsafe { _knot_mask32(self) }
    }
    #[inline(always)]
    unsafe fn _kor_mask32(self, b: Self) -> Self {
        unsafe { _kor_mask32(self, b) }
    }
    #[inline(always)]
    unsafe fn _kxnor_mask32(self, b: Self) -> Self {
        unsafe { _kxnor_mask32(self, b) }
    }
    #[inline(always)]
    unsafe fn _kxor_mask32(self, b: Self) -> Self {
        unsafe { _kxor_mask32(self, b) }
    }
    #[inline(always)]
    unsafe fn _load_mask32(mem_addr: *mut Self) -> Self {
        unsafe { _load_mask32(mem_addr) }
    }
    #[inline(always)]
    unsafe fn _lzcnt_u32(self) -> Self {
        unsafe { _lzcnt_u32(self) }
    }
    #[inline(always)]
    unsafe fn _mm_crc32_u16(self, v: u16) -> Self {
        unsafe { _mm_crc32_u16(self, v) }
    }
    #[inline(always)]
    unsafe fn _mm_crc32_u32(self, v: Self) -> Self {
        unsafe { _mm_crc32_u32(self, v) }
    }
    #[inline(always)]
    unsafe fn _mm_crc32_u8(self, v: u8) -> Self {
        unsafe { _mm_crc32_u8(self, v) }
    }
    #[inline(always)]
    unsafe fn _mm_tzcnt_32(self) -> i32 {
        unsafe { _mm_tzcnt_32(self) }
    }
    #[inline(always)]
    unsafe fn _mulx_u32(self, b: Self, hi: &mut Self) -> Self {
        unsafe { _mulx_u32(self, b, hi) }
    }
    #[inline(always)]
    unsafe fn _pdep_u32(self, mask: Self) -> Self {
        unsafe { _pdep_u32(self, mask) }
    }
    #[inline(always)]
    unsafe fn _pext_u32(self, mask: Self) -> Self {
        unsafe { _pext_u32(self, mask) }
    }
    #[inline(always)]
    unsafe fn _rdrand32_step(val: &mut Self) -> i32 {
        unsafe { _rdrand32_step(val) }
    }
    #[inline(always)]
    unsafe fn _rdseed32_step(val: &mut Self) -> i32 {
        unsafe { _rdseed32_step(val) }
    }
    #[inline(always)]
    unsafe fn _store_mask32(mem_addr: *mut Self, a: Self) {
        unsafe { _store_mask32(mem_addr, a) }
    }
    #[inline(always)]
    unsafe fn _tzcnt_u32(self) -> Self {
        unsafe { _tzcnt_u32(self) }
    }
    #[inline(always)]
    unsafe fn _xgetbv(self) -> u64 {
        unsafe { _xgetbv(self) }
    }
    #[inline(always)]
    unsafe fn _xsetbv(self, val: u64) {
        unsafe { _xsetbv(self, val) }
    }
}
