// @generated
use core::arch::x86_64::*;
pub trait __m512iIntrinsic: Sized {
    unsafe fn _mm512_abs_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm512_abs_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm512_abs_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm512_abs_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm512_add_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_add_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_add_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_add_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_adds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_adds_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_adds_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_adds_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_aesdec_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm512_aesdeclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm512_aesenc_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm512_aesenclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T;
    unsafe fn _mm512_alignr_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_alignr_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_alignr_epi8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_and_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_and_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_and_si512<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_andnot_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_andnot_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_andnot_si512<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_avg_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_avg_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_bitshuffle_epi64_mask(self, c: impl Into<Self>) -> u64;
    unsafe fn _mm512_broadcast_i32x4<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_broadcast_i64x4<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_broadcastb_epi8<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_broadcastd_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_broadcastmb_epi64<T: From<Self>>(k: u8) -> T;
    unsafe fn _mm512_broadcastmw_epi32<T: From<Self>>(k: u16) -> T;
    unsafe fn _mm512_broadcastq_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_broadcastw_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_bslli_epi128<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_bsrli_epi128<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_castsi128_si512<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_castsi256_si512<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_castsi512_si128<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_castsi512_si256<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_clmulepi64_epi128<const Imm8: i32>(self, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_cmp_epi16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmp_epi8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmp_epu16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmp_epu8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpeq_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpeq_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpeq_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpeq_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpeq_epu16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpeq_epu32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpeq_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpeq_epu8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpge_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpge_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpge_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpge_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpge_epu16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpge_epu32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpge_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpge_epu8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpgt_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpgt_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpgt_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpgt_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpgt_epu16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpgt_epu32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpgt_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpgt_epu8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmple_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmple_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmple_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmple_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmple_epu16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmple_epu32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmple_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmple_epu8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmplt_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmplt_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmplt_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmplt_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmplt_epu16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmplt_epu32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmplt_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmplt_epu8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpneq_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpneq_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpneq_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpneq_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_cmpneq_epu16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_cmpneq_epu32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_cmpneq_epu64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_cmpneq_epu8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_conflict_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm512_conflict_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm512_cvtepi16_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_cvtepi16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_cvtepi16_epi8<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtepi32_epi16<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtepi32_epi64<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_cvtepi32_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtepi64_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtepi64_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtepi64_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtepi8_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_cvtepi8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_cvtepi8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_cvtepu16_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_cvtepu16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_cvtepu32_epi64<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_cvtepu8_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_cvtepu8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_cvtepu8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_cvtsepi16_epi8<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtsepi32_epi16<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtsepi32_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtsepi64_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtsepi64_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtsepi64_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtsi512_si32(self) -> i32;
    unsafe fn _mm512_cvtusepi16_epi8<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtusepi32_epi16<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtusepi32_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtusepi64_epi16<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_cvtusepi64_epi32<T: From<__m256i>>(self) -> T;
    unsafe fn _mm512_cvtusepi64_epi8<T: From<__m128i>>(self) -> T;
    unsafe fn _mm512_dbsad_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_dpbusd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_dpbusds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_dpwssd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_dpwssds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_extracti32x4_epi32<const imm8: i32>(self) -> __m128i;
    unsafe fn _mm512_extracti64x4_epi64<const imm8: i32>(self) -> __m256i;
    unsafe fn _mm512_gf2p8affine_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self;
    unsafe fn _mm512_gf2p8affineinv_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self;
    unsafe fn _mm512_gf2p8mul_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_inserti32x4<const imm8: i32>(self, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm512_inserti64x4<const imm8: i32>(self, b: impl Into<__m256i>) -> Self;
    unsafe fn _mm512_loadu_epi8<T: From<Self>>(mem_addr: *const i8) -> T;
    unsafe fn _mm512_lzcnt_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm512_lzcnt_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm512_madd52hi_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_madd52lo_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_madd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maddubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask2_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, k: u32, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask2_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, k: u16, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask2_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask2_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, k: u64, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_abs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_abs_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_abs_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_abs_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_add_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_add_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_add_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_add_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_adds_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_adds_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_adds_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_adds_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_alignr_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_alignr_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_alignr_epi8<const imm8: i32>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_and_epi32<T: From<Self>>(self, k: u16, v2: impl Into<Self>, v3: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_and_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_andnot_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_andnot_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_avg_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_avg_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_blend_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_blend_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_blend_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_blend_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_broadcast_i32x4<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_broadcast_i64x4<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_broadcastb_epi8<T: From<Self>>(self, k: u64, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_broadcastd_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_broadcastq_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_broadcastw_epi16<T: From<Self>>(self, k: u32, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_compress_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_compress_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_compress_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_compress_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_conflict_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_conflict_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_cvtepi16_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_cvtepi16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_cvtepi32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_cvtepi8_epi16<T: From<Self>>(self, k: u32, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_cvtepi8_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_cvtepi8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_cvtepu16_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_cvtepu16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_cvtepu32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_cvtepu8_epi16<T: From<Self>>(self, k: u32, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_mask_cvtepu8_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_cvtepu8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_dbsad_epu8<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_dpbusd_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_dpbusds_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_dpwssd_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_dpwssds_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_expand_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_expand_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_expand_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_expand_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_gf2p8affine_epi64_epi8<const b: i32>(self, k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_gf2p8affineinv_epi64_epi8<const b: i32>(self, k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_gf2p8mul_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_inserti32x4<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm512_mask_inserti64x4<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<__m256i>) -> Self;
    unsafe fn _mm512_mask_loadu_epi8<T: From<Self>>(self, k: u64, mem_addr: *const i8) -> T;
    unsafe fn _mm512_mask_lzcnt_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_lzcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_madd_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_maddubs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epu32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_max_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epu32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_min_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mov_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mov_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mov_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mov_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mul_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mul_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mulhi_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mulhi_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mulhrs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mullo_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mullo_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_mullox_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_multishift_epi64_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_or_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_or_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_packs_epi16<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_packs_epi32<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_packus_epi16<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_packus_epi32<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutevar_epi32<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutex2var_epi16<T: From<Self>>(self, k: u32, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutex2var_epi32<T: From<Self>>(self, k: u16, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutex2var_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutex2var_epi8<T: From<Self>>(self, k: u64, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutex_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_permutexvar_epi16<T: From<Self>>(self, k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutexvar_epi32<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutexvar_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_permutexvar_epi8<T: From<Self>>(self, k: u64, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_popcnt_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_popcnt_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_popcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_popcnt_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_rol_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_rol_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_rolv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_rolv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_ror_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_ror_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_rorv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_rorv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_set1_epi16<T: From<Self>>(self, k: u32, a: i16) -> T;
    unsafe fn _mm512_mask_set1_epi32<T: From<Self>>(self, k: u16, a: i32) -> T;
    unsafe fn _mm512_mask_set1_epi64<T: From<Self>>(self, k: u8, a: i64) -> T;
    unsafe fn _mm512_mask_set1_epi8<T: From<Self>>(self, k: u64, a: i8) -> T;
    unsafe fn _mm512_mask_shldi_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shldi_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shldi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shldv_epi16<T: From<Self>>(self, k: u32, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shldv_epi32<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shldv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shrdi_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shrdi_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shrdi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shrdv_epi16<T: From<Self>>(self, k: u32, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shrdv_epi32<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shrdv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shuffle_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_shuffle_i32x4<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shuffle_i64x2<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shufflehi_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_shufflelo_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_sll_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_sll_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_sll_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_slli_epi16<const imm8: u32>(self, k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_slli_epi32<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_slli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_sllv_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sllv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sllv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sra_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_sra_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_sra_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_srai_epi16<const imm8: u32>(self, k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_srai_epi32<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_srai_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_srav_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_srav_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_srav_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_srl_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_srl_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_srl_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_mask_srli_epi16<const imm8: u32>(self, k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_srli_epi32<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_srli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_srlv_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_srlv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_srlv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sub_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sub_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sub_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_sub_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_subs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_subs_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_subs_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_subs_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_ternarylogic_epi32<const imm8: i32>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_ternarylogic_epi64<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_mask_unpackhi_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpackhi_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpackhi_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpackhi_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpacklo_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpacklo_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpacklo_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_unpacklo_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_xor_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mask_xor_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_abs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_abs_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_abs_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_abs_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_add_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_add_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_add_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_add_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_adds_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_adds_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_adds_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_adds_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_alignr_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_alignr_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_alignr_epi8<const imm8: i32>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_and_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_and_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_andnot_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_andnot_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_avg_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_avg_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_broadcast_i32x4<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_broadcast_i64x4<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_broadcastb_epi8<T: From<Self>>(k: u64, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_broadcastd_epi32<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_broadcastq_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_broadcastw_epi16<T: From<Self>>(k: u32, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_compress_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_compress_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_compress_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_compress_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_conflict_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_conflict_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_cvtepi16_epi32<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_cvtepi16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_cvtepi32_epi64<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_cvtepi8_epi16<T: From<Self>>(k: u32, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_cvtepi8_epi32<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_cvtepi8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_cvtepu16_epi32<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_cvtepu16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_cvtepu32_epi64<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_cvtepu8_epi16<T: From<Self>>(k: u32, a: impl Into<__m256i>) -> T;
    unsafe fn _mm512_maskz_cvtepu8_epi32<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_cvtepu8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_dbsad_epu8<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_dpbusd_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_dpbusds_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_dpwssd_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_dpwssds_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_expand_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_expand_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_expand_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_expand_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_gf2p8affine_epi64_epi8<const b: i32>(k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_gf2p8affineinv_epi64_epi8<const b: i32>(k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_gf2p8mul_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_inserti32x4<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<__m128i>) -> Self;
    unsafe fn _mm512_maskz_inserti64x4<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<__m256i>) -> Self;
    unsafe fn _mm512_maskz_loadu_epi8<T: From<Self>>(k: u64, mem_addr: *const i8) -> T;
    unsafe fn _mm512_maskz_lzcnt_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_lzcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_madd_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_maddubs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epu32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_max_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epu32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_min_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mov_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mov_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mov_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mov_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mul_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mul_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mulhi_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mulhi_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mulhrs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mullo_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_mullo_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_multishift_epi64_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_or_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_or_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_packs_epi16<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_packs_epi32<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_packus_epi16<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_packus_epi32<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutex2var_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutex2var_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutex2var_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutex2var_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutex_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_permutexvar_epi16<T: From<Self>>(k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutexvar_epi32<T: From<Self>>(k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutexvar_epi64<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_permutexvar_epi8<T: From<Self>>(k: u64, idx: impl Into<Self>, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_popcnt_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_popcnt_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_popcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_popcnt_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_rol_epi32<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_rol_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_rolv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_rolv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_ror_epi32<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_ror_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_rorv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_rorv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_set1_epi16<T: From<Self>>(k: u32, a: i16) -> T;
    unsafe fn _mm512_maskz_set1_epi32<T: From<Self>>(k: u16, a: i32) -> T;
    unsafe fn _mm512_maskz_set1_epi64<T: From<Self>>(k: u8, a: i64) -> T;
    unsafe fn _mm512_maskz_set1_epi8<T: From<Self>>(k: u64, a: i8) -> T;
    unsafe fn _mm512_maskz_shldi_epi16<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shldi_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shldi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shldv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shldv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shldv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shrdi_epi16<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shrdi_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shrdi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shrdv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shrdv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shrdv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shuffle_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_shuffle_i32x4<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shuffle_i64x2<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shufflehi_epi16<const imm8: i32>(k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_shufflelo_epi16<const imm8: i32>(k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_sll_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_sll_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_sll_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_slli_epi16<const imm8: u32>(k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_slli_epi32<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_slli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_sllv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sllv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sllv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sra_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_sra_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_sra_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_srai_epi16<const imm8: u32>(k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_srai_epi32<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_srai_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_srav_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_srav_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_srav_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_srl_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_srl_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_srl_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_maskz_srli_epi16<const imm8: i32>(k: u32, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_srli_epi32<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_srli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_srlv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_srlv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_srlv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sub_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sub_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sub_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_sub_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_subs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_subs_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_subs_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_subs_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_ternarylogic_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_ternarylogic_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_maskz_unpackhi_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpackhi_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpackhi_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpackhi_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpacklo_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpacklo_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpacklo_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_unpacklo_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_xor_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_maskz_xor_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_max_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_min_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_movepi16_mask(self) -> u32;
    unsafe fn _mm512_movepi8_mask(self) -> u64;
    unsafe fn _mm512_movm_epi16<T: From<Self>>(k: u32) -> T;
    unsafe fn _mm512_movm_epi8<T: From<Self>>(k: u64) -> T;
    unsafe fn _mm512_mul_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mul_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mulhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mulhi_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mulhrs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mullo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mullo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_mullox_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_multishift_epi64_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_or_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_or_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_or_si512<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_packs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_packs_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_packus_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_packus_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_permutevar_epi32<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm512_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T;
    unsafe fn _mm512_permutex_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_permutexvar_epi16<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm512_permutexvar_epi32<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm512_permutexvar_epi64<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm512_permutexvar_epi8<T: From<Self>>(self, a: impl Into<Self>) -> T;
    unsafe fn _mm512_popcnt_epi16<T: From<Self>>(self) -> T;
    unsafe fn _mm512_popcnt_epi32<T: From<Self>>(self) -> T;
    unsafe fn _mm512_popcnt_epi64<T: From<Self>>(self) -> T;
    unsafe fn _mm512_popcnt_epi8<T: From<Self>>(self) -> T;
    unsafe fn _mm512_reduce_add_epi32(self) -> i32;
    unsafe fn _mm512_reduce_add_epi64(self) -> i64;
    unsafe fn _mm512_reduce_and_epi32(self) -> i32;
    unsafe fn _mm512_reduce_and_epi64(self) -> i64;
    unsafe fn _mm512_reduce_max_epi32(self) -> i32;
    unsafe fn _mm512_reduce_max_epi64(self) -> i64;
    unsafe fn _mm512_reduce_max_epu32(self) -> u32;
    unsafe fn _mm512_reduce_max_epu64(self) -> u64;
    unsafe fn _mm512_reduce_min_epi32(self) -> i32;
    unsafe fn _mm512_reduce_min_epi64(self) -> i64;
    unsafe fn _mm512_reduce_min_epu32(self) -> u32;
    unsafe fn _mm512_reduce_min_epu64(self) -> u64;
    unsafe fn _mm512_reduce_mul_epi32(self) -> i32;
    unsafe fn _mm512_reduce_mul_epi64(self) -> i64;
    unsafe fn _mm512_reduce_or_epi32(self) -> i32;
    unsafe fn _mm512_reduce_or_epi64(self) -> i64;
    unsafe fn _mm512_rol_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_rol_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_rolv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_rolv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_ror_epi32<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_ror_epi64<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_rorv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_rorv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_sad_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_set1_epi16<T: From<Self>>(a: i16) -> T;
    unsafe fn _mm512_set1_epi32<T: From<Self>>(a: i32) -> T;
    unsafe fn _mm512_set1_epi64<T: From<Self>>(a: i64) -> T;
    unsafe fn _mm512_set1_epi8<T: From<Self>>(a: i8) -> T;
    unsafe fn _mm512_set4_epi32<T: From<Self>>(d: i32, c: i32, b: i32, a: i32) -> T;
    unsafe fn _mm512_set4_epi64<T: From<Self>>(d: i64, c: i64, b: i64, a: i64) -> T;
    unsafe fn _mm512_set_epi16<T: From<Self>>(e: [i16; 32]) -> T;
    unsafe fn _mm512_set_epi32<T: From<Self>>(e: [i32; 16]) -> T;
    unsafe fn _mm512_set_epi64<T: From<Self>>(e: [i64; 8]) -> T;
    unsafe fn _mm512_set_epi8<T: From<Self>>(e: [i8; 64]) -> T;
    unsafe fn _mm512_setr4_epi32<T: From<Self>>(d: i32, c: i32, b: i32, a: i32) -> T;
    unsafe fn _mm512_setr4_epi64<T: From<Self>>(d: i64, c: i64, b: i64, a: i64) -> T;
    unsafe fn _mm512_setr_epi32<T: From<Self>>(e: [i32; 16]) -> T;
    unsafe fn _mm512_setr_epi64<T: From<Self>>(e: [i64; 8]) -> T;
    unsafe fn _mm512_setzero_epi32<T: From<Self>>() -> T;
    unsafe fn _mm512_setzero_si512<T: From<Self>>() -> T;
    unsafe fn _mm512_shldi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shldi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shldi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shldv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_shldv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_shldv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_shrdi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shrdi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shrdi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shrdv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_shrdv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_shrdv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T;
    unsafe fn _mm512_shuffle_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_shuffle_i32x4<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shuffle_i64x2<const imm8: i32>(self, b: impl Into<Self>) -> Self;
    unsafe fn _mm512_shufflehi_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_shufflelo_epi16<const imm8: i32>(self) -> Self;
    unsafe fn _mm512_sll_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_sll_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_sll_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_slli_epi16<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_slli_epi32<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_slli_epi64<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_sllv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_sllv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_sllv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_sra_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_sra_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_sra_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_srai_epi16<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_srai_epi32<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_srai_epi64<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_srav_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_srav_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_srav_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_srl_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_srl_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_srl_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T;
    unsafe fn _mm512_srli_epi16<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_srli_epi32<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_srli_epi64<const imm8: u32>(self) -> Self;
    unsafe fn _mm512_srlv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_srlv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_srlv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T;
    unsafe fn _mm512_sub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_sub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_sub_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_sub_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_subs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_subs_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_subs_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_subs_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_ternarylogic_epi32<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_ternarylogic_epi64<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self;
    unsafe fn _mm512_test_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_test_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_test_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_test_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_testn_epi16_mask(self, b: impl Into<Self>) -> u32;
    unsafe fn _mm512_testn_epi32_mask(self, b: impl Into<Self>) -> u16;
    unsafe fn _mm512_testn_epi64_mask(self, b: impl Into<Self>) -> u8;
    unsafe fn _mm512_testn_epi8_mask(self, b: impl Into<Self>) -> u64;
    unsafe fn _mm512_undefined_epi32<T: From<Self>>() -> T;
    unsafe fn _mm512_unpackhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpackhi_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpackhi_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpackhi_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpacklo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpacklo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpacklo_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_unpacklo_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_xor_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_xor_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_xor_si512<T: From<Self>>(self, b: impl Into<Self>) -> T;
    unsafe fn _mm512_zextsi128_si512<T: From<Self>>(a: impl Into<__m128i>) -> T;
    unsafe fn _mm512_zextsi256_si512<T: From<Self>>(a: impl Into<__m256i>) -> T;
}
impl __m512iIntrinsic for __m512i {
    #[inline(always)]
    unsafe fn _mm512_abs_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm512_abs_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_abs_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm512_abs_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_abs_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm512_abs_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_abs_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm512_abs_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_add_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_add_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_add_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_add_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_add_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_add_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_add_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_add_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_adds_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_adds_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_adds_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_adds_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_adds_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_adds_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_adds_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_adds_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_aesdec_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm512_aesdec_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_aesdeclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm512_aesdeclast_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_aesenc_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm512_aesenc_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_aesenclast_epi128<T: From<Self>>(self, RoundKey: impl Into<Self>) -> T {
        unsafe { _mm512_aesenclast_epi128(self, RoundKey.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_alignr_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_alignr_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_alignr_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_alignr_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_alignr_epi8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_alignr_epi8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_and_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_and_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_and_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_and_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_and_si512<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_and_si512(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_andnot_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_andnot_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_andnot_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_andnot_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_andnot_si512<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_andnot_si512(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_avg_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_avg_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_avg_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_avg_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_bitshuffle_epi64_mask(self, c: impl Into<Self>) -> u64 {
        unsafe { _mm512_bitshuffle_epi64_mask(self, c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_broadcast_i32x4<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_broadcast_i32x4(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcast_i64x4<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_broadcast_i64x4(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastb_epi8<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_broadcastb_epi8(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastd_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_broadcastd_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastmb_epi64<T: From<Self>>(k: u8) -> T {
        unsafe { _mm512_broadcastmb_epi64(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastmw_epi32<T: From<Self>>(k: u16) -> T {
        unsafe { _mm512_broadcastmw_epi32(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastq_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_broadcastq_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_broadcastw_epi16<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_broadcastw_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_bslli_epi128<const imm8: i32>(self) -> Self {
        unsafe { _mm512_bslli_epi128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_bsrli_epi128<const imm8: i32>(self) -> Self {
        unsafe { _mm512_bsrli_epi128::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_castsi128_si512<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_castsi128_si512(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi256_si512<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_castsi256_si512(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi512_si128<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_castsi512_si128(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_castsi512_si256<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_castsi512_si256(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_clmulepi64_epi128<const Imm8: i32>(self, c: impl Into<Self>) -> Self {
        unsafe { _mm512_clmulepi64_epi128::<Imm8>(self, c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmp_epi16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmp_epi16_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmp_epi8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmp_epi8_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmp_epu16_mask<const imm8: i32>(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmp_epu16_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmp_epu8_mask<const imm8: i32>(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmp_epu8_mask::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpeq_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpeq_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpeq_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpeq_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epu16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpeq_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epu32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpeq_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpeq_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpeq_epu8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpeq_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpge_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpge_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpge_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpge_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epu16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpge_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epu32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpge_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpge_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpge_epu8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpge_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpgt_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpgt_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpgt_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpgt_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epu16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpgt_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epu32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpgt_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpgt_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpgt_epu8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpgt_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmple_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmple_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmple_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmple_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epu16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmple_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epu32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmple_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmple_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmple_epu8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmple_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmplt_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmplt_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmplt_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmplt_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epu16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmplt_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epu32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmplt_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmplt_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmplt_epu8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmplt_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpneq_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpneq_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpneq_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpneq_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epu16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_cmpneq_epu16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epu32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_cmpneq_epu32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epu64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_cmpneq_epu64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_cmpneq_epu8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_cmpneq_epu8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_conflict_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm512_conflict_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_conflict_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm512_conflict_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi16_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_cvtepi16_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_cvtepi16_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi16_epi8<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi32_epi16<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi32_epi64<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_cvtepi32_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi32_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi64_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi64_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi64_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi8_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_cvtepi8_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_cvtepi8_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepi8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_cvtepi8_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu16_epi32<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_cvtepu16_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu16_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_cvtepu16_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu32_epi64<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_cvtepu32_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu8_epi16<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_cvtepu8_epi16(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu8_epi32<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_cvtepu8_epi32(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtepu8_epi64<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_cvtepu8_epi64(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi16_epi8<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtsepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi32_epi16<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtsepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi32_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtsepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi64_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtsepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi64_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtsepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsepi64_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtsepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtsi512_si32(self) -> i32 {
        unsafe { _mm512_cvtsi512_si32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi16_epi8<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtusepi16_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi32_epi16<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtusepi32_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi32_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtusepi32_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi64_epi16<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtusepi64_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi64_epi32<T: From<__m256i>>(self) -> T {
        unsafe { _mm512_cvtusepi64_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_cvtusepi64_epi8<T: From<__m128i>>(self) -> T {
        unsafe { _mm512_cvtusepi64_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_dbsad_epu8<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_dbsad_epu8::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_dpbusd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_dpbusd_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_dpbusds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_dpbusds_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_dpwssd_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_dpwssd_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_dpwssds_epi32<T: From<Self>>(self, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_dpwssds_epi32(self, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_extracti32x4_epi32<const imm8: i32>(self) -> __m128i {
        unsafe { _mm512_extracti32x4_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_extracti64x4_epi64<const imm8: i32>(self) -> __m256i {
        unsafe { _mm512_extracti64x4_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_gf2p8affine_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self {
        unsafe { _mm512_gf2p8affine_epi64_epi8::<b>(self, A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_gf2p8affineinv_epi64_epi8<const b: i32>(self, A: impl Into<Self>) -> Self {
        unsafe { _mm512_gf2p8affineinv_epi64_epi8::<b>(self, A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_gf2p8mul_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_gf2p8mul_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_inserti32x4<const imm8: i32>(self, b: impl Into<__m128i>) -> Self {
        unsafe { _mm512_inserti32x4::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_inserti64x4<const imm8: i32>(self, b: impl Into<__m256i>) -> Self {
        unsafe { _mm512_inserti64x4::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_loadu_epi8<T: From<Self>>(mem_addr: *const i8) -> T {
        unsafe { _mm512_loadu_epi8(mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_lzcnt_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm512_lzcnt_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_lzcnt_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm512_lzcnt_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_madd52hi_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_madd52hi_epu64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_madd52lo_epu64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_madd52lo_epu64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_madd_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_madd_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maddubs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_maddubs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask2_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, k: u32, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask2_permutex2var_epi16(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask2_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, k: u16, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask2_permutex2var_epi32(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask2_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, k: u8, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask2_permutex2var_epi64(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask2_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, k: u64, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask2_permutex2var_epi8(self, idx.into(), k, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_abs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_abs_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_abs_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_abs_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_abs_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_abs_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_abs_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_abs_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_add_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_add_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_add_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_add_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_add_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_add_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_add_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_add_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_adds_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_adds_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_adds_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_adds_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_adds_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_adds_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_adds_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_adds_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_alignr_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_alignr_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_alignr_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_alignr_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_alignr_epi8<const imm8: i32>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_alignr_epi8::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_and_epi32<T: From<Self>>(self, k: u16, v2: impl Into<Self>, v3: impl Into<Self>) -> T {
        unsafe { _mm512_mask_and_epi32(self, k, v2.into(), v3.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_and_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_and_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_andnot_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_andnot_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_andnot_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_andnot_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_avg_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_avg_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_avg_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_avg_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_blend_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_blend_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_blend_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_blend_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_blend_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_blend_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_blend_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_blend_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_broadcast_i32x4<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_broadcast_i32x4(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_broadcast_i64x4<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_broadcast_i64x4(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_broadcastb_epi8<T: From<Self>>(self, k: u64, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_broadcastb_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_broadcastd_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_broadcastd_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_broadcastq_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_broadcastq_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_broadcastw_epi16<T: From<Self>>(self, k: u32, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_broadcastw_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_compress_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_compress_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_compress_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_compress_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_compress_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_compress_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_compress_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_compress_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_conflict_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_conflict_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_conflict_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_conflict_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi16_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_cvtepi16_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_cvtepi16_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_cvtepi32_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi8_epi16<T: From<Self>>(self, k: u32, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_cvtepi8_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi8_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_cvtepi8_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepi8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_cvtepi8_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepu16_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_cvtepu16_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepu16_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_cvtepu16_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepu32_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_cvtepu32_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepu8_epi16<T: From<Self>>(self, k: u32, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_mask_cvtepu8_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepu8_epi32<T: From<Self>>(self, k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_cvtepu8_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_cvtepu8_epi64<T: From<Self>>(self, k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_cvtepu8_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_dbsad_epu8<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_dbsad_epu8::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_dpbusd_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_dpbusd_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_dpbusds_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_dpbusds_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_dpwssd_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_dpwssd_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_dpwssds_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_dpwssds_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_expand_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_expand_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_expand_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_expand_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_expand_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_expand_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_expand_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_expand_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_gf2p8affine_epi64_epi8<const b: i32>(self, k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_gf2p8affine_epi64_epi8::<b>(self, k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_gf2p8affineinv_epi64_epi8<const b: i32>(self, k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_gf2p8affineinv_epi64_epi8::<b>(self, k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_gf2p8mul_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_gf2p8mul_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_inserti32x4<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<__m128i>) -> Self {
        unsafe { _mm512_mask_inserti32x4::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_inserti64x4<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<__m256i>) -> Self {
        unsafe { _mm512_mask_inserti64x4::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_loadu_epi8<T: From<Self>>(self, k: u64, mem_addr: *const i8) -> T {
        unsafe { _mm512_mask_loadu_epi8(self, k, mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_lzcnt_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_lzcnt_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_lzcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_lzcnt_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_madd_epi16<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_madd_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_maddubs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_maddubs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epu32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epu64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_max_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_max_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epu32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epu64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epu64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_min_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_min_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mov_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mov_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mov_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mov_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mov_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mov_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mov_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mov_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mul_epi32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mul_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mul_epu32<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mul_epu32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mulhi_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mulhi_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mulhi_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mulhi_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mulhrs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mulhrs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mullo_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mullo_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mullo_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mullo_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_mullox_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_mullox_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_multishift_epi64_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_multishift_epi64_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_or_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_or_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_or_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_or_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_packs_epi16<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_packs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_packs_epi32<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_packs_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_packus_epi16<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_packus_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_packus_epi32<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_packus_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutevar_epi32<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutevar_epi32(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutex2var_epi16<T: From<Self>>(self, k: u32, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutex2var_epi16(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutex2var_epi32<T: From<Self>>(self, k: u16, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutex2var_epi32(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutex2var_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutex2var_epi64(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutex2var_epi8<T: From<Self>>(self, k: u64, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutex2var_epi8(self, k, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutex_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_permutex_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutexvar_epi16<T: From<Self>>(self, k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutexvar_epi16(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutexvar_epi32<T: From<Self>>(self, k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutexvar_epi32(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutexvar_epi64<T: From<Self>>(self, k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutexvar_epi64(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_permutexvar_epi8<T: From<Self>>(self, k: u64, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_permutexvar_epi8(self, k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_popcnt_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_popcnt_epi16(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_popcnt_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_popcnt_epi32(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_popcnt_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_popcnt_epi64(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_popcnt_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_mask_popcnt_epi8(self, k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_rol_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_rol_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_rol_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_rol_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_rolv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_rolv_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_rolv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_rolv_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_ror_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_ror_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_ror_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_ror_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_rorv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_rorv_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_rorv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_rorv_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_set1_epi16<T: From<Self>>(self, k: u32, a: i16) -> T {
        unsafe { _mm512_mask_set1_epi16(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_set1_epi32<T: From<Self>>(self, k: u16, a: i32) -> T {
        unsafe { _mm512_mask_set1_epi32(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_set1_epi64<T: From<Self>>(self, k: u8, a: i64) -> T {
        unsafe { _mm512_mask_set1_epi64(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_set1_epi8<T: From<Self>>(self, k: u64, a: i8) -> T {
        unsafe { _mm512_mask_set1_epi8(self, k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shldi_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shldi_epi16::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shldi_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shldi_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shldi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shldi_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shldv_epi16<T: From<Self>>(self, k: u32, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shldv_epi16(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shldv_epi32<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shldv_epi32(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shldv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shldv_epi64(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shrdi_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shrdi_epi16::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shrdi_epi32<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shrdi_epi32::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shrdi_epi64<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shrdi_epi64::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shrdv_epi16<T: From<Self>>(self, k: u32, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shrdv_epi16(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shrdv_epi32<T: From<Self>>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shrdv_epi32(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shrdv_epi64<T: From<Self>>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shrdv_epi64(self, k, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shuffle_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_shuffle_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shuffle_i32x4<const imm8: i32>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shuffle_i32x4::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shuffle_i64x2<const imm8: i32>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shuffle_i64x2::<imm8>(self, k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shufflehi_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shufflehi_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_shufflelo_epi16<const imm8: i32>(self, k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_shufflelo_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sll_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_sll_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sll_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_sll_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sll_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_sll_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_slli_epi16<const imm8: u32>(self, k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_slli_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_slli_epi32<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_slli_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_slli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_slli_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sllv_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sllv_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sllv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sllv_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sllv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sllv_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sra_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_sra_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sra_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_sra_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sra_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_sra_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srai_epi16<const imm8: u32>(self, k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_srai_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srai_epi32<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_srai_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srai_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_srai_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srav_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_srav_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srav_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_srav_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srav_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_srav_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srl_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_srl_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srl_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_srl_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srl_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_mask_srl_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srli_epi16<const imm8: u32>(self, k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_srli_epi16::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srli_epi32<const imm8: u32>(self, k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_srli_epi32::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srli_epi64<const imm8: u32>(self, k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_srli_epi64::<imm8>(self, k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srlv_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_srlv_epi16(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srlv_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_srlv_epi32(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_srlv_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_mask_srlv_epi64(self, k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sub_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sub_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sub_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sub_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sub_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sub_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_sub_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_sub_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_subs_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_subs_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_subs_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_subs_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_subs_epu16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_subs_epu16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_subs_epu8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_subs_epu8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_ternarylogic_epi32<const imm8: i32>(self, k: u16, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_ternarylogic_epi32::<imm8>(self, k, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_ternarylogic_epi64<const imm8: i32>(self, k: u8, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm512_mask_ternarylogic_epi64::<imm8>(self, k, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpackhi_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpackhi_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpackhi_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpackhi_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpackhi_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpackhi_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpackhi_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpackhi_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpacklo_epi16<T: From<Self>>(self, k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpacklo_epi16(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpacklo_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpacklo_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpacklo_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpacklo_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_unpacklo_epi8<T: From<Self>>(self, k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_unpacklo_epi8(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_xor_epi32<T: From<Self>>(self, k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_xor_epi32(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mask_xor_epi64<T: From<Self>>(self, k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_mask_xor_epi64(self, k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_abs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_abs_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_abs_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_abs_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_abs_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_abs_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_abs_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_abs_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_add_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_add_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_add_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_add_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_add_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_add_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_add_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_add_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_adds_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_adds_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_adds_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_adds_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_adds_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_adds_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_adds_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_adds_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_alignr_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_alignr_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_alignr_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_alignr_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_alignr_epi8<const imm8: i32>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_alignr_epi8::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_and_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_and_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_and_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_and_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_andnot_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_andnot_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_andnot_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_andnot_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_avg_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_avg_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_avg_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_avg_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_broadcast_i32x4<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_broadcast_i32x4(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_broadcast_i64x4<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_broadcast_i64x4(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_broadcastb_epi8<T: From<Self>>(k: u64, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_broadcastb_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_broadcastd_epi32<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_broadcastd_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_broadcastq_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_broadcastq_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_broadcastw_epi16<T: From<Self>>(k: u32, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_broadcastw_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_compress_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_compress_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_compress_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_compress_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_compress_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_compress_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_compress_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_compress_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_conflict_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_conflict_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_conflict_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_conflict_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi16_epi32<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_cvtepi16_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_cvtepi16_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi32_epi64<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_cvtepi32_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi8_epi16<T: From<Self>>(k: u32, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_cvtepi8_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi8_epi32<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_cvtepi8_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepi8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_cvtepi8_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepu16_epi32<T: From<Self>>(k: u16, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_cvtepu16_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepu16_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_cvtepu16_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepu32_epi64<T: From<Self>>(k: u8, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_cvtepu32_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepu8_epi16<T: From<Self>>(k: u32, a: impl Into<__m256i>) -> T {
        unsafe { _mm512_maskz_cvtepu8_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepu8_epi32<T: From<Self>>(k: u16, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_cvtepu8_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_cvtepu8_epi64<T: From<Self>>(k: u8, a: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_cvtepu8_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_dbsad_epu8<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_dbsad_epu8::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_dpbusd_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_dpbusd_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_dpbusds_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_dpbusds_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_dpwssd_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_dpwssd_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_dpwssds_epi32<T: From<Self>>(k: u16, src: impl Into<Self>, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_dpwssds_epi32(k, src.into(), a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_expand_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_expand_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_expand_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_expand_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_expand_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_expand_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_expand_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_expand_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_gf2p8affine_epi64_epi8<const b: i32>(k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_gf2p8affine_epi64_epi8::<b>(k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_gf2p8affineinv_epi64_epi8<const b: i32>(k: u64, x: impl Into<Self>, A: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_gf2p8affineinv_epi64_epi8::<b>(k, x.into(), A.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_gf2p8mul_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_gf2p8mul_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_inserti32x4<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<__m128i>) -> Self {
        unsafe { _mm512_maskz_inserti32x4::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_inserti64x4<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<__m256i>) -> Self {
        unsafe { _mm512_maskz_inserti64x4::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_loadu_epi8<T: From<Self>>(k: u64, mem_addr: *const i8) -> T {
        unsafe { _mm512_maskz_loadu_epi8(k, mem_addr) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_lzcnt_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_lzcnt_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_lzcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_lzcnt_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_madd_epi16<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_madd_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_maddubs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_maddubs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epu32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epu64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_max_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_max_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epu32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epu64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epu64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_min_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_min_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mov_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mov_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mov_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mov_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mov_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mov_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mov_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mov_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mul_epi32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mul_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mul_epu32<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mul_epu32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mulhi_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mulhi_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mulhi_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mulhi_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mulhrs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mulhrs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mullo_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mullo_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_mullo_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_mullo_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_multishift_epi64_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_multishift_epi64_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_or_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_or_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_or_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_or_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_packs_epi16<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_packs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_packs_epi32<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_packs_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_packus_epi16<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_packus_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_packus_epi32<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_packus_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutex2var_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutex2var_epi16(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutex2var_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutex2var_epi32(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutex2var_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutex2var_epi64(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutex2var_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutex2var_epi8(k, a.into(), idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutex_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_permutex_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutexvar_epi16<T: From<Self>>(k: u32, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutexvar_epi16(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutexvar_epi32<T: From<Self>>(k: u16, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutexvar_epi32(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutexvar_epi64<T: From<Self>>(k: u8, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutexvar_epi64(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_permutexvar_epi8<T: From<Self>>(k: u64, idx: impl Into<Self>, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_permutexvar_epi8(k, idx.into(), a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_popcnt_epi16<T: From<Self>>(k: u32, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_popcnt_epi16(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_popcnt_epi32<T: From<Self>>(k: u16, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_popcnt_epi32(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_popcnt_epi64<T: From<Self>>(k: u8, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_popcnt_epi64(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_popcnt_epi8<T: From<Self>>(k: u64, a: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_popcnt_epi8(k, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_rol_epi32<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_rol_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_rol_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_rol_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_rolv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_rolv_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_rolv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_rolv_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_ror_epi32<const imm8: i32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_ror_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_ror_epi64<const imm8: i32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_ror_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_rorv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_rorv_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_rorv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_rorv_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_set1_epi16<T: From<Self>>(k: u32, a: i16) -> T {
        unsafe { _mm512_maskz_set1_epi16(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_set1_epi32<T: From<Self>>(k: u16, a: i32) -> T {
        unsafe { _mm512_maskz_set1_epi32(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_set1_epi64<T: From<Self>>(k: u8, a: i64) -> T {
        unsafe { _mm512_maskz_set1_epi64(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_set1_epi8<T: From<Self>>(k: u64, a: i8) -> T {
        unsafe { _mm512_maskz_set1_epi8(k, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shldi_epi16<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shldi_epi16::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shldi_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shldi_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shldi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shldi_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shldv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shldv_epi16(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shldv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shldv_epi32(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shldv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shldv_epi64(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shrdi_epi16<const imm8: i32>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shrdi_epi16::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shrdi_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shrdi_epi32::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shrdi_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shrdi_epi64::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shrdv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shrdv_epi16(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shrdv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shrdv_epi32(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shrdv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shrdv_epi64(k, a.into(), b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shuffle_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_shuffle_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shuffle_i32x4<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shuffle_i32x4::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shuffle_i64x2<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shuffle_i64x2::<imm8>(k, a.into(), b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shufflehi_epi16<const imm8: i32>(k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shufflehi_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_shufflelo_epi16<const imm8: i32>(k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_shufflelo_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sll_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_sll_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sll_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_sll_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sll_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_sll_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_slli_epi16<const imm8: u32>(k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_slli_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_slli_epi32<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_slli_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_slli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_slli_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sllv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sllv_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sllv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sllv_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sllv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sllv_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sra_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_sra_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sra_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_sra_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sra_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_sra_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srai_epi16<const imm8: u32>(k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_srai_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srai_epi32<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_srai_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srai_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_srai_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srav_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_srav_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srav_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_srav_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srav_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_srav_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srl_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_srl_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srl_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_srl_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srl_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_maskz_srl_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srli_epi16<const imm8: i32>(k: u32, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_srli_epi16::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srli_epi32<const imm8: u32>(k: u16, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_srli_epi32::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srli_epi64<const imm8: u32>(k: u8, a: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_srli_epi64::<imm8>(k, a.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srlv_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_srlv_epi16(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srlv_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_srlv_epi32(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_srlv_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, count: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_srlv_epi64(k, a.into(), count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sub_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sub_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sub_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sub_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sub_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sub_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_sub_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_sub_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_subs_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_subs_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_subs_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_subs_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_subs_epu16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_subs_epu16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_subs_epu8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_subs_epu8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_ternarylogic_epi32<const imm8: i32>(k: u16, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_ternarylogic_epi32::<imm8>(k, a.into(), b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_ternarylogic_epi64<const imm8: i32>(k: u8, a: impl Into<Self>, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm512_maskz_ternarylogic_epi64::<imm8>(k, a.into(), b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpackhi_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpackhi_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpackhi_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpackhi_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpackhi_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpackhi_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpackhi_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpackhi_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpacklo_epi16<T: From<Self>>(k: u32, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpacklo_epi16(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpacklo_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpacklo_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpacklo_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpacklo_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_unpacklo_epi8<T: From<Self>>(k: u64, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_unpacklo_epi8(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_xor_epi32<T: From<Self>>(k: u16, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_xor_epi32(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_maskz_xor_epi64<T: From<Self>>(k: u8, a: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_maskz_xor_epi64(k, a.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epu64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_max_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_max_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epu64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epu64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_min_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_min_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_movepi16_mask(self) -> u32 {
        unsafe { _mm512_movepi16_mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_movepi8_mask(self) -> u64 {
        unsafe { _mm512_movepi8_mask(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_movm_epi16<T: From<Self>>(k: u32) -> T {
        unsafe { _mm512_movm_epi16(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_movm_epi8<T: From<Self>>(k: u64) -> T {
        unsafe { _mm512_movm_epi8(k) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mul_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mul_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mul_epu32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mul_epu32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mulhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mulhi_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mulhi_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mulhi_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mulhrs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mulhrs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mullo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mullo_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mullo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mullo_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_mullox_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_mullox_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_multishift_epi64_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_multishift_epi64_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_or_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_or_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_or_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_or_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_or_si512<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_or_si512(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_packs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_packs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_packs_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_packs_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_packus_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_packus_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_packus_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_packus_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutevar_epi32<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm512_permutevar_epi32(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutex2var_epi16<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_permutex2var_epi16(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutex2var_epi32<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_permutex2var_epi32(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutex2var_epi64<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_permutex2var_epi64(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutex2var_epi8<T: From<Self>>(self, idx: impl Into<Self>, b: impl Into<Self>) -> T {
        unsafe { _mm512_permutex2var_epi8(self, idx.into(), b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutex_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm512_permutex_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_permutexvar_epi16<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm512_permutexvar_epi16(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutexvar_epi32<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm512_permutexvar_epi32(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutexvar_epi64<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm512_permutexvar_epi64(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_permutexvar_epi8<T: From<Self>>(self, a: impl Into<Self>) -> T {
        unsafe { _mm512_permutexvar_epi8(self, a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_popcnt_epi16<T: From<Self>>(self) -> T {
        unsafe { _mm512_popcnt_epi16(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_popcnt_epi32<T: From<Self>>(self) -> T {
        unsafe { _mm512_popcnt_epi32(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_popcnt_epi64<T: From<Self>>(self) -> T {
        unsafe { _mm512_popcnt_epi64(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_popcnt_epi8<T: From<Self>>(self) -> T {
        unsafe { _mm512_popcnt_epi8(self) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_add_epi32(self) -> i32 {
        unsafe { _mm512_reduce_add_epi32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_add_epi64(self) -> i64 {
        unsafe { _mm512_reduce_add_epi64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_and_epi32(self) -> i32 {
        unsafe { _mm512_reduce_and_epi32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_and_epi64(self) -> i64 {
        unsafe { _mm512_reduce_and_epi64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_max_epi32(self) -> i32 {
        unsafe { _mm512_reduce_max_epi32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_max_epi64(self) -> i64 {
        unsafe { _mm512_reduce_max_epi64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_max_epu32(self) -> u32 {
        unsafe { _mm512_reduce_max_epu32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_max_epu64(self) -> u64 {
        unsafe { _mm512_reduce_max_epu64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_min_epi32(self) -> i32 {
        unsafe { _mm512_reduce_min_epi32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_min_epi64(self) -> i64 {
        unsafe { _mm512_reduce_min_epi64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_min_epu32(self) -> u32 {
        unsafe { _mm512_reduce_min_epu32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_min_epu64(self) -> u64 {
        unsafe { _mm512_reduce_min_epu64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_mul_epi32(self) -> i32 {
        unsafe { _mm512_reduce_mul_epi32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_mul_epi64(self) -> i64 {
        unsafe { _mm512_reduce_mul_epi64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_or_epi32(self) -> i32 {
        unsafe { _mm512_reduce_or_epi32(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_reduce_or_epi64(self) -> i64 {
        unsafe { _mm512_reduce_or_epi64(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_rol_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm512_rol_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_rol_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm512_rol_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_rolv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_rolv_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_rolv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_rolv_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_ror_epi32<const imm8: i32>(self) -> Self {
        unsafe { _mm512_ror_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_ror_epi64<const imm8: i32>(self) -> Self {
        unsafe { _mm512_ror_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_rorv_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_rorv_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_rorv_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_rorv_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sad_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_sad_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set1_epi16<T: From<Self>>(a: i16) -> T {
        unsafe { _mm512_set1_epi16(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set1_epi32<T: From<Self>>(a: i32) -> T {
        unsafe { _mm512_set1_epi32(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set1_epi64<T: From<Self>>(a: i64) -> T {
        unsafe { _mm512_set1_epi64(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set1_epi8<T: From<Self>>(a: i8) -> T {
        unsafe { _mm512_set1_epi8(a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set4_epi32<T: From<Self>>(d: i32, c: i32, b: i32, a: i32) -> T {
        unsafe { _mm512_set4_epi32(d, c, b, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set4_epi64<T: From<Self>>(d: i64, c: i64, b: i64, a: i64) -> T {
        unsafe { _mm512_set4_epi64(d, c, b, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set_epi16<T: From<Self>>(e: [i16; 32]) -> T {
        unsafe { _mm512_set_epi16(e[31], e[30], e[29], e[28], e[27], e[26], e[25], e[24], e[23], e[22], e[21], e[20], e[19], e[18], e[17], e[16], e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set_epi32<T: From<Self>>(e: [i32; 16]) -> T {
        unsafe { _mm512_set_epi32(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set_epi64<T: From<Self>>(e: [i64; 8]) -> T {
        unsafe { _mm512_set_epi64(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_set_epi8<T: From<Self>>(e: [i8; 64]) -> T {
        unsafe { _mm512_set_epi8(e[63], e[62], e[61], e[60], e[59], e[58], e[57], e[56], e[55], e[54], e[53], e[52], e[51], e[50], e[49], e[48], e[47], e[46], e[45], e[44], e[43], e[42], e[41], e[40], e[39], e[38], e[37], e[36], e[35], e[34], e[33], e[32], e[31], e[30], e[29], e[28], e[27], e[26], e[25], e[24], e[23], e[22], e[21], e[20], e[19], e[18], e[17], e[16], e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_setr4_epi32<T: From<Self>>(d: i32, c: i32, b: i32, a: i32) -> T {
        unsafe { _mm512_setr4_epi32(d, c, b, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_setr4_epi64<T: From<Self>>(d: i64, c: i64, b: i64, a: i64) -> T {
        unsafe { _mm512_setr4_epi64(d, c, b, a) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_setr_epi32<T: From<Self>>(e: [i32; 16]) -> T {
        unsafe { _mm512_setr_epi32(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_setr_epi64<T: From<Self>>(e: [i64; 8]) -> T {
        unsafe { _mm512_setr_epi64(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_setzero_epi32<T: From<Self>>() -> T {
        unsafe { _mm512_setzero_epi32() }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_setzero_si512<T: From<Self>>() -> T {
        unsafe { _mm512_setzero_si512() }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shldi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shldi_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shldi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shldi_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shldi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shldi_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shldv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_shldv_epi16(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shldv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_shldv_epi32(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shldv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_shldv_epi64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shrdi_epi16<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shrdi_epi16::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shrdi_epi32<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shrdi_epi32::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shrdi_epi64<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shrdi_epi64::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shrdv_epi16<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_shrdv_epi16(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shrdv_epi32<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_shrdv_epi32(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shrdv_epi64<T: From<Self>>(self, b: impl Into<Self>, c: impl Into<Self>) -> T {
        unsafe { _mm512_shrdv_epi64(self, b.into(), c.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shuffle_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_shuffle_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_shuffle_i32x4<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shuffle_i32x4::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shuffle_i64x2<const imm8: i32>(self, b: impl Into<Self>) -> Self {
        unsafe { _mm512_shuffle_i64x2::<imm8>(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_shufflehi_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm512_shufflehi_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_shufflelo_epi16<const imm8: i32>(self) -> Self {
        unsafe { _mm512_shufflelo_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_sll_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_sll_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sll_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_sll_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sll_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_sll_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_slli_epi16<const imm8: u32>(self) -> Self {
        unsafe { _mm512_slli_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_slli_epi32<const imm8: u32>(self) -> Self {
        unsafe { _mm512_slli_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_slli_epi64<const imm8: u32>(self) -> Self {
        unsafe { _mm512_slli_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_sllv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_sllv_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sllv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_sllv_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sllv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_sllv_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sra_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_sra_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sra_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_sra_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sra_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_sra_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srai_epi16<const imm8: u32>(self) -> Self {
        unsafe { _mm512_srai_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_srai_epi32<const imm8: u32>(self) -> Self {
        unsafe { _mm512_srai_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_srai_epi64<const imm8: u32>(self) -> Self {
        unsafe { _mm512_srai_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_srav_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_srav_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srav_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_srav_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srav_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_srav_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srl_epi16<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_srl_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srl_epi32<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_srl_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srl_epi64<T: From<Self>>(self, count: impl Into<__m128i>) -> T {
        unsafe { _mm512_srl_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srli_epi16<const imm8: u32>(self) -> Self {
        unsafe { _mm512_srli_epi16::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_srli_epi32<const imm8: u32>(self) -> Self {
        unsafe { _mm512_srli_epi32::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_srli_epi64<const imm8: u32>(self) -> Self {
        unsafe { _mm512_srli_epi64::<imm8>(self) }
    }
    #[inline(always)]
    unsafe fn _mm512_srlv_epi16<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_srlv_epi16(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srlv_epi32<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_srlv_epi32(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_srlv_epi64<T: From<Self>>(self, count: impl Into<Self>) -> T {
        unsafe { _mm512_srlv_epi64(self, count.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sub_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_sub_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sub_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_sub_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sub_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_sub_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_sub_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_sub_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_subs_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_subs_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_subs_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_subs_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_subs_epu16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_subs_epu16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_subs_epu8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_subs_epu8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_ternarylogic_epi32<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm512_ternarylogic_epi32::<imm8>(self, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_ternarylogic_epi64<const imm8: i32>(self, b: impl Into<Self>, c: impl Into<Self>) -> Self {
        unsafe { _mm512_ternarylogic_epi64::<imm8>(self, b.into(), c.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_test_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_test_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_test_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_test_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_test_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_test_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_test_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_test_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_testn_epi16_mask(self, b: impl Into<Self>) -> u32 {
        unsafe { _mm512_testn_epi16_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_testn_epi32_mask(self, b: impl Into<Self>) -> u16 {
        unsafe { _mm512_testn_epi32_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_testn_epi64_mask(self, b: impl Into<Self>) -> u8 {
        unsafe { _mm512_testn_epi64_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_testn_epi8_mask(self, b: impl Into<Self>) -> u64 {
        unsafe { _mm512_testn_epi8_mask(self, b.into()) }
    }
    #[inline(always)]
    unsafe fn _mm512_undefined_epi32<T: From<Self>>() -> T {
        unsafe { _mm512_undefined_epi32() }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpackhi_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpackhi_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpackhi_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpackhi_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpackhi_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpackhi_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpackhi_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpackhi_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpacklo_epi16<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpacklo_epi16(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpacklo_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpacklo_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpacklo_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpacklo_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_unpacklo_epi8<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_unpacklo_epi8(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_xor_epi32<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_xor_epi32(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_xor_epi64<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_xor_epi64(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_xor_si512<T: From<Self>>(self, b: impl Into<Self>) -> T {
        unsafe { _mm512_xor_si512(self, b.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_zextsi128_si512<T: From<Self>>(a: impl Into<__m128i>) -> T {
        unsafe { _mm512_zextsi128_si512(a.into()) }.into()
    }
    #[inline(always)]
    unsafe fn _mm512_zextsi256_si512<T: From<Self>>(a: impl Into<__m256i>) -> T {
        unsafe { _mm512_zextsi256_si512(a.into()) }.into()
    }
}
