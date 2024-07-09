// @generated
use core::arch::x86_64::*;
pub trait __m256iIntrinsic: Sized {
    unsafe fn _mm256_abs_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm256_abs_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm256_abs_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm256_abs_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm256_add_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_add_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_add_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_add_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_adds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_adds_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_adds_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_adds_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_aesdec_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm256_aesdeclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm256_aesenc_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm256_aesenclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm256_alignr_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_alignr_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_alignr_epi8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_and_si256<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_andnot_si256<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_avg_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_avg_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_bitshuffle_epi64_mask(self, c: impl Into<Self>) -> u32;
    unsafe fn _mm256_blend_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_blend_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_blendv_epi8<T: From<Self>>(self, b: impl Into<Self>, mask: impl Into<Self>) -> T;
    unsafe fn _mm256_broadcast_i32x4<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_broadcastb_epi8<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_broadcastd_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_broadcastmb_epi64<T: From<Self>>(k: u8) -> T;
    unsafe fn _mm256_broadcastmw_epi32<T: From<Self>>(k: u16) -> T;
    unsafe fn _mm256_broadcastq_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_broadcastsi128_si256<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_broadcastw_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_bslli_epi128<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_bsrli_epi128<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_castsi128_si256<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_castsi256_si128<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_clmulepi64_epi128<const Imm8: i32>(self, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_cmp_epi16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmp_epi8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmp_epu16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmp_epu8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpeq_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpeq_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpeq_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpeq_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpeq_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpeq_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpeq_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpeq_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpeq_epu16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpeq_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpeq_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpeq_epu8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpge_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpge_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpge_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpge_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpge_epu16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpge_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpge_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpge_epu8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpgt_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpgt_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpgt_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpgt_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpgt_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpgt_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpgt_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_cmpgt_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpgt_epu16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpgt_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpgt_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpgt_epu8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmple_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmple_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmple_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmple_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmple_epu16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmple_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmple_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmple_epu8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmplt_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmplt_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmplt_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmplt_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmplt_epu16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmplt_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmplt_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmplt_epu8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpneq_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpneq_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpneq_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpneq_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_cmpneq_epu16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_cmpneq_epu32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpneq_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_cmpneq_epu8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_conflict_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm256_conflict_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm256_cvtepi16_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepi16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepi16_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtepi32_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtepi32_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepi32_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtepi64_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtepi64_epi32<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtepi64_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtepi8_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepi8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepi8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepu16_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepu16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepu32_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepu8_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepu8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtepu8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_cvtsepi16_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtsepi32_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtsepi32_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtsepi64_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtsepi64_epi32<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtsepi64_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtsi256_si32(self) -> i32;
    unsafe fn _mm256_cvtusepi16_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtusepi32_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtusepi32_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtusepi64_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtusepi64_epi32<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_cvtusepi64_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm256_dbsad_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_dpbusd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_dpbusds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_dpwssd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_dpwssds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_extract_epi16<const index: i32>(self) -> i32;
    unsafe fn _mm256_extract_epi32<const index: i32>(self) -> i32;
    unsafe fn _mm256_extract_epi64<const index: i32>(self) -> i64;
    unsafe fn _mm256_extract_epi8<const index: i32>(self) -> i32;
    unsafe fn _mm256_extractf128_si256<const imm8: i32>(self) -> __m128i;
    unsafe fn _mm256_extracti128_si256<const imm8: i32>(self) -> __m128i;
    unsafe fn _mm256_extracti32x4_epi32<const imm8: i32>(self) -> __m128i;
    unsafe fn _mm256_gf2p8affine_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self;
    unsafe fn _mm256_gf2p8affineinv_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self;
    unsafe fn _mm256_gf2p8mul_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_hadd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_hadd_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_hadds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_hsub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_hsub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_hsubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_i32gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<Self>) -> Self;
    unsafe fn _mm256_i32gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<__m128i>) -> Self;
    unsafe fn _mm256_i64gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<Self>) -> Self;
    unsafe fn _mm256_insert_epi16<const index: i32>(self, i: i16) -> Self;
    unsafe fn _mm256_insert_epi32<const index: i32>(self, i: i32) -> Self;
    unsafe fn _mm256_insert_epi64<const index: i32>(self, i: i64) -> Self;
    unsafe fn _mm256_insert_epi8<const index: i32>(self, i: i8) -> Self;
    unsafe fn _mm256_insertf128_si256<const imm8: i32>(self, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm256_inserti128_si256<const imm8: i32>(self, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm256_inserti32x4<const imm8: i32>(self, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm256_lddqu_si256<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm256_load_si256<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm256_loadu2_m128i<T: From<Self>>(hiaddr: *const __m128i, loaddr: *const __m128i) -> T;
    unsafe fn _mm256_loadu_epi8<T: From<Self>>(mem_addr: *const i8) -> T;
    unsafe fn _mm256_loadu_si256<T: From<Self>>(mem_addr: *const Self) -> T;
    unsafe fn _mm256_lzcnt_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm256_lzcnt_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm256_madd52hi_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_madd52lo_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_madd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maddubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask2_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, k: u16, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask2_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask2_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask2_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, k: u32, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_abs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_abs_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_abs_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_abs_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_add_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_add_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_add_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_add_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_adds_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_adds_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_adds_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_adds_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_alignr_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_alignr_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_alignr_epi8<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_and_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_and_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_andnot_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_andnot_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_avg_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_avg_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_blend_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_blend_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_blend_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_blend_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_broadcast_i32x4<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_broadcastb_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_broadcastd_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_broadcastq_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_broadcastw_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_compress_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_compress_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_compress_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_compress_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_conflict_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_conflict_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_cvtepi16_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepi16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepi32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepi8_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepi8_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepi8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepu16_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepu16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepu32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepu8_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepu8_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_cvtepu8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_dbsad_epu8<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_dpbusd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_dpbusds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_dpwssd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_dpwssds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_expand_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_expand_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_expand_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_expand_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_gf2p8affine_epi64_epi8<const b: i32>(self, k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_gf2p8affineinv_epi64_epi8<const b: i32>(self, k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_gf2p8mul_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_i32gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_i32gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<__m128i>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_i64gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_inserti32x4<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm256_mask_loadu_epi8<T: From<Self>>(self, k: u32, mem_addr: *const i8) -> T;
    unsafe fn _mm256_mask_lzcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_lzcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_madd_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_maddubs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_max_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_min_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mov_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mov_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mov_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mov_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mul_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mul_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mulhi_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mulhi_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mulhrs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mullo_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_mullo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_multishift_epi64_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_or_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_or_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_packs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_packs_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_packus_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_packus_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutex2var_epi16<T: From<Self>>(self, k: u16, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutex2var_epi32<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutex2var_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutex2var_epi8<T: From<Self>>(self, k: u32, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutex_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_permutexvar_epi16<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutexvar_epi32<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutexvar_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_permutexvar_epi8<T: From<Self>>(self, k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_popcnt_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_popcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_popcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_popcnt_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_rol_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_rol_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_rolv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_rolv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_ror_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_ror_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_rorv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_rorv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_set1_epi16<T: From<Self>>(self, k: u16, a: i16) -> T;
    unsafe fn _mm256_mask_set1_epi32<T: From<Self>>(self, k: u8, a: i32) -> T;
    unsafe fn _mm256_mask_set1_epi64<T: From<Self>>(self, k: u8, a: i64) -> T;
    unsafe fn _mm256_mask_set1_epi8<T: From<Self>>(self, k: u32, a: i8) -> T;
    unsafe fn _mm256_mask_shldi_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shldi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shldi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shldv_epi16<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shldv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shldv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shrdi_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shrdi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shrdi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shrdv_epi16<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shrdv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shrdv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shuffle_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_shuffle_i32x4<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shuffle_i64x2<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shufflehi_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_shufflelo_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_sll_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_sll_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_sll_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_slli_epi16<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_slli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_slli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_sllv_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sllv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sllv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sra_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_sra_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_sra_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_srai_epi16<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_srai_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_srai_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_srav_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_srav_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_srav_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_srl_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_srl_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_srl_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_mask_srli_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_srli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_srli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_srlv_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_srlv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_srlv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sub_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sub_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sub_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_sub_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_subs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_subs_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_subs_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_subs_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_ternarylogic_epi32<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_ternarylogic_epi64<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_mask_unpackhi_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpackhi_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpackhi_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpackhi_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpacklo_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpacklo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpacklo_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_unpacklo_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_xor_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mask_xor_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskload_epi32<T: From<Self>>(mem_addr: *const i32, mask: impl Into<Self>) -> T;
    unsafe fn _mm256_maskload_epi64<T: From<Self>>(mem_addr: *const i64, mask: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_abs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_abs_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_abs_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_abs_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_add_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_add_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_add_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_add_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_adds_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_adds_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_adds_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_adds_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_alignr_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_alignr_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_alignr_epi8<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_and_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_and_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_andnot_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_andnot_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_avg_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_avg_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_broadcast_i32x4<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_broadcastb_epi8<T: From<Self>>(k: u32, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_broadcastd_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_broadcastq_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_broadcastw_epi16<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_compress_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_compress_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_compress_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_compress_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_conflict_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_conflict_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_cvtepi16_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepi16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepi32_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepi8_epi16<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepi8_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepi8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepu16_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepu16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepu32_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepu8_epi16<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepu8_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_cvtepu8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_dbsad_epu8<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_dpbusd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_dpbusds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_dpwssd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_dpwssds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_expand_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_expand_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_expand_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_expand_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_gf2p8affine_epi64_epi8<const b: i32>(k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_gf2p8affineinv_epi64_epi8<const b: i32>(k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_gf2p8mul_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_inserti32x4<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm256_maskz_loadu_epi8<T: From<Self>>(k: u32, mem_addr: *const i8) -> T;
    unsafe fn _mm256_maskz_lzcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_lzcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_madd_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_maddubs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_max_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_min_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mov_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mov_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mov_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mov_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mul_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mul_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mulhi_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mulhi_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mulhrs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mullo_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_mullo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_multishift_epi64_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_or_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_or_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_packs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_packs_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_packus_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_packus_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutex2var_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutex2var_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutex2var_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutex2var_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutex_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_permutexvar_epi16<T: From<Self>>(k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutexvar_epi32<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutexvar_epi64<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_permutexvar_epi8<T: From<Self>>(k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_popcnt_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_popcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_popcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_popcnt_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_rol_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_rol_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_rolv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_rolv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_ror_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_ror_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_rorv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_rorv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_set1_epi16<T: From<Self>>(k: u16, a: i16) -> T;
    unsafe fn _mm256_maskz_set1_epi32<T: From<Self>>(k: u8, a: i32) -> T;
    unsafe fn _mm256_maskz_set1_epi64<T: From<Self>>(k: u8, a: i64) -> T;
    unsafe fn _mm256_maskz_set1_epi8<T: From<Self>>(k: u32, a: i8) -> T;
    unsafe fn _mm256_maskz_shldi_epi16<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shldi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shldi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shldv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shldv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shldv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shrdi_epi16<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shrdi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shrdi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shrdv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shrdv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shrdv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shuffle_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_shuffle_i32x4<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shuffle_i64x2<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shufflehi_epi16<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_shufflelo_epi16<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_sll_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_sll_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_sll_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_slli_epi16<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_slli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_slli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_sllv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sllv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sllv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sra_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_sra_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_sra_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_srai_epi16<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_srai_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_srai_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_srav_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_srav_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_srav_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_srl_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_srl_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_srl_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_maskz_srli_epi16<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_srli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_srli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_srlv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_srlv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_srlv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sub_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sub_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sub_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_sub_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_subs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_subs_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_subs_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_subs_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_ternarylogic_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_ternarylogic_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_maskz_unpackhi_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpackhi_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpackhi_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpackhi_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpacklo_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpacklo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpacklo_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_unpacklo_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_xor_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_maskz_xor_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_max_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_min_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_movemask_epi8(self) -> i32;
    unsafe fn _mm256_movepi16_mask(self) -> u16;
    unsafe fn _mm256_movepi8_mask(self) -> u32;
    unsafe fn _mm256_movm_epi16<T: From<Self>>(k: u16) -> T;
    unsafe fn _mm256_movm_epi8<T: From<Self>>(k: u32) -> T;
    unsafe fn _mm256_mpsadbw_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_mul_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mul_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mulhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mulhi_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mulhrs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mullo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_mullo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_multishift_epi64_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_or_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_or_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_or_si256<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_packs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_packs_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_packus_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_packus_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_permute2f128_si256<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_permute2x128_si256<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_permute4x64_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_permutevar8x32_epi32<T: From<Self>>(self, idx: impl Into<Self>) -> T;
    unsafe fn _mm256_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm256_permutex_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_permutexvar_epi16<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm256_permutexvar_epi32<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm256_permutexvar_epi64<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm256_permutexvar_epi8<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm256_popcnt_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm256_popcnt_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm256_popcnt_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm256_popcnt_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm256_rol_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_rol_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_rolv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_rolv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_ror_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_ror_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_rorv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_rorv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sad_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_set1_epi16<T: From<Self>>(a: i16) -> T;
    unsafe fn _mm256_set1_epi32<T: From<Self>>(a: i32) -> T;
    unsafe fn _mm256_set1_epi64x<T: From<Self>>(a: i64) -> T;
    unsafe fn _mm256_set1_epi8<T: From<Self>>(a: i8) -> T;
    unsafe fn _mm256_set_epi16<T: From<Self>>(e: [i16; 16]) -> T;
    unsafe fn _mm256_set_epi32<T: From<Self>>(e: [i32; 8]) -> T;
    unsafe fn _mm256_set_epi64x<T: From<Self>>(e: [i64; 4]) -> T;
    unsafe fn _mm256_set_epi8<T: From<Self>>(e: [i8; 32]) -> T;
    unsafe fn _mm256_set_m128i<T: From<Self>>(hi: impl Into<__m128i>, lo: impl Into<__m128i>) -> T;
    unsafe fn _mm256_setr_epi16<T: From<Self>>(e: [i16; 16]) -> T;
    unsafe fn _mm256_setr_epi32<T: From<Self>>(e: [i32; 8]) -> T;
    unsafe fn _mm256_setr_epi64x<T: From<Self>>(e: [i64; 4]) -> T;
    unsafe fn _mm256_setr_epi8<T: From<Self>>(e: [i8; 32]) -> T;
    unsafe fn _mm256_setr_m128i<T: From<Self>>(lo: impl Into<__m128i>, hi: impl Into<__m128i>) -> T;
    unsafe fn _mm256_setzero_si256<T: From<Self>>() -> T;
    unsafe fn _mm256_shldi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shldi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shldi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shldv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_shldv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_shldv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_shrdi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shrdi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shrdi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shrdv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_shrdv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_shrdv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm256_shuffle_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_shuffle_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_shuffle_i32x4<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shuffle_i64x2<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm256_shufflehi_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_shufflelo_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_sign_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sign_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sign_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sll_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_sll_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_sll_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_slli_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_slli_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_slli_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_slli_si256<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_sllv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_sllv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_sllv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_sra_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_sra_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_sra_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_srai_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_srai_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_srai_epi64<const imm8: u32>(self) -> Self;
    unsafe fn _mm256_srav_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_srav_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_srav_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_srl_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_srl_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_srl_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm256_srli_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_srli_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_srli_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_srli_si256<const imm8: i32>(self) -> Self;
    unsafe fn _mm256_srlv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_srlv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_srlv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm256_store_si256(mem_addr: *mut Self, a: impl Into<Self>);
    unsafe fn _mm256_storeu_si256(mem_addr: *mut Self, a: impl Into<Self>);
    unsafe fn _mm256_sub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sub_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_sub_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_subs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_subs_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_subs_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_subs_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_ternarylogic_epi32<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_ternarylogic_epi64<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm256_test_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_test_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_test_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_test_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_testc_si256(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm256_testn_epi16_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm256_testn_epi32_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_testn_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm256_testn_epi8_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm256_testnzc_si256(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm256_testz_si256(self, b: impl Into<Self>) -> i32;
    unsafe fn _mm256_undefined_si256<T: From<Self>>() -> T;
    unsafe fn _mm256_unpackhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpackhi_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpackhi_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpackhi_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpacklo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpacklo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpacklo_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_unpacklo_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_xor_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_xor_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_xor_si256<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm256_zextsi128_si256<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_broadcast_i64x4<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_castsi256_si512<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_castsi512_si256<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi16_epi32<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepi16_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi32_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi32_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepi64_epi32<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtepi8_epi16<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepu16_epi32<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepu32_epi64<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtepu8_epi16<T: From<__m512i>>(self) -> T;
    unsafe fn _mm512_cvtsepi16_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtsepi32_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtsepi64_epi32<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtusepi16_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtusepi32_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_cvtusepi64_epi32<T: From<Self>>(a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_extracti64x4_epi64<const imm8: i32>(a: impl Into<__m512i>) -> Self;
    unsafe fn _mm512_mask_cvtepi16_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtepi32_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtsepi16_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtsepi32_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtsepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtusepi16_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtusepi32_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_cvtusepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_mask_extracti64x4_epi64<const imm8: i32>(self, k: u8, a: impl Into<__m512i>) -> Self;
    unsafe fn _mm512_maskz_cvtepi16_epi8<T: From<Self>>(k: u32, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtepi32_epi16<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtsepi16_epi8<T: From<Self>>(k: u32, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtsepi32_epi16<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtsepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtusepi16_epi8<T: From<Self>>(k: u32, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtusepi32_epi16<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_cvtusepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T;
    unsafe fn _mm512_maskz_extracti64x4_epi64<const imm8: i32>(k: u8, a: impl Into<__m512i>) -> Self;
    unsafe fn _mm512_zextsi256_si512<T: From<__m512i>>(self) -> T;
}
impl __m256iIntrinsic for __m256i {
    #[inline(always)]
    unsafe fn _mm256_abs_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm256_abs_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_abs_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm256_abs_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_abs_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm256_abs_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_abs_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm256_abs_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_add_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_add_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_add_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_add_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_add_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_add_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_add_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_add_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_adds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_adds_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_adds_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_adds_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_adds_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_adds_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_adds_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_adds_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_aesdec_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm256_aesdec_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_aesdeclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm256_aesdeclast_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_aesenc_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm256_aesenc_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_aesenclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm256_aesenclast_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_alignr_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_alignr_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_alignr_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_alignr_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_alignr_epi8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_alignr_epi8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_and_si256<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_and_si256(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_andnot_si256<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_andnot_si256(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_avg_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_avg_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_avg_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_avg_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_bitshuffle_epi64_mask(self, c: impl Into<Self>) -> u32 {
        unsafe { _mm256_bitshuffle_epi64_mask(self, c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_blend_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_blend_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_blend_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_blend_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_blendv_epi8<T: From<Self>>(self, b: impl Into<Self>, mask: impl Into<Self>) -> T {
        unsafe { _mm256_blendv_epi8(self, b.into(), mask.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcast_i32x4<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_broadcast_i32x4(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastb_epi8<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_broadcastb_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastd_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_broadcastd_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastmb_epi64<T: From<Self>>(k: u8) -> T {
        unsafe { _mm256_broadcastmb_epi64(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastmw_epi32<T: From<Self>>(k: u16) -> T {
        unsafe { _mm256_broadcastmw_epi32(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastq_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_broadcastq_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastsi128_si256<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_broadcastsi128_si256(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_broadcastw_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_broadcastw_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_bslli_epi128<const imm8: i32>(self) -> Self {
        unsafe { _mm256_bslli_epi128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_bsrli_epi128<const imm8: i32>(self) -> Self {
        unsafe { _mm256_bsrli_epi128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_castsi128_si256<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_castsi128_si256(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_castsi256_si128<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_castsi256_si128(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_clmulepi64_epi128<const Imm8: i32>(self, c: impl Into<Self>) -> Self {
        unsafe { _mm256_clmulepi64_epi128::<Imm8>(self, c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmp_epi16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmp_epi16_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmp_epi8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmp_epi8_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmp_epu16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmp_epu16_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmp_epu8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmp_epu8_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpeq_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpeq_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpeq_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpeq_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpeq_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpeq_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpeq_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpeq_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epu16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpeq_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpeq_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpeq_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpeq_epu8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpeq_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpge_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpge_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpge_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpge_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epu16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpge_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpge_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpge_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpge_epu8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpge_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpgt_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpgt_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpgt_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpgt_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpgt_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpgt_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_cmpgt_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpgt_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epu16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpgt_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpgt_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpgt_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpgt_epu8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpgt_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmple_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmple_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmple_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmple_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epu16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmple_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmple_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmple_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmple_epu8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmple_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmplt_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmplt_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmplt_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmplt_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epu16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmplt_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmplt_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmplt_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmplt_epu8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmplt_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpneq_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpneq_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpneq_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpneq_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epu16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_cmpneq_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epu32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpneq_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_cmpneq_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_cmpneq_epu8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_cmpneq_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_conflict_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm256_conflict_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_conflict_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm256_conflict_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi16_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepi16_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepi16_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi16_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi32_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi32_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepi32_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi32_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi64_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi64_epi32<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi64_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi8_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepi8_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepi8_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepi8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepi8_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu16_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepu16_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepu16_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu32_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepu32_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu8_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepu8_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepu8_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtepu8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_cvtepu8_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi16_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtsepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi32_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtsepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi32_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtsepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi64_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtsepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi64_epi32<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtsepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsepi64_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtsepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtsi256_si32(self) -> i32 {
        unsafe { _mm256_cvtsi256_si32(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi16_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtusepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi32_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtusepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi32_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtusepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi64_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtusepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi64_epi32<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtusepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_cvtusepi64_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm256_cvtusepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_dbsad_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_dbsad_epu8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_dpbusd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_dpbusd_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_dpbusds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_dpbusds_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_dpwssd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_dpwssd_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_dpwssds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_dpwssds_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_extract_epi16<const index: i32>(self) -> i32 {
        unsafe { _mm256_extract_epi16::<index>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_extract_epi32<const index: i32>(self) -> i32 {
        unsafe { _mm256_extract_epi32::<index>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_extract_epi64<const index: i32>(self) -> i64 {
        unsafe { _mm256_extract_epi64::<index>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_extract_epi8<const index: i32>(self) -> i32 {
        unsafe { _mm256_extract_epi8::<index>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_extractf128_si256<const imm8: i32>(self) -> __m128i {
        unsafe { _mm256_extractf128_si256::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_extracti128_si256<const imm8: i32>(self) -> __m128i {
        unsafe { _mm256_extracti128_si256::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_extracti32x4_epi32<const imm8: i32>(self) -> __m128i {
        unsafe { _mm256_extracti32x4_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_gf2p8affine_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self {
        unsafe { _mm256_gf2p8affine_epi64_epi8::<b>(self, A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_gf2p8affineinv_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self {
        unsafe { _mm256_gf2p8affineinv_epi64_epi8::<b>(self, A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_gf2p8mul_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_gf2p8mul_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_hadd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_hadd_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_hadd_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_hadd_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_hadds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_hadds_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_hsub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_hsub_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_hsub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_hsub_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_hsubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_hsubs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_i32gather_epi32<const scale: i32>(base_addr: *const i32, vindex: impl Into<Self>) -> Self {
        unsafe { _mm256_i32gather_epi32::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_i32gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<__m128i>) -> Self {
        unsafe { _mm256_i32gather_epi64::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_i64gather_epi64<const scale: i32>(base_addr: *const i64, vindex: impl Into<Self>) -> Self {
        unsafe { _mm256_i64gather_epi64::<scale>(base_addr, vindex.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_insert_epi16<const index: i32>(self, i: i16) -> Self {
        unsafe { _mm256_insert_epi16::<index>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm256_insert_epi32<const index: i32>(self, i: i32) -> Self {
        unsafe { _mm256_insert_epi32::<index>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm256_insert_epi64<const index: i32>(self, i: i64) -> Self {
        unsafe { _mm256_insert_epi64::<index>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm256_insert_epi8<const index: i32>(self, i: i8) -> Self {
        unsafe { _mm256_insert_epi8::<index>(self, i) }
    }
    #[inline(always)]
    unsafe fn _mm256_insertf128_si256<const imm8: i32>(self, b: impl Into<__m128i>) -> Self {
        unsafe { _mm256_insertf128_si256::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_inserti128_si256<const imm8: i32>(self, b: impl Into<__m128i>) -> Self {
        unsafe { _mm256_inserti128_si256::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_inserti32x4<const imm8: i32>(self, b: impl Into<__m128i>) -> Self {
        unsafe { _mm256_inserti32x4::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_lddqu_si256<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm256_lddqu_si256(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_load_si256<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm256_load_si256(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_loadu2_m128i<T: From<Self>>(hiaddr: *const __m128i, loaddr: *const __m128i) -> T {
        unsafe { _mm256_loadu2_m128i(hiaddr, loaddr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_loadu_epi8<T: From<Self>>(mem_addr: *const i8) -> T {
        unsafe { _mm256_loadu_epi8(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_loadu_si256<T: From<Self>>(mem_addr: *const Self) -> T {
        unsafe { _mm256_loadu_si256(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_lzcnt_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm256_lzcnt_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_lzcnt_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm256_lzcnt_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_madd52hi_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_madd52hi_epu64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_madd52lo_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_madd52lo_epu64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_madd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_madd_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maddubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_maddubs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask2_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, k: u16, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask2_permutex2var_epi16(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask2_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask2_permutex2var_epi32(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask2_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask2_permutex2var_epi64(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask2_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, k: u32, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask2_permutex2var_epi8(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_abs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_abs_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_abs_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_abs_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_abs_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_abs_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_abs_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_abs_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_add_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_add_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_add_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_add_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_add_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_add_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_add_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_add_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_adds_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_adds_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_adds_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_adds_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_adds_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_adds_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_adds_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_adds_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_alignr_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_alignr_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_alignr_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_alignr_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_alignr_epi8<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_alignr_epi8::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_and_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_and_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_and_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_and_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_andnot_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_andnot_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_andnot_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_andnot_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_avg_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_avg_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_avg_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_avg_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_blend_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_blend_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_blend_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_blend_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_blend_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_blend_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_blend_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_blend_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_broadcast_i32x4<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_broadcast_i32x4(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_broadcastb_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_broadcastb_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_broadcastd_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_broadcastd_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_broadcastq_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_broadcastq_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_broadcastw_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_broadcastw_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_compress_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_compress_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_compress_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_compress_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_compress_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_compress_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_compress_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_compress_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_conflict_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_conflict_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_conflict_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_conflict_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi16_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepi16_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepi16_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepi32_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi8_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepi8_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi8_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepi8_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepi8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepi8_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepu16_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepu16_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepu16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepu16_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepu32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepu32_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepu8_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepu8_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepu8_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepu8_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_cvtepu8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_cvtepu8_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_dbsad_epu8<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_dbsad_epu8::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_dpbusd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_dpbusd_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_dpbusds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_dpbusds_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_dpwssd_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_dpwssd_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_dpwssds_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_dpwssds_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_expand_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_expand_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_expand_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_expand_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_expand_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_expand_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_expand_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_expand_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_gf2p8affine_epi64_epi8<const b: i32>(self, k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_gf2p8affine_epi64_epi8::<b>(self, k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_gf2p8affineinv_epi64_epi8<const b: i32>(self, k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_gf2p8affineinv_epi64_epi8::<b>(self, k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_gf2p8mul_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_gf2p8mul_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_i32gather_epi32<const scale: i32>(self, base_addr: *const i32, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_i32gather_epi32::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_i32gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<__m128i>, mask: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_i32gather_epi64::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_i64gather_epi64<const scale: i32>(self, base_addr: *const i64, vindex: impl Into<Self>, mask: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_i64gather_epi64::<scale>(self, base_addr, vindex.into(), mask.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_inserti32x4<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<__m128i>) -> Self {
        unsafe { _mm256_mask_inserti32x4::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_loadu_epi8<T: From<Self>>(self, k: u32, mem_addr: *const i8) -> T {
        unsafe { _mm256_mask_loadu_epi8(self, k, mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_lzcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_lzcnt_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_lzcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_lzcnt_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_madd_epi16<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_madd_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_maddubs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_maddubs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epu64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_max_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_max_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epu64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_min_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_min_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mov_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mov_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mov_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mov_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mov_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mov_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mov_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mov_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mul_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mul_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mul_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mul_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mulhi_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mulhi_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mulhi_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mulhi_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mulhrs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mulhrs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mullo_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mullo_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_mullo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_mullo_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_multishift_epi64_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_multishift_epi64_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_or_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_or_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_or_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_or_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_packs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_packs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_packs_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_packs_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_packus_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_packus_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_packus_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_packus_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutex2var_epi16<T: From<Self>>(self, k: u16, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutex2var_epi16(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutex2var_epi32<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutex2var_epi32(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutex2var_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutex2var_epi64(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutex2var_epi8<T: From<Self>>(self, k: u32, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutex2var_epi8(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutex_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_permutex_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutexvar_epi16<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutexvar_epi16(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutexvar_epi32<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutexvar_epi32(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutexvar_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutexvar_epi64(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_permutexvar_epi8<T: From<Self>>(self, k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_permutexvar_epi8(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_popcnt_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_popcnt_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_popcnt_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_popcnt_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_popcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_popcnt_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_popcnt_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_mask_popcnt_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_rol_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_rol_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_rol_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_rol_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_rolv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_rolv_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_rolv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_rolv_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_ror_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_ror_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_ror_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_ror_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_rorv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_rorv_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_rorv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_rorv_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_set1_epi16<T: From<Self>>(self, k: u16, a: i16) -> T {
        unsafe { _mm256_mask_set1_epi16(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_set1_epi32<T: From<Self>>(self, k: u8, a: i32) -> T {
        unsafe { _mm256_mask_set1_epi32(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_set1_epi64<T: From<Self>>(self, k: u8, a: i64) -> T {
        unsafe { _mm256_mask_set1_epi64(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_set1_epi8<T: From<Self>>(self, k: u32, a: i8) -> T {
        unsafe { _mm256_mask_set1_epi8(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shldi_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shldi_epi16::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shldi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shldi_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shldi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shldi_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shldv_epi16<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shldv_epi16(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shldv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shldv_epi32(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shldv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shldv_epi64(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shrdi_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shrdi_epi16::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shrdi_epi32<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shrdi_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shrdi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shrdi_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shrdv_epi16<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shrdv_epi16(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shrdv_epi32<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shrdv_epi32(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shrdv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shrdv_epi64(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shuffle_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_shuffle_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shuffle_i32x4<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shuffle_i32x4::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shuffle_i64x2<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shuffle_i64x2::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shufflehi_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shufflehi_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_shufflelo_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_shufflelo_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sll_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_sll_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sll_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_sll_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sll_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_sll_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_slli_epi16<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_slli_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_slli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_slli_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_slli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_slli_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sllv_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sllv_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sllv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sllv_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sllv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sllv_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sra_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_sra_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sra_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_sra_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sra_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_sra_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srai_epi16<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_srai_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srai_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_srai_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srai_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_srai_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srav_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_srav_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srav_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_srav_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srav_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_srav_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srl_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_srl_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srl_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_srl_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srl_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_mask_srl_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srli_epi16<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_srli_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srli_epi32<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_srli_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_srli_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srlv_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_srlv_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srlv_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_srlv_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_srlv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_mask_srlv_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sub_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sub_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sub_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sub_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sub_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sub_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_sub_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_sub_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_subs_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_subs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_subs_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_subs_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_subs_epu16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_subs_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_subs_epu8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_subs_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_ternarylogic_epi32<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_ternarylogic_epi32::<imm8>(self, k, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_ternarylogic_epi64<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm256_mask_ternarylogic_epi64::<imm8>(self, k, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpackhi_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpackhi_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpackhi_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpackhi_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpackhi_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpackhi_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpackhi_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpackhi_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpacklo_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpacklo_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpacklo_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpacklo_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpacklo_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpacklo_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_unpacklo_epi8<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_unpacklo_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_xor_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_xor_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mask_xor_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_mask_xor_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskload_epi32<T: From<Self>>(mem_addr: *const i32, mask: impl Into<Self>) -> T {
        unsafe { _mm256_maskload_epi32(mem_addr, mask.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskload_epi64<T: From<Self>>(mem_addr: *const i64, mask: impl Into<Self>) -> T {
        unsafe { _mm256_maskload_epi64(mem_addr, mask.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_abs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_abs_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_abs_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_abs_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_abs_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_abs_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_abs_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_abs_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_add_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_add_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_add_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_add_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_add_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_add_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_add_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_add_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_adds_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_adds_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_adds_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_adds_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_adds_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_adds_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_adds_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_adds_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_alignr_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_alignr_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_alignr_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_alignr_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_alignr_epi8<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_alignr_epi8::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_and_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_and_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_and_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_and_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_andnot_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_andnot_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_andnot_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_andnot_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_avg_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_avg_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_avg_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_avg_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_broadcast_i32x4<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_broadcast_i32x4(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_broadcastb_epi8<T: From<Self>>(k: u32, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_broadcastb_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_broadcastd_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_broadcastd_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_broadcastq_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_broadcastq_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_broadcastw_epi16<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_broadcastw_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_compress_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_compress_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_compress_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_compress_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_compress_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_compress_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_compress_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_compress_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_conflict_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_conflict_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_conflict_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_conflict_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi16_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepi16_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepi16_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi32_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepi32_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi8_epi16<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepi8_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi8_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepi8_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepi8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepi8_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepu16_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepu16_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepu16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepu16_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepu32_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepu32_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepu8_epi16<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepu8_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepu8_epi32<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepu8_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_cvtepu8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_cvtepu8_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_dbsad_epu8<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_dbsad_epu8::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_dpbusd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_dpbusd_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_dpbusds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_dpbusds_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_dpwssd_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_dpwssd_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_dpwssds_epi32<T: From<Self>>(k: u8, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_dpwssds_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_expand_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_expand_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_expand_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_expand_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_expand_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_expand_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_expand_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_expand_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_gf2p8affine_epi64_epi8<const b: i32>(k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_gf2p8affine_epi64_epi8::<b>(k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_gf2p8affineinv_epi64_epi8<const b: i32>(k: u32, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_gf2p8affineinv_epi64_epi8::<b>(k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_gf2p8mul_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_gf2p8mul_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_inserti32x4<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<__m128i>) -> Self {
        unsafe { _mm256_maskz_inserti32x4::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_loadu_epi8<T: From<Self>>(k: u32, mem_addr: *const i8) -> T {
        unsafe { _mm256_maskz_loadu_epi8(k, mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_lzcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_lzcnt_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_lzcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_lzcnt_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_madd_epi16<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_madd_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_maddubs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_maddubs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epu64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_max_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_max_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epu64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_min_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_min_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mov_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mov_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mov_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mov_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mov_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mov_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mov_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mov_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mul_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mul_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mul_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mul_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mulhi_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mulhi_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mulhi_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mulhi_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mulhrs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mulhrs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mullo_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mullo_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_mullo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_mullo_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_multishift_epi64_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_multishift_epi64_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_or_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_or_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_or_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_or_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_packs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_packs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_packs_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_packs_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_packus_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_packus_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_packus_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_packus_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutex2var_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutex2var_epi16(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutex2var_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutex2var_epi32(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutex2var_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutex2var_epi64(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutex2var_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutex2var_epi8(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutex_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_permutex_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutexvar_epi16<T: From<Self>>(k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutexvar_epi16(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutexvar_epi32<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutexvar_epi32(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutexvar_epi64<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutexvar_epi64(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_permutexvar_epi8<T: From<Self>>(k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_permutexvar_epi8(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_popcnt_epi16<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_popcnt_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_popcnt_epi32<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_popcnt_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_popcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_popcnt_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_popcnt_epi8<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_popcnt_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_rol_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_rol_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_rol_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_rol_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_rolv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_rolv_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_rolv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_rolv_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_ror_epi32<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_ror_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_ror_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_ror_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_rorv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_rorv_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_rorv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_rorv_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_set1_epi16<T: From<Self>>(k: u16, a: i16) -> T {
        unsafe { _mm256_maskz_set1_epi16(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_set1_epi32<T: From<Self>>(k: u8, a: i32) -> T {
        unsafe { _mm256_maskz_set1_epi32(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_set1_epi64<T: From<Self>>(k: u8, a: i64) -> T {
        unsafe { _mm256_maskz_set1_epi64(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_set1_epi8<T: From<Self>>(k: u32, a: i8) -> T {
        unsafe { _mm256_maskz_set1_epi8(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shldi_epi16<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shldi_epi16::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shldi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shldi_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shldi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shldi_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shldv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shldv_epi16(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shldv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shldv_epi32(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shldv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shldv_epi64(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shrdi_epi16<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shrdi_epi16::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shrdi_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shrdi_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shrdi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shrdi_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shrdv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shrdv_epi16(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shrdv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shrdv_epi32(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shrdv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shrdv_epi64(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shuffle_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_shuffle_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shuffle_i32x4<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shuffle_i32x4::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shuffle_i64x2<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shuffle_i64x2::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shufflehi_epi16<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shufflehi_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_shufflelo_epi16<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_shufflelo_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sll_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_sll_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sll_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_sll_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sll_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_sll_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_slli_epi16<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_slli_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_slli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_slli_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_slli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_slli_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sllv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sllv_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sllv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sllv_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sllv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sllv_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sra_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_sra_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sra_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_sra_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sra_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_sra_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srai_epi16<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_srai_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srai_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_srai_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srai_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_srai_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srav_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_srav_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srav_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_srav_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srav_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_srav_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srl_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_srl_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srl_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_srl_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srl_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_maskz_srl_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srli_epi16<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_srli_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srli_epi32<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_srli_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_srli_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srlv_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_srlv_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srlv_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_srlv_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_srlv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_srlv_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sub_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sub_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sub_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sub_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sub_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sub_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_sub_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_sub_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_subs_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_subs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_subs_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_subs_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_subs_epu16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_subs_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_subs_epu8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_subs_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_ternarylogic_epi32<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_ternarylogic_epi32::<imm8>(k, a.into(), b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_ternarylogic_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm256_maskz_ternarylogic_epi64::<imm8>(k, a.into(), b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpackhi_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpackhi_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpackhi_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpackhi_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpackhi_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpackhi_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpackhi_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpackhi_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpacklo_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpacklo_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpacklo_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpacklo_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpacklo_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpacklo_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_unpacklo_epi8<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_unpacklo_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_xor_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_xor_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_maskz_xor_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_maskz_xor_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epu64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_max_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_max_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epu64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_min_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_min_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_movemask_epi8(self) -> i32 {
        unsafe { _mm256_movemask_epi8(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_movepi16_mask(self) -> u16 {
        unsafe { _mm256_movepi16_mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_movepi8_mask(self) -> u32 {
        unsafe { _mm256_movepi8_mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_movm_epi16<T: From<Self>>(k: u16) -> T {
        unsafe { _mm256_movm_epi16(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_movm_epi8<T: From<Self>>(k: u32) -> T {
        unsafe { _mm256_movm_epi8(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mpsadbw_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_mpsadbw_epu8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_mul_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mul_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mul_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mul_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mulhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mulhi_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mulhi_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mulhi_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mulhrs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mulhrs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mullo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mullo_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_mullo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_mullo_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_multishift_epi64_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_multishift_epi64_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_or_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_or_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_or_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_or_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_or_si256<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_or_si256(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_packs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_packs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_packs_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_packs_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_packus_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_packus_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_packus_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_packus_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permute2f128_si256<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_permute2f128_si256::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_permute2x128_si256<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_permute2x128_si256::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_permute4x64_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm256_permute4x64_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_permutevar8x32_epi32<T: From<Self>>(self, idx: impl Into<Self>) -> T {
        unsafe { _mm256_permutevar8x32_epi32(self, idx.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_permutex2var_epi16(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_permutex2var_epi32(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_permutex2var_epi64(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm256_permutex2var_epi8(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutex_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm256_permutex_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_permutexvar_epi16<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm256_permutexvar_epi16(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutexvar_epi32<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm256_permutexvar_epi32(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutexvar_epi64<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm256_permutexvar_epi64(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_permutexvar_epi8<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm256_permutexvar_epi8(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_popcnt_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm256_popcnt_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_popcnt_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm256_popcnt_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_popcnt_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm256_popcnt_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_popcnt_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm256_popcnt_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_rol_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm256_rol_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_rol_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm256_rol_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_rolv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_rolv_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_rolv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_rolv_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_ror_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm256_ror_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_ror_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm256_ror_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_rorv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_rorv_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_rorv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_rorv_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sad_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sad_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set1_epi16<T: From<Self>>(a: i16) -> T {
        unsafe { _mm256_set1_epi16(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set1_epi32<T: From<Self>>(a: i32) -> T {
        unsafe { _mm256_set1_epi32(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set1_epi64x<T: From<Self>>(a: i64) -> T {
        unsafe { _mm256_set1_epi64x(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set1_epi8<T: From<Self>>(a: i8) -> T {
        unsafe { _mm256_set1_epi8(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set_epi16<T: From<Self>>(e: [i16; 16]) -> T {
        unsafe { _mm256_set_epi16(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set_epi32<T: From<Self>>(e: [i32; 8]) -> T {
        unsafe { _mm256_set_epi32(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set_epi64x<T: From<Self>>(e: [i64; 4]) -> T {
        unsafe { _mm256_set_epi64x(e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set_epi8<T: From<Self>>(e: [i8; 32]) -> T {
        unsafe { _mm256_set_epi8(e[31], e[30], e[29], e[28], e[27], e[26], e[25], e[24], e[23], e[22], e[21], e[20], e[19], e[18], e[17], e[16], e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_set_m128i<T: From<Self>>(hi: impl Into<__m128i>, lo: impl Into<__m128i>) -> T {
        unsafe { _mm256_set_m128i(hi.into(), lo.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setr_epi16<T: From<Self>>(e: [i16; 16]) -> T {
        unsafe { _mm256_setr_epi16(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setr_epi32<T: From<Self>>(e: [i32; 8]) -> T {
        unsafe { _mm256_setr_epi32(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setr_epi64x<T: From<Self>>(e: [i64; 4]) -> T {
        unsafe { _mm256_setr_epi64x(e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setr_epi8<T: From<Self>>(e: [i8; 32]) -> T {
        unsafe { _mm256_setr_epi8(e[31], e[30], e[29], e[28], e[27], e[26], e[25], e[24], e[23], e[22], e[21], e[20], e[19], e[18], e[17], e[16], e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setr_m128i<T: From<Self>>(lo: impl Into<__m128i>, hi: impl Into<__m128i>) -> T {
        unsafe { _mm256_setr_m128i(lo.into(), hi.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_setzero_si256<T: From<Self>>() -> T {
        unsafe { _mm256_setzero_si256() }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shldi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shldi_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shldi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shldi_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shldi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shldi_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shldv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_shldv_epi16(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shldv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_shldv_epi32(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shldv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_shldv_epi64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shrdi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shrdi_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shrdi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shrdi_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shrdi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shrdi_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shrdv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_shrdv_epi16(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shrdv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_shrdv_epi32(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shrdv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm256_shrdv_epi64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shuffle_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm256_shuffle_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_shuffle_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_shuffle_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_shuffle_i32x4<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shuffle_i32x4::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shuffle_i64x2<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm256_shuffle_i64x2::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_shufflehi_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm256_shufflehi_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_shufflelo_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm256_shufflelo_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_sign_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sign_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sign_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sign_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sign_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sign_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sll_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_sll_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sll_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_sll_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sll_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_sll_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_slli_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm256_slli_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_slli_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm256_slli_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_slli_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm256_slli_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_slli_si256<const imm8: i32>(self) -> Self {
        unsafe { _mm256_slli_si256::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_sllv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_sllv_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sllv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_sllv_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sllv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_sllv_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sra_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_sra_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sra_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_sra_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sra_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_sra_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srai_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm256_srai_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srai_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm256_srai_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srai_epi64<const imm8: u32>(self) -> Self {
        unsafe { _mm256_srai_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srav_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_srav_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srav_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_srav_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srav_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_srav_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srl_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_srl_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srl_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_srl_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srl_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm256_srl_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srli_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm256_srli_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srli_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm256_srli_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srli_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm256_srli_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srli_si256<const imm8: i32>(self) -> Self {
        unsafe { _mm256_srli_si256::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm256_srlv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_srlv_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srlv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_srlv_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_srlv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm256_srlv_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_store_si256(mem_addr: *mut Self, a: impl Into<Self>) {
        unsafe { _mm256_store_si256(mem_addr, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_storeu_si256(mem_addr: *mut Self, a: impl Into<Self>) {
        unsafe { _mm256_storeu_si256(mem_addr, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_sub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sub_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sub_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sub_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sub_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_sub_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_sub_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_subs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_subs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_subs_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_subs_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_subs_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_subs_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_subs_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_subs_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_ternarylogic_epi32<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm256_ternarylogic_epi32::<imm8>(self, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_ternarylogic_epi64<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm256_ternarylogic_epi64::<imm8>(self, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_test_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_test_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_test_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_test_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_test_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_test_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_test_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_test_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testc_si256(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm256_testc_si256(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testn_epi16_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm256_testn_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testn_epi32_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_testn_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testn_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm256_testn_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testn_epi8_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm256_testn_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testnzc_si256(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm256_testnzc_si256(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_testz_si256(self, b: impl Into<Self>) -> i32 {
        unsafe { _mm256_testz_si256(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm256_undefined_si256<T: From<Self>>() -> T {
        unsafe { _mm256_undefined_si256() }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpackhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpackhi_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpackhi_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpackhi_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpackhi_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpackhi_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpackhi_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpackhi_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpacklo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpacklo_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpacklo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpacklo_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpacklo_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpacklo_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_unpacklo_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_unpacklo_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_xor_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_xor_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_xor_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_xor_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_xor_si256<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm256_xor_si256(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm256_zextsi128_si256<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm256_zextsi128_si256(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcast_i64x4<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_broadcast_i64x4(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi256_si512<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_castsi256_si512(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi512_si256<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_castsi512_si256(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi16_epi32<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepi16_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi16_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtepi16_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi32_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtepi32_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi32_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepi32_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi64_epi32<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtepi64_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi8_epi16<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepi8_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu16_epi32<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepu16_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu32_epi64<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepu32_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu8_epi16<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_cvtepu8_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi16_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtsepi16_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi32_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtsepi32_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi64_epi32<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtsepi64_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi16_epi8<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtusepi16_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi32_epi16<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtusepi32_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi64_epi32<T: From<Self>>(a: impl Into<__m512i>) -> T {
        unsafe { _mm512_cvtusepi64_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_extracti64x4_epi64<const imm8: i32>(a: impl Into<__m512i>) -> Self {
        unsafe { _mm512_extracti64x4_epi64::<imm8>(a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi16_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi32_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtsepi16_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtsepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtsepi32_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtsepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtsepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtsepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtusepi16_epi8<T: From<Self>>(self, k: u32, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtusepi16_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtusepi32_epi16<T: From<Self>>(self, k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtusepi32_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtusepi64_epi32<T: From<Self>>(self, k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_mask_cvtusepi64_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_extracti64x4_epi64<const imm8: i32>(self, k: u8, a: impl Into<__m512i>) -> Self {
        unsafe { _mm512_mask_extracti64x4_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi16_epi8<T: From<Self>>(k: u32, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi32_epi16<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtsepi16_epi8<T: From<Self>>(k: u32, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtsepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtsepi32_epi16<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtsepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtsepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtsepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtusepi16_epi8<T: From<Self>>(k: u32, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtusepi16_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtusepi32_epi16<T: From<Self>>(k: u16, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtusepi32_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtusepi64_epi32<T: From<Self>>(k: u8, a: impl Into<__m512i>) -> T {
        unsafe { _mm512_maskz_cvtusepi64_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_extracti64x4_epi64<const imm8: i32>(k: u8, a: impl Into<__m512i>) -> Self {
        unsafe { _mm512_maskz_extracti64x4_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_zextsi256_si512<T: From<__m512i>>(self) -> T {
        unsafe { _mm512_zextsi256_si512(self) }.into()
    }
}
