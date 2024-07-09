// @generated
use core::arch::x86_64::*;
pub trait __m128iIntrinsic: Sized {
    unsafe fn _mm256_broadcast_i32x4<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_broadcastb_epi8<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_broadcastd_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_broadcastq_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_broadcastsi128_si256<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_broadcastw_epi16<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_castsi128_si256<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_castsi256_si128<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi16_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepi16_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepi16_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi32_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi32_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepi32_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi64_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi64_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi64_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtepi8_epi16<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepi8_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepi8_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepu16_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepu16_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepu32_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepu8_epi16<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepu8_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtepu8_epi64<T: From<__m256i>>(self) -> T;
    unsafe fn _mm256_cvtsepi16_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtsepi32_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtsepi32_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtsepi64_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtsepi64_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtsepi64_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtusepi16_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtusepi32_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtusepi32_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtusepi64_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtusepi64_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_cvtusepi64_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_extractf128_si256<const imm8: i32>(a: impl Into<__m256i>) -> Self;
    unsafe fn _mm256_extracti128_si256<const imm8: i32>(a: impl Into<__m256i>) -> Self;
    unsafe fn _mm256_extracti32x4_epi32<const imm8: i32>(a: impl Into<__m256i>) -> Self;
    unsafe fn _mm256_i64gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<__m256i>) -> Self;
    unsafe fn _mm256_loadu2_m128i<T: From<__m256i>>(hiaddr: *const Self, loaddr: *const Self) -> T;
    unsafe fn _mm256_mask_cvtepi16_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtsepi16_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtsepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtsepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtsepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtsepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtsepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtusepi16_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtusepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtusepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtusepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtusepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_cvtusepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_mask_extracti32x4_epi32<const imm8: i32>(self, k: u8, a: impl Into<__m256i>) -> Self;
    unsafe fn _mm256_mask_i64gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<__m256i>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_cvtepi16_epi8<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtepi32_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtepi32_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtsepi16_epi8<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtsepi32_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtsepi32_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtsepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtsepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtsepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtusepi16_epi8<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtusepi32_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtusepi32_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtusepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtusepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_cvtusepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm256_maskz_extracti32x4_epi32<const imm8: i32>(k: u8, a: impl Into<__m256i>) -> Self;
    unsafe fn _mm256_set_m128i<T: From<__m256i>>(self, lo: impl Into<Self>) -> T;
    unsafe fn _mm256_setr_m128i<T: From<__m256i>>(self, hi: impl Into<Self>) -> T;
    unsafe fn _mm256_storeu2_m128i(hiaddr: *mut Self, loaddr: *mut Self, a: impl Into<__m256i>);
    unsafe fn _mm256_zextsi128_si256<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_broadcast_i32x4<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_broadcastb_epi8<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_broadcastd_epi32<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_broadcastq_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_broadcastw_epi16<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_castsi128_si512<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_castsi512_si128<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi16_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepi32_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi64_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi64_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi8_epi32<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepi8_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepu16_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepu8_epi32<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepu8_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtsepi32_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtsepi64_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtsepi64_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtusepi32_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtusepi64_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtusepi64_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_extracti32x4_epi32<const imm8: i32>(a: impl Into<__m512i>) -> Self;
    unsafe fn _mm512_mask_cvtepi32_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtsepi32_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtsepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtsepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtusepi32_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtusepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtusepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_extracti32x4_epi32<const imm8: i32>(self, k: u8, a: impl Into<__m512i>) -> Self;
    unsafe fn _mm512_maskz_cvtepi32_epi8<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtsepi32_epi8<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtsepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtsepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtusepi32_epi8<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtusepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtusepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_extracti32x4_epi32<const imm8: i32>(k: u8, a: impl Into<__m512i>) -> Self;
    unsafe fn _mm512_zextsi128_si512<T: From<__m512i>>(self) -> T;
    unsafe fn _mm_abs_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_abs_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_abs_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_add_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_add_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_add_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_add_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_adds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_adds_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_adds_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_adds_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_aesdec_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm_aesdeclast_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm_aesenc_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm_aesenclast_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm_aesimc_si128<T: From<Self>>(self) -> T;
    unsafe fn _mm_aeskeygenassist_si128<const imm8: i32>(self) -> Self;
    unsafe fn _mm_alignr_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_alignr_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_alignr_epi8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_and_si128<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_andnot_si128<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_avg_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_avg_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_bitshuffle_epi64_mask(self, c: impl Into<Self>) -> u16;
    unsafe fn _mm_blend_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_blend_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_blendv_epi8<T: From<Self>>(self, b: impl Into<Self>, mask: impl Into<Self>) -> T;
    unsafe fn _mm_broadcastb_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_broadcastd_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_broadcastmb_epi64<T: From<Self>>(k: u8) -> T;
    unsafe fn _mm_broadcastmw_epi32<T: From<Self>>(k: u16) -> T;
    unsafe fn _mm_broadcastq_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_broadcastw_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_bslli_si128<const imm8: i32>(self) -> Self;
    unsafe fn _mm_bsrli_si128<const imm8: i32>(self) -> Self;
    unsafe fn _mm_clmulepi64_si128<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_cmp_epi16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmp_epi8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmp_epu16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmp_epu8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpeq_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpeq_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpeq_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpeq_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpeq_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpeq_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpeq_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpeq_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpeq_epu16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpeq_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpeq_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpeq_epu8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpestra<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32;
    unsafe fn _mm_cmpestrc<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32;
    unsafe fn _mm_cmpestri<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32;
    unsafe fn _mm_cmpestrm<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> Self;
    unsafe fn _mm_cmpestro<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32;
    unsafe fn _mm_cmpestrs<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32;
    unsafe fn _mm_cmpestrz<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32;
    unsafe fn _mm_cmpge_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpge_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpge_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpge_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpge_epu16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpge_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpge_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpge_epu8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpgt_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpgt_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpgt_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpgt_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpgt_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpgt_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpgt_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmpgt_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpgt_epu16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpgt_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpgt_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpgt_epu8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpistra<const imm8: i32>(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_cmpistrc<const imm8: i32>(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_cmpistri<const imm8: i32>(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_cmpistrm<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_cmpistro<const imm8: i32>(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_cmpistrs<const imm8: i32>(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_cmpistrz<const imm8: i32>(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_cmple_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmple_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmple_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmple_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmple_epu16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmple_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmple_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmple_epu8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmplt_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmplt_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmplt_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmplt_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmplt_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmplt_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_cmplt_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmplt_epu16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmplt_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmplt_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmplt_epu8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpneq_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpneq_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpneq_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpneq_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_cmpneq_epu16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpneq_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpneq_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_cmpneq_epu8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_conflict_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_conflict_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi16_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi16_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi16_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi32_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi32_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi32_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi64_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi64_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi64_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi8_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi8_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepi8_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepu16_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepu16_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepu32_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepu8_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepu8_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtepu8_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsepi16_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsepi32_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsepi32_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsepi64_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsepi64_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsepi64_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtsi128_si32(self) -> i32;
    unsafe fn _mm_cvtsi128_si64(self) -> i64;
    unsafe fn _mm_cvtsi128_si64x(self) -> i64;
    unsafe fn _mm_cvtsi32_si128<T: From<Self>>(a: i32) -> T;
    unsafe fn _mm_cvtsi64_si128<T: From<Self>>(a: i64) -> T;
    unsafe fn _mm_cvtsi64x_si128<T: From<Self>>(a: i64) -> T;
    unsafe fn _mm_cvtusepi16_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtusepi32_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtusepi32_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtusepi64_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtusepi64_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_cvtusepi64_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_dbsad_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_dpbusd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_dpbusds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_dpwssd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_dpwssds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_extract_epi16<const imm8: i32>(self) -> i32;
    unsafe fn _mm_extract_epi32<const imm8: i32>(self) -> i32;
    unsafe fn _mm_extract_epi64<const imm8: i32>(self) -> i64;
    unsafe fn _mm_extract_epi8<const imm8: i32>(self) -> i32;
    unsafe fn _mm_gf2p8affine_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self;
    unsafe fn _mm_gf2p8affineinv_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self;
    unsafe fn _mm_gf2p8mul_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_hadd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_hadd_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_hadds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_hsub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_hsub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_hsubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_i32gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<Self>) -> Self;
    unsafe fn _mm_i32gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<Self>) -> Self;
    unsafe fn _mm_i64gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<Self>) -> Self;
    unsafe fn _mm_i64gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<Self>) -> Self;
    unsafe fn _mm_insert_epi16<const imm8: i32>(self, i: i32) -> Self;
    unsafe fn _mm_insert_epi32<const imm8: i32>(self, i: i32) -> Self;
    unsafe fn _mm_insert_epi64<const imm8: i32>(self, i: i64) -> Self;
    unsafe fn _mm_insert_epi8<const imm8: i32>(self, i: i32) -> Self;
    unsafe fn _mm_lddqu_si128<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm_load_si128<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm_loadl_epi64<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm_loadu_epi8<T: From<Self>>(mem_addr: *const i8) -> T;
    unsafe fn _mm_loadu_si128<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm_lzcnt_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_lzcnt_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_madd52hi_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_madd52lo_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_madd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_maddubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask2_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask2_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask2_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask2_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, k: u16, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_abs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_abs_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_abs_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_add_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_add_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_add_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_add_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_adds_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_adds_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_adds_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_adds_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_alignr_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_alignr_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_alignr_epi8<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_and_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_and_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_andnot_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_andnot_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_avg_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_avg_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_blend_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_blend_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_blend_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_blend_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_broadcastb_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_broadcastd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_broadcastq_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_broadcastw_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_compress_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_compress_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_compress_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_compress_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_conflict_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_conflict_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi16_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi16_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi16_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi32_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi8_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi8_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepi8_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepu16_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepu16_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepu32_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepu8_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepu8_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtepu8_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtsepi16_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtsepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtsepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtsepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtsepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtsepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtusepi16_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtusepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtusepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtusepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtusepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_cvtusepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_dbsad_epu8<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_dpbusd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_dpbusds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_dpwssd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_dpwssds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_expand_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_expand_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_expand_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_expand_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_gf2p8affine_epi64_epi8<const b: i32>(self, k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_gf2p8affineinv_epi64_epi8<const b: i32>(self, k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_gf2p8mul_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_i32gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_i32gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_i64gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_i64gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_loadu_epi8<T: From<Self>>(self, k: u16, mem_addr: *const i8) -> T;
    unsafe fn _mm_mask_lzcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_lzcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_madd_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_maddubs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_max_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_min_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mov_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mov_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mov_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mov_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mul_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mul_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mulhi_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mulhi_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mulhrs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mullo_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_mullo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_multishift_epi64_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_or_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_or_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_packs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_packs_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_packus_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_packus_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_permutex2var_epi16<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_permutex2var_epi32<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_permutex2var_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_permutex2var_epi8<T: From<Self>>(self, k: u16, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_permutexvar_epi16<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_permutexvar_epi8<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_popcnt_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_popcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_popcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_popcnt_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_mask_rol_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_rol_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_rolv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_rolv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_ror_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_ror_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_rorv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_rorv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_set1_epi16<T: From<Self>>(self, k: u8, a: i16) -> T;
    unsafe fn _mm_mask_set1_epi32<T: From<Self>>(self, k: u8, a: i32) -> T;
    unsafe fn _mm_mask_set1_epi64<T: From<Self>>(self, k: u8, a: i64) -> T;
    unsafe fn _mm_mask_set1_epi8<T: From<Self>>(self, k: u16, a: i8) -> T;
    unsafe fn _mm_mask_shldi_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shldi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shldi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shldv_epi16<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shldv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shldv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shrdi_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shrdi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shrdi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shrdv_epi16<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shrdv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shrdv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shuffle_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_shufflehi_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_shufflelo_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_sll_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sll_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sll_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_slli_epi16<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_slli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_slli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_sllv_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sllv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sllv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sra_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sra_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sra_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srai_epi16<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_srai_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_srai_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_srav_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srav_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srav_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srl_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srl_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srl_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srli_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_srli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_srli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_srlv_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srlv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_srlv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sub_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sub_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sub_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_sub_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_subs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_subs_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_subs_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_subs_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_ternarylogic_epi32<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_ternarylogic_epi64<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm_mask_unpackhi_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpackhi_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpackhi_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpackhi_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpacklo_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpacklo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpacklo_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_unpacklo_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_xor_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_mask_xor_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskload_epi32<T: From<Self>>(mem_addr: *const i32, mask: impl Into<Self>) -> T;
    unsafe fn _mm_maskload_epi64<T: From<Self>>(mem_addr: *const i64, mask: impl Into<Self>) -> T;
    unsafe fn _mm_maskmoveu_si128(self, mask: impl Into<Self>, mem_addr: *mut i8);
    unsafe fn _mm_maskz_abs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_abs_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_abs_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_add_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_add_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_add_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_add_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_adds_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_adds_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_adds_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_adds_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_alignr_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_alignr_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_alignr_epi8<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_and_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_and_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_andnot_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_andnot_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_avg_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_avg_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_broadcastb_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_broadcastd_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_broadcastq_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_broadcastw_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_compress_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_compress_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_compress_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_compress_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_conflict_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_conflict_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi16_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi16_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi16_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi32_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi32_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi32_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi64_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi64_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi64_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi8_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi8_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepi8_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepu16_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepu16_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepu32_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepu8_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepu8_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtepu8_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtsepi16_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtsepi32_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtsepi32_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtsepi64_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtsepi64_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtsepi64_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtusepi16_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtusepi32_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtusepi32_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtusepi64_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtusepi64_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_cvtusepi64_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_dbsad_epu8<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_dpbusd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_dpbusds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_dpwssd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_dpwssds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_expand_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_expand_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_expand_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_expand_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_gf2p8affine_epi64_epi8<const b: i32>(k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_gf2p8affineinv_epi64_epi8<const b: i32>(k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_gf2p8mul_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_loadu_epi8<T: From<Self>>(k: u16, mem_addr: *const i8) -> T;
    unsafe fn _mm_maskz_lzcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_lzcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_madd_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_maddubs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_max_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_min_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mov_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mov_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mov_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mov_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mul_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mul_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mulhi_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mulhi_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mulhrs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mullo_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_mullo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_multishift_epi64_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_or_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_or_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_packs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_packs_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_packus_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_packus_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_permutex2var_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_permutex2var_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_permutex2var_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_permutex2var_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_permutexvar_epi16<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_permutexvar_epi8<T: From<Self>>(k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_popcnt_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_popcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_popcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_popcnt_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_rol_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_rol_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_rolv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_rolv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_ror_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_ror_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_rorv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_rorv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_set1_epi16<T: From<Self>>(k: u8, a: i16) -> T;
    unsafe fn _mm_maskz_set1_epi32<T: From<Self>>(k: u8, a: i32) -> T;
    unsafe fn _mm_maskz_set1_epi64<T: From<Self>>(k: u8, a: i64) -> T;
    unsafe fn _mm_maskz_set1_epi8<T: From<Self>>(k: u16, a: i8) -> T;
    unsafe fn _mm_maskz_shldi_epi16<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shldi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shldi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shldv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shldv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shldv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shrdi_epi16<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shrdi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shrdi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shrdv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shrdv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shrdv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shuffle_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_shufflehi_epi16<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_shufflelo_epi16<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_sll_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sll_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sll_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_slli_epi16<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_slli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_slli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_sllv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sllv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sllv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sra_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sra_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sra_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srai_epi16<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_srai_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_srai_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_srav_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srav_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srav_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srl_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srl_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srl_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srli_epi16<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_srli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_srli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_srlv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srlv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_srlv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sub_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sub_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sub_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_sub_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_subs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_subs_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_subs_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_subs_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_ternarylogic_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_ternarylogic_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm_maskz_unpackhi_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpackhi_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpackhi_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpackhi_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpacklo_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpacklo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpacklo_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_unpacklo_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_xor_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_maskz_xor_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_max_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_min_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_minpos_epu16<T: From<Self>>(self) -> T;
    unsafe fn _mm_move_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_movemask_epi8(self) -> i32;
    unsafe fn _mm_movepi16_mask(self) -> u8;
    unsafe fn _mm_movepi8_mask(self) -> u16;
    unsafe fn _mm_movm_epi16<T: From<Self>>(k: u8) -> T;
    unsafe fn _mm_movm_epi8<T: From<Self>>(k: u16) -> T;
    unsafe fn _mm_mpsadbw_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_mul_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mul_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mulhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mulhi_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mulhrs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mullo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_mullo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_multishift_epi64_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_or_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_or_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_or_si128<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_packs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_packs_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_packus_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_packus_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm_permutexvar_epi16<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm_permutexvar_epi8<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm_popcnt_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm_popcnt_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm_popcnt_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm_popcnt_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm_rol_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm_rol_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm_rolv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_rolv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_ror_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm_ror_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm_rorv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_rorv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sad_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_set1_epi16<T: From<Self>>(a: i16) -> T;
    unsafe fn _mm_set1_epi32<T: From<Self>>(a: i32) -> T;
    unsafe fn _mm_set1_epi64x<T: From<Self>>(a: i64) -> T;
    unsafe fn _mm_set1_epi8<T: From<Self>>(a: i8) -> T;
    unsafe fn _mm_set_epi16<T: From<Self>>(e: [i16; 8]) -> T;
    unsafe fn _mm_set_epi32<T: From<Self>>(e: [i32; 4]) -> T;
    unsafe fn _mm_set_epi64x<T: From<Self>>(e: [i64; 2]) -> T;
    unsafe fn _mm_set_epi8<T: From<Self>>(e: [i8; 16]) -> T;
    unsafe fn _mm_setr_epi16<T: From<Self>>(e: [i16; 8]) -> T;
    unsafe fn _mm_setr_epi32<T: From<Self>>(e: [i32; 4]) -> T;
    unsafe fn _mm_setr_epi8<T: From<Self>>(e: [i8; 16]) -> T;
    unsafe fn _mm_setzero_si128<T: From<Self>>() -> T;
    unsafe fn _mm_sha1msg1_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sha1msg2_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sha1nexte_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sha1rnds4_epu32<const func: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_sha256msg1_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sha256msg2_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sha256rnds2_epu32<T: From<Self>>(self, b: impl Into<Self>, k: impl Into<Self>) -> T;
    unsafe fn _mm_shldi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_shldi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_shldi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_shldv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_shldv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_shldv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_shrdi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_shrdi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_shrdi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm_shrdv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_shrdv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_shrdv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm_shuffle_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm_shuffle_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_shufflehi_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm_shufflelo_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm_sign_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sign_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sign_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sll_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sll_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sll_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_slli_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm_slli_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm_slli_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm_slli_si128<const imm8: i32>(self) -> Self;
    unsafe fn _mm_sllv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sllv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sllv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sra_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sra_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_sra_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srai_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm_srai_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm_srai_epi64<const imm8: u32>(self) -> Self;
    unsafe fn _mm_srav_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srav_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srav_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srl_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srl_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srl_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srli_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm_srli_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm_srli_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm_srli_si128<const imm8: i32>(self) -> Self;
    unsafe fn _mm_srlv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srlv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_srlv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm_store_si128(mem_addr: *mut Self, a: impl Into<Self>);
    unsafe fn _mm_storel_epi64(mem_addr: *mut Self, a: impl Into<Self>);
    unsafe fn _mm_storeu_si128(mem_addr: *mut Self, a: impl Into<Self>);
    unsafe fn _mm_sub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sub_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_sub_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_subs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_subs_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_subs_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_subs_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_ternarylogic_epi32<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm_ternarylogic_epi64<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm_test_all_ones(self) -> i32;
    unsafe fn _mm_test_all_zeros(self, a: impl Into<Self>) -> i32;
    unsafe fn _mm_test_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_test_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_test_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_test_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_test_mix_ones_zeros(self, a: impl Into<Self>) -> i32;
    unsafe fn _mm_testc_si128(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_testn_epi16_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_testn_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_testn_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm_testn_epi8_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm_testnzc_si128(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_testz_si128(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm_undefined_si128<T: From<Self>>() -> T;
    unsafe fn _mm_unpackhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpackhi_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpackhi_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpackhi_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpacklo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpacklo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpacklo_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_unpacklo_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_xor_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_xor_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm_xor_si128<T: From<Self>>(self, b: impl Into<Self>) -> T;
}
impl __m128iIntrinsic for __m128i {
    #[inline(always)]
    unsafe fn _mm256_broadcast_i32x4<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_broadcast_i32x4(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastb_epi8<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_broadcastb_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastd_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_broadcastd_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastq_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_broadcastq_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastsi128_si256<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_broadcastsi128_si256(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastw_epi16<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_broadcastw_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_castsi128_si256<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_castsi128_si256(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_castsi256_si128<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_castsi256_si128(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi16_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepi16_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi16_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepi16_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi16_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtepi16_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi32_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtepi32_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi32_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepi32_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi32_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtepi32_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi64_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtepi64_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi64_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtepi64_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi64_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtepi64_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi8_epi16<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepi8_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi8_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepi8_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi8_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepi8_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu16_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepu16_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu16_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepu16_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu32_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepu32_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu8_epi16<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepu8_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu8_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepu8_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu8_epi64<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_cvtepu8_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi16_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtsepi16_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi32_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtsepi32_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi32_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtsepi32_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi64_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtsepi64_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi64_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtsepi64_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi64_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtsepi64_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi16_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtusepi16_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi32_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtusepi32_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi32_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtusepi32_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi64_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtusepi64_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi64_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtusepi64_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi64_epi8<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm256_cvtusepi64_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_extractf128_si256<const imm8: i32>(a: impl Into<__m256i>) -> Self {
        unsafe { _mm256_extractf128_si256::<imm8>(a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_extracti128_si256<const imm8: i32>(a: impl Into<__m256i>) -> Self {
        unsafe { _mm256_extracti128_si256::<imm8>(a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_extracti32x4_epi32<const imm8: i32>(a: impl Into<__m256i>) -> Self {
        unsafe { _mm256_extracti32x4_epi32::<imm8>(a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_i64gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<__m256i>) -> Self {
        unsafe { _mm256_i64gather_epi32::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_loadu2_m128i<T: From<__m256i>>(hiaddr: *const Self, loaddr: *const Self) -> T {
        unsafe { _mm256_loadu2_m128i(hiaddr, loaddr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi16_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtsepi16_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtsepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtsepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtsepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtsepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtsepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtsepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtsepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtsepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtsepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtsepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtsepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtusepi16_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtusepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtusepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtusepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtusepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtusepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtusepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtusepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtusepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtusepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtusepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_mask_cvtusepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_extracti32x4_epi32<const imm8: i32>(self, k: u8, a: impl Into<__m256i>) -> Self {
        unsafe { _mm256_mask_extracti32x4_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_i64gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<__m256i>, mask: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_i64gather_epi32::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi16_epi8<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi32_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi32_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtsepi16_epi8<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtsepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtsepi32_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtsepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtsepi32_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtsepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtsepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtsepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtsepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtsepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtsepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtsepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtusepi16_epi8<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtusepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtusepi32_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtusepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtusepi32_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtusepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtusepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtusepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtusepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtusepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtusepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm256_maskz_cvtusepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_extracti32x4_epi32<const imm8: i32>(k: u8, a: impl Into<__m256i>) -> Self {
        unsafe { _mm256_maskz_extracti32x4_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_set_m128i<T: From<__m256i>>(self, lo: impl Into<Self>) -> T {
        unsafe { _mm256_set_m128i(self, lo.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setr_m128i<T: From<__m256i>>(self, hi: impl Into<Self>) -> T {
        unsafe { _mm256_setr_m128i(self, hi.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_storeu2_m128i(hiaddr: *mut Self, loaddr: *mut Self, a: impl Into<__m256i>) {
        unsafe { _mm256_storeu2_m128i(hiaddr, loaddr, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_zextsi128_si256<T: From<__m256i>>(self) -> T {
        unsafe { _mm256_zextsi128_si256(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcast_i32x4<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_broadcast_i32x4(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastb_epi8<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_broadcastb_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastd_epi32<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_broadcastd_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastq_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_broadcastq_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastw_epi16<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_broadcastw_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi128_si512<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_castsi128_si512(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi512_si128<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_castsi512_si128(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi16_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepi16_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi32_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtepi32_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi64_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtepi64_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi64_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtepi64_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi8_epi32<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepi8_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi8_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepi8_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu16_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepu16_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu8_epi32<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepu8_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu8_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepu8_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi32_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtsepi32_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi64_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtsepi64_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi64_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtsepi64_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi32_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtusepi32_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi64_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtusepi64_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi64_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtusepi64_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_extracti32x4_epi32<const imm8: i32>(a: impl Into<__m512i>) -> Self {
        unsafe { _mm512_extracti32x4_epi32::<imm8>(a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi32_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtsepi32_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtsepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtsepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtsepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtsepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtsepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtusepi32_epi8<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtusepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtusepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtusepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtusepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtusepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_extracti32x4_epi32<const imm8: i32>(self, k: u8, a: impl Into<__m512i>) -> Self {
        unsafe { _mm512_mask_extracti32x4_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi32_epi8<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtsepi32_epi8<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtsepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtsepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtsepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtsepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtsepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtusepi32_epi8<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtusepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtusepi64_epi16<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtusepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtusepi64_epi8<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtusepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_extracti32x4_epi32<const imm8: i32>(k: u8, a: impl Into<__m512i>) -> Self {
        unsafe { _mm512_maskz_extracti32x4_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_zextsi128_si512<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_zextsi128_si512(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_abs_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_abs_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_abs_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_abs_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_abs_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_abs_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_add_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_add_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_add_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_add_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_add_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_add_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_add_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_add_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_adds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_adds_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_adds_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_adds_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_adds_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_adds_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_adds_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_adds_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_aesdec_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm_aesdec_si128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_aesdeclast_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm_aesdeclast_si128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_aesenc_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm_aesenc_si128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_aesenclast_si128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm_aesenclast_si128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_aesimc_si128<T: From<Self>>(self) -> T {
        unsafe { _mm_aesimc_si128(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_aeskeygenassist_si128<const imm8: i32>(self) -> Self {
        unsafe { _mm_aeskeygenassist_si128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_alignr_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_alignr_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_alignr_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_alignr_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_alignr_epi8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_alignr_epi8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_and_si128<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_and_si128(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_andnot_si128<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_andnot_si128(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_avg_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_avg_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_avg_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_avg_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_bitshuffle_epi64_mask(self, c: impl Into<Self>) -> u16 {
        unsafe { _mm_bitshuffle_epi64_mask(self, c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_blend_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_blend_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_blend_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_blend_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_blendv_epi8<T: From<Self>>(self, b: impl Into<Self>, mask: impl Into<Self>) -> T {
        unsafe { _mm_blendv_epi8(self, b.into(), mask.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_broadcastb_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_broadcastb_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_broadcastd_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_broadcastd_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_broadcastmb_epi64<T: From<Self>>(k: u8) -> T {
        unsafe { _mm_broadcastmb_epi64(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_broadcastmw_epi32<T: From<Self>>(k: u16) -> T {
        unsafe { _mm_broadcastmw_epi32(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_broadcastq_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_broadcastq_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_broadcastw_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_broadcastw_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_bslli_si128<const imm8: i32>(self) -> Self {
        unsafe { _mm_bslli_si128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_bsrli_si128<const imm8: i32>(self) -> Self {
        unsafe { _mm_bsrli_si128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_clmulepi64_si128<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_clmulepi64_si128::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmp_epi16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmp_epi16_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmp_epi8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmp_epi8_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmp_epu16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmp_epu16_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmp_epu8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmp_epu8_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpeq_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpeq_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpeq_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpeq_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpeq_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpeq_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpeq_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpeq_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epu16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpeq_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpeq_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpeq_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpeq_epu8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpeq_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestra<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32 {
        unsafe { _mm_cmpestra::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestrc<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32 {
        unsafe { _mm_cmpestrc::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestri<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32 {
        unsafe { _mm_cmpestri::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestrm<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> Self {
        unsafe { _mm_cmpestrm::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestro<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32 {
        unsafe { _mm_cmpestro::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestrs<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32 {
        unsafe { _mm_cmpestrs::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpestrz<const imm8: i32>(self, la: i32, b: impl Into<Self>, lb: i32) -> i32 {
        unsafe { _mm_cmpestrz::<imm8>(self, la, b.into(), lb) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpge_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpge_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpge_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpge_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epu16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpge_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpge_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpge_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpge_epu8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpge_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpgt_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpgt_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpgt_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpgt_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpgt_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpgt_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmpgt_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpgt_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epu16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpgt_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpgt_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpgt_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpgt_epu8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpgt_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistra<const imm8: i32>(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_cmpistra::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistrc<const imm8: i32>(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_cmpistrc::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistri<const imm8: i32>(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_cmpistri::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistrm<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_cmpistrm::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistro<const imm8: i32>(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_cmpistro::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistrs<const imm8: i32>(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_cmpistrs::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpistrz<const imm8: i32>(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_cmpistrz::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmple_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmple_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmple_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmple_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epu16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmple_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmple_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmple_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmple_epu8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmple_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmplt_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmplt_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmplt_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmplt_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmplt_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_cmplt_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmplt_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epu16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmplt_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmplt_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmplt_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmplt_epu8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmplt_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpneq_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpneq_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpneq_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpneq_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epu16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpneq_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpneq_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_cmpneq_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_cmpneq_epu8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_cmpneq_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_conflict_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_conflict_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_conflict_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_conflict_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi16_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi16_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi16_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi16_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi16_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi32_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi32_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi32_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi32_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi64_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi64_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi64_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi8_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi8_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi8_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi8_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepi8_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepi8_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepu16_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepu16_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepu16_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepu16_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepu32_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepu32_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepu8_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepu8_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepu8_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepu8_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtepu8_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtepu8_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsepi16_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtsepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsepi32_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtsepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsepi32_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtsepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsepi64_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtsepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsepi64_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtsepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsepi64_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtsepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsi128_si32(self) -> i32 {
        unsafe { _mm_cvtsi128_si32(self) }
    }
    #[inline(always)]
    unsafe fn _mm_cvtsi128_si64(self) -> i64 {
        unsafe { _mm_cvtsi128_si64(self) }
    }
    #[inline(always)]
    unsafe fn _mm_cvtsi128_si64x(self) -> i64 {
        unsafe { _mm_cvtsi128_si64x(self) }
    }
    #[inline(always)]
    unsafe fn _mm_cvtsi32_si128<T: From<Self>>(a: i32) -> T {
        unsafe { _mm_cvtsi32_si128(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsi64_si128<T: From<Self>>(a: i64) -> T {
        unsafe { _mm_cvtsi64_si128(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtsi64x_si128<T: From<Self>>(a: i64) -> T {
        unsafe { _mm_cvtsi64x_si128(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtusepi16_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtusepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtusepi32_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtusepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtusepi32_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtusepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtusepi64_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtusepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtusepi64_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtusepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_cvtusepi64_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_cvtusepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_dbsad_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_dbsad_epu8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_dpbusd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_dpbusd_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_dpbusds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_dpbusds_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_dpwssd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_dpwssd_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_dpwssds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_dpwssds_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_extract_epi16<const imm8: i32>(self) -> i32 {
        unsafe { _mm_extract_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_extract_epi32<const imm8: i32>(self) -> i32 {
        unsafe { _mm_extract_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_extract_epi64<const imm8: i32>(self) -> i64 {
        unsafe { _mm_extract_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_extract_epi8<const imm8: i32>(self) -> i32 {
        unsafe { _mm_extract_epi8::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_gf2p8affine_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self {
        unsafe { _mm_gf2p8affine_epi64_epi8::<b>(self, A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_gf2p8affineinv_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self {
        unsafe { _mm_gf2p8affineinv_epi64_epi8::<b>(self, A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_gf2p8mul_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_gf2p8mul_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_hadd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_hadd_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_hadd_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_hadd_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_hadds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_hadds_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_hsub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_hsub_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_hsub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_hsub_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_hsubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_hsubs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_i32gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<Self>) -> Self {
        unsafe { _mm_i32gather_epi32::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_i32gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<Self>) -> Self {
        unsafe { _mm_i32gather_epi64::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_i64gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<Self>) -> Self {
        unsafe { _mm_i64gather_epi32::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_i64gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<Self>) -> Self {
        unsafe { _mm_i64gather_epi64::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_insert_epi16<const imm8: i32>(self, i: i32) -> Self {
        unsafe { _mm_insert_epi16::<imm8>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm_insert_epi32<const imm8: i32>(self, i: i32) -> Self {
        unsafe { _mm_insert_epi32::<imm8>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm_insert_epi64<const imm8: i32>(self, i: i64) -> Self {
        unsafe { _mm_insert_epi64::<imm8>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm_insert_epi8<const imm8: i32>(self, i: i32) -> Self {
        unsafe { _mm_insert_epi8::<imm8>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm_lddqu_si128<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm_lddqu_si128(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_load_si128<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm_load_si128(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_loadl_epi64<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm_loadl_epi64(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_loadu_epi8<T: From<Self>>(mem_addr: *const i8) -> T {
        unsafe { _mm_loadu_epi8(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_loadu_si128<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm_loadu_si128(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_lzcnt_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_lzcnt_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_lzcnt_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_lzcnt_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_madd52hi_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_madd52hi_epu64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_madd52lo_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_madd52lo_epu64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_madd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_madd_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maddubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_maddubs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask2_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T {
        unsafe { _mm_mask2_permutex2var_epi16(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask2_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T {
        unsafe { _mm_mask2_permutex2var_epi32(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask2_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T {
        unsafe { _mm_mask2_permutex2var_epi64(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask2_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, k: u16, b: impl Into<Self>) -> T {
        unsafe { _mm_mask2_permutex2var_epi8(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_abs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_abs_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_abs_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_abs_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_abs_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_abs_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_add_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_add_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_add_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_add_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_add_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_add_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_add_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_add_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_adds_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_adds_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_adds_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_adds_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_adds_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_adds_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_adds_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_adds_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_alignr_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_alignr_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_alignr_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_alignr_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_alignr_epi8<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_alignr_epi8::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_and_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_and_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_and_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_and_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_andnot_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_andnot_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_andnot_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_andnot_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_avg_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_avg_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_avg_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_avg_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_blend_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_blend_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_blend_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_blend_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_blend_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_blend_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_blend_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_blend_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_broadcastb_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_broadcastb_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_broadcastd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_broadcastd_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_broadcastq_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_broadcastq_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_broadcastw_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_broadcastw_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_compress_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_compress_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_compress_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_compress_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_compress_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_compress_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_compress_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_compress_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_conflict_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_conflict_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_conflict_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_conflict_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi16_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi16_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi16_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi16_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi16_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi32_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi32_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi8_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi8_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi8_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi8_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepi8_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepi8_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepu16_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepu16_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepu16_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepu16_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepu32_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepu32_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepu8_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepu8_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepu8_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepu8_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtepu8_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtepu8_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtsepi16_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtsepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtsepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtsepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtsepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtsepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtsepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtsepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtsepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtsepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtsepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtsepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtusepi16_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtusepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtusepi32_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtusepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtusepi32_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtusepi32_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtusepi64_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtusepi64_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtusepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtusepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_cvtusepi64_epi8<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_cvtusepi64_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_dbsad_epu8<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_dbsad_epu8::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_dpbusd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_dpbusd_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_dpbusds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_dpbusds_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_dpwssd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_dpwssd_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_dpwssds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_dpwssds_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_expand_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_expand_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_expand_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_expand_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_expand_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_expand_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_expand_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_expand_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_gf2p8affine_epi64_epi8<const b: i32>(self, k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm_mask_gf2p8affine_epi64_epi8::<b>(self, k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_gf2p8affineinv_epi64_epi8<const b: i32>(self, k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm_mask_gf2p8affineinv_epi64_epi8::<b>(self, k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_gf2p8mul_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_gf2p8mul_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_i32gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self {
        unsafe { _mm_mask_i32gather_epi32::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_i32gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self {
        unsafe { _mm_mask_i32gather_epi64::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_i64gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self {
        unsafe { _mm_mask_i64gather_epi32::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_i64gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self {
        unsafe { _mm_mask_i64gather_epi64::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_loadu_epi8<T: From<Self>>(self, k: u16, mem_addr: *const i8) -> T {
        unsafe { _mm_mask_loadu_epi8(self, k, mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_lzcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_lzcnt_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_lzcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_lzcnt_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_madd_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_madd_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_maddubs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_maddubs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epu64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_max_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_max_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epu64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_min_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_min_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mov_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_mov_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mov_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_mov_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mov_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_mov_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mov_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_mov_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mul_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mul_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mul_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mul_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mulhi_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mulhi_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mulhi_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mulhi_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mulhrs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mulhrs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mullo_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mullo_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_mullo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_mullo_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_multishift_epi64_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_multishift_epi64_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_or_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_or_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_or_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_or_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_packs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_packs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_packs_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_packs_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_packus_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_packus_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_packus_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_packus_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_permutex2var_epi16<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_permutex2var_epi16(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_permutex2var_epi32<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_permutex2var_epi32(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_permutex2var_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_permutex2var_epi64(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_permutex2var_epi8<T: From<Self>>(self, k: u16, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_permutex2var_epi8(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_permutexvar_epi16<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_permutexvar_epi16(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_permutexvar_epi8<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_permutexvar_epi8(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_popcnt_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_popcnt_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_popcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_popcnt_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_popcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_popcnt_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_popcnt_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_mask_popcnt_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_rol_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_rol_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_rol_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_rol_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_rolv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_rolv_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_rolv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_rolv_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_ror_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_ror_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_ror_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_ror_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_rorv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_rorv_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_rorv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_rorv_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_set1_epi16<T: From<Self>>(self, k: u8, a: i16) -> T {
        unsafe { _mm_mask_set1_epi16(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_set1_epi32<T: From<Self>>(self, k: u8, a: i32) -> T {
        unsafe { _mm_mask_set1_epi32(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_set1_epi64<T: From<Self>>(self, k: u8, a: i64) -> T {
        unsafe { _mm_mask_set1_epi64(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_set1_epi8<T: From<Self>>(self, k: u16, a: i8) -> T {
        unsafe { _mm_mask_set1_epi8(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shldi_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shldi_epi16::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shldi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shldi_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shldi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shldi_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shldv_epi16<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_mask_shldv_epi16(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shldv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_mask_shldv_epi32(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shldv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_mask_shldv_epi64(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shrdi_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shrdi_epi16::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shrdi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shrdi_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shrdi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shrdi_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shrdv_epi16<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_mask_shrdv_epi16(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shrdv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_mask_shrdv_epi32(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shrdv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_mask_shrdv_epi64(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shuffle_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_shuffle_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_shufflehi_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shufflehi_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_shufflelo_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_shufflelo_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_sll_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sll_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sll_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sll_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sll_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sll_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_slli_epi16<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_slli_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_slli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_slli_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_slli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_slli_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_sllv_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sllv_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sllv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sllv_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sllv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sllv_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sra_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sra_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sra_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sra_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sra_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_sra_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srai_epi16<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_srai_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_srai_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_srai_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_srai_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_srai_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_srav_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srav_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srav_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srav_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srav_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srav_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srl_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srl_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srl_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srl_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srl_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srl_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srli_epi16<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_srli_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_srli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_srli_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_srli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_mask_srli_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_srlv_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srlv_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srlv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srlv_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_srlv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_mask_srlv_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sub_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_sub_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sub_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_sub_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sub_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_sub_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_sub_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_sub_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_subs_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_subs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_subs_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_subs_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_subs_epu16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_subs_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_subs_epu8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_subs_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_ternarylogic_epi32<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm_mask_ternarylogic_epi32::<imm8>(self, k, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_ternarylogic_epi64<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm_mask_ternarylogic_epi64::<imm8>(self, k, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpackhi_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpackhi_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpackhi_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpackhi_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpackhi_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpackhi_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpackhi_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpackhi_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpacklo_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpacklo_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpacklo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpacklo_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpacklo_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpacklo_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_unpacklo_epi8<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_unpacklo_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_xor_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_xor_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mask_xor_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_mask_xor_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskload_epi32<T: From<Self>>(mem_addr: *const i32, mask: impl Into<Self>) -> T {
        unsafe { _mm_maskload_epi32(mem_addr, mask.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskload_epi64<T: From<Self>>(mem_addr: *const i64, mask: impl Into<Self>) -> T {
        unsafe { _mm_maskload_epi64(mem_addr, mask.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskmoveu_si128(self, mask: impl Into<Self>, mem_addr: *mut i8) {
        unsafe { _mm_maskmoveu_si128(self, mask.into(), mem_addr) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_abs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_abs_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_abs_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_abs_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_abs_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_abs_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_add_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_add_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_add_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_add_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_add_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_add_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_add_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_add_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_adds_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_adds_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_adds_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_adds_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_adds_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_adds_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_adds_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_adds_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_alignr_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_alignr_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_alignr_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_alignr_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_alignr_epi8<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_alignr_epi8::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_and_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_and_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_and_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_and_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_andnot_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_andnot_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_andnot_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_andnot_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_avg_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_avg_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_avg_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_avg_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_broadcastb_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_broadcastb_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_broadcastd_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_broadcastd_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_broadcastq_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_broadcastq_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_broadcastw_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_broadcastw_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_compress_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_compress_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_compress_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_compress_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_compress_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_compress_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_compress_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_compress_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_conflict_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_conflict_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_conflict_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_conflict_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi16_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi16_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi16_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi16_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi16_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi32_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi32_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi32_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi32_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi64_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi64_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi64_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi8_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi8_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi8_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi8_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepi8_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepi8_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepu16_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepu16_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepu16_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepu16_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepu32_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepu32_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepu8_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepu8_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepu8_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepu8_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtepu8_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtepu8_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtsepi16_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtsepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtsepi32_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtsepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtsepi32_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtsepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtsepi64_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtsepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtsepi64_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtsepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtsepi64_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtsepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtusepi16_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtusepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtusepi32_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtusepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtusepi32_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtusepi32_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtusepi64_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtusepi64_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtusepi64_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtusepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_cvtusepi64_epi8<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_cvtusepi64_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_dbsad_epu8<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_dbsad_epu8::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_dpbusd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_dpbusd_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_dpbusds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_dpbusds_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_dpwssd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_dpwssd_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_dpwssds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_dpwssds_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_expand_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_expand_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_expand_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_expand_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_expand_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_expand_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_expand_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_expand_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_gf2p8affine_epi64_epi8<const b: i32>(k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_gf2p8affine_epi64_epi8::<b>(k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_gf2p8affineinv_epi64_epi8<const b: i32>(k: u16, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_gf2p8affineinv_epi64_epi8::<b>(k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_gf2p8mul_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_gf2p8mul_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_loadu_epi8<T: From<Self>>(k: u16, mem_addr: *const i8) -> T {
        unsafe { _mm_maskz_loadu_epi8(k, mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_lzcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_lzcnt_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_lzcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_lzcnt_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_madd_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_madd_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_maddubs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_maddubs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epu64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_max_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_max_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epu64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_min_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_min_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mov_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mov_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mov_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mov_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mov_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mov_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mov_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mov_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mul_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mul_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mul_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mul_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mulhi_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mulhi_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mulhi_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mulhi_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mulhrs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mulhrs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mullo_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mullo_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_mullo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_mullo_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_multishift_epi64_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_multishift_epi64_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_or_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_or_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_or_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_or_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_packs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_packs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_packs_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_packs_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_packus_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_packus_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_packus_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_packus_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_permutex2var_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_permutex2var_epi16(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_permutex2var_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_permutex2var_epi32(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_permutex2var_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_permutex2var_epi64(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_permutex2var_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_permutex2var_epi8(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_permutexvar_epi16<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_permutexvar_epi16(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_permutexvar_epi8<T: From<Self>>(k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_permutexvar_epi8(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_popcnt_epi16<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_popcnt_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_popcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_popcnt_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_popcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_popcnt_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_popcnt_epi8<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm_maskz_popcnt_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_rol_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_rol_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_rol_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_rol_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_rolv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_rolv_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_rolv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_rolv_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_ror_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_ror_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_ror_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_ror_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_rorv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_rorv_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_rorv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_rorv_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_set1_epi16<T: From<Self>>(k: u8, a: i16) -> T {
        unsafe { _mm_maskz_set1_epi16(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_set1_epi32<T: From<Self>>(k: u8, a: i32) -> T {
        unsafe { _mm_maskz_set1_epi32(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_set1_epi64<T: From<Self>>(k: u8, a: i64) -> T {
        unsafe { _mm_maskz_set1_epi64(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_set1_epi8<T: From<Self>>(k: u16, a: i8) -> T {
        unsafe { _mm_maskz_set1_epi8(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shldi_epi16<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shldi_epi16::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shldi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shldi_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shldi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shldi_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shldv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shldv_epi16(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shldv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shldv_epi32(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shldv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shldv_epi64(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shrdi_epi16<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shrdi_epi16::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shrdi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shrdi_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shrdi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shrdi_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shrdv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shrdv_epi16(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shrdv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shrdv_epi32(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shrdv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shrdv_epi64(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shuffle_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_shuffle_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shufflehi_epi16<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shufflehi_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_shufflelo_epi16<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_shufflelo_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sll_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sll_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sll_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sll_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sll_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sll_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_slli_epi16<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_slli_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_slli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_slli_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_slli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_slli_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sllv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sllv_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sllv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sllv_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sllv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sllv_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sra_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sra_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sra_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sra_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sra_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sra_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srai_epi16<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_srai_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srai_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_srai_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srai_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_srai_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srav_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srav_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srav_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srav_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srav_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srav_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srl_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srl_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srl_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srl_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srl_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srl_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srli_epi16<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_srli_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_srli_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_srli_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srlv_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srlv_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srlv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srlv_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_srlv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm_maskz_srlv_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sub_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sub_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sub_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sub_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sub_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sub_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_sub_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_sub_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_subs_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_subs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_subs_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_subs_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_subs_epu16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_subs_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_subs_epu8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_subs_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_ternarylogic_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_ternarylogic_epi32::<imm8>(k, a.into(), b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_ternarylogic_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm_maskz_ternarylogic_epi64::<imm8>(k, a.into(), b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpackhi_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpackhi_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpackhi_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpackhi_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpackhi_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpackhi_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpackhi_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpackhi_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpacklo_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpacklo_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpacklo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpacklo_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpacklo_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpacklo_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_unpacklo_epi8<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_unpacklo_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_xor_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_xor_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_maskz_xor_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_maskz_xor_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epu64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_max_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_max_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epu64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_min_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_min_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_minpos_epu16<T: From<Self>>(self) -> T {
        unsafe { _mm_minpos_epu16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_move_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_move_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_movemask_epi8(self) -> i32 {
        unsafe { _mm_movemask_epi8(self) }
    }
    #[inline(always)]
    unsafe fn _mm_movepi16_mask(self) -> u8 {
        unsafe { _mm_movepi16_mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm_movepi8_mask(self) -> u16 {
        unsafe { _mm_movepi8_mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm_movm_epi16<T: From<Self>>(k: u8) -> T {
        unsafe { _mm_movm_epi16(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_movm_epi8<T: From<Self>>(k: u16) -> T {
        unsafe { _mm_movm_epi8(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mpsadbw_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_mpsadbw_epu8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_mul_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mul_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mul_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mul_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mulhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mulhi_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mulhi_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mulhi_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mulhrs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mulhrs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mullo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mullo_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_mullo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_mullo_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_multishift_epi64_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_multishift_epi64_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_or_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_or_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_or_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_or_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_or_si128<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_or_si128(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_packs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_packs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_packs_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_packs_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_packus_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_packus_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_packus_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_packus_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_permutex2var_epi16(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_permutex2var_epi32(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_permutex2var_epi64(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm_permutex2var_epi8(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_permutexvar_epi16<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm_permutexvar_epi16(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_permutexvar_epi8<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm_permutexvar_epi8(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_popcnt_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm_popcnt_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_popcnt_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm_popcnt_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_popcnt_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm_popcnt_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_popcnt_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm_popcnt_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_rol_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm_rol_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_rol_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm_rol_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_rolv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_rolv_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_rolv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_rolv_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_ror_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm_ror_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_ror_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm_ror_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_rorv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_rorv_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_rorv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_rorv_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sad_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sad_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set1_epi16<T: From<Self>>(a: i16) -> T {
        unsafe { _mm_set1_epi16(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set1_epi32<T: From<Self>>(a: i32) -> T {
        unsafe { _mm_set1_epi32(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set1_epi64x<T: From<Self>>(a: i64) -> T {
        unsafe { _mm_set1_epi64x(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set1_epi8<T: From<Self>>(a: i8) -> T {
        unsafe { _mm_set1_epi8(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set_epi16<T: From<Self>>(e: [i16; 8]) -> T {
        unsafe { _mm_set_epi16(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set_epi32<T: From<Self>>(e: [i32; 4]) -> T {
        unsafe { _mm_set_epi32(e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set_epi64x<T: From<Self>>(e: [i64; 2]) -> T {
        unsafe { _mm_set_epi64x(e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_set_epi8<T: From<Self>>(e: [i8; 16]) -> T {
        unsafe { _mm_set_epi8(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_setr_epi16<T: From<Self>>(e: [i16; 8]) -> T {
        unsafe { _mm_setr_epi16(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_setr_epi32<T: From<Self>>(e: [i32; 4]) -> T {
        unsafe { _mm_setr_epi32(e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_setr_epi8<T: From<Self>>(e: [i8; 16]) -> T {
        unsafe { _mm_setr_epi8(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_setzero_si128<T: From<Self>>() -> T {
        unsafe { _mm_setzero_si128() }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sha1msg1_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sha1msg1_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sha1msg2_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sha1msg2_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sha1nexte_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sha1nexte_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sha1rnds4_epu32<const func: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_sha1rnds4_epu32::<func>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_sha256msg1_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sha256msg1_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sha256msg2_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sha256msg2_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sha256rnds2_epu32<T: From<Self>>(self, b: impl Into<Self>, k: impl Into<Self>) -> T {
        unsafe { _mm_sha256rnds2_epu32(self, b.into(), k.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shldi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_shldi_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_shldi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_shldi_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_shldi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_shldi_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_shldv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_shldv_epi16(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shldv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_shldv_epi32(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shldv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_shldv_epi64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shrdi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_shrdi_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_shrdi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_shrdi_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_shrdi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm_shrdi_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_shrdv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_shrdv_epi16(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shrdv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_shrdv_epi32(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shrdv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm_shrdv_epi64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shuffle_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm_shuffle_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_shuffle_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_shuffle_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_shufflehi_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm_shufflehi_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_shufflelo_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm_shufflelo_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_sign_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sign_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sign_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sign_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sign_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sign_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sll_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sll_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sll_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sll_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sll_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sll_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_slli_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm_slli_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_slli_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm_slli_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_slli_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm_slli_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_slli_si128<const imm8: i32>(self) -> Self {
        unsafe { _mm_slli_si128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_sllv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sllv_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sllv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sllv_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sllv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sllv_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sra_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sra_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sra_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sra_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sra_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_sra_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srai_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm_srai_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srai_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm_srai_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srai_epi64<const imm8: u32>(self) -> Self {
        unsafe { _mm_srai_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srav_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srav_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srav_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srav_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srav_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srav_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srl_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srl_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srl_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srl_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srl_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srl_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srli_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm_srli_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srli_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm_srli_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srli_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm_srli_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srli_si128<const imm8: i32>(self) -> Self {
        unsafe { _mm_srli_si128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm_srlv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srlv_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srlv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srlv_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_srlv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm_srlv_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_store_si128(mem_addr: *mut Self, a: impl Into<Self>) {
        unsafe { _mm_store_si128(mem_addr, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_storel_epi64(mem_addr: *mut Self, a: impl Into<Self>) {
        unsafe { _mm_storel_epi64(mem_addr, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_storeu_si128(mem_addr: *mut Self, a: impl Into<Self>) {
        unsafe { _mm_storeu_si128(mem_addr, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_sub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sub_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sub_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sub_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sub_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_sub_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_sub_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_subs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_subs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_subs_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_subs_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_subs_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_subs_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_subs_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_subs_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_ternarylogic_epi32<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm_ternarylogic_epi32::<imm8>(self, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_ternarylogic_epi64<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm_ternarylogic_epi64::<imm8>(self, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_test_all_ones(self) -> i32 {
        unsafe { _mm_test_all_ones(self) }
    }
    #[inline(always)]
    unsafe fn _mm_test_all_zeros(self, a: impl Into<Self>) -> i32 {
        unsafe { _mm_test_all_zeros(self, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_test_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_test_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_test_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_test_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_test_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_test_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_test_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_test_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_test_mix_ones_zeros(self, a: impl Into<Self>) -> i32 {
        unsafe { _mm_test_mix_ones_zeros(self, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testc_si128(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_testc_si128(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testn_epi16_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_testn_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testn_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_testn_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testn_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm_testn_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testn_epi8_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm_testn_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testnzc_si128(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_testnzc_si128(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_testz_si128(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm_testz_si128(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm_undefined_si128<T: From<Self>>() -> T {
        unsafe { _mm_undefined_si128() }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpackhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpackhi_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpackhi_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpackhi_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpackhi_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpackhi_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpackhi_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpackhi_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpacklo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpacklo_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpacklo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpacklo_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpacklo_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpacklo_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_unpacklo_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_unpacklo_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_xor_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_xor_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_xor_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_xor_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm_xor_si128<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm_xor_si128(self, b.into()) }.into()
    }
}
