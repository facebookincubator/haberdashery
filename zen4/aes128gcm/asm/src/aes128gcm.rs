// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use intrinsics_x86_64::*;

use crate::io::ReadWriter;
use crate::overshoot::TailGhashAccumulator;
use crate::overshoot::decrypt_tail_overshoot_x8;
use crate::overshoot::encrypt_tail_overshoot_x8;
use crate::overshoot::ghash_tail_overshoot_x8;

// ── Constants ───────────────────────────────────────────────────────

const BLOCK: usize = 16;
/// 32 blocks per GHASH bulk pass (8 ZMM regs × 4 blocks/ZMM)
const GHASH_BULK_BYTES: usize = 32 * BLOCK; // 512
pub(crate) const MAX_AAD_BYTES: usize = (1 << 61) - 1;
pub(crate) const MAX_CRYPT_BYTES: usize = (1 << 36) - 32;

#[inline]
pub(crate) fn lengths_are_valid(aad_len: usize, data_len: usize) -> bool {
    aad_len <= MAX_AAD_BYTES && data_len <= MAX_CRYPT_BYTES
}

// ── Main struct ─────────────────────────────────────────────────────

#[repr(C, align(64))]
pub struct Aes128Gcm {
    /// 11 round keys (AES-128 = 10 rounds + 1 initial)
    rk: [__m128i; 11],
    hash_powers: HashPowers,
}

#[repr(C)]
pub(crate) struct HashPowers {
    h: __m128i,
    h2: __m128i,
    h3: __m128i,
    /// h4n[0] = H^4, ..., h4n[7] = H^32.
    h4n: [__m128i; 8],
}

impl HashPowers {
    pub(crate) fn hkeys4(&self) -> __m512i {
        __m512i::_mm512_castsi128_si512(self.h4n[0])
            ._mm512_inserti64x2::<1>(self.h3)
            ._mm512_inserti64x2::<2>(self.h2)
            ._mm512_inserti64x2::<3>(self.h)
    }
}

pub const SIZE: usize = core::mem::size_of::<Aes128Gcm>();
pub const ALIGN: usize = core::mem::align_of::<Aes128Gcm>();

impl Aes128Gcm {
    /// Create a new AES-128-GCM context from a 16-byte key.
    pub(crate) fn new(key: &[u8; 16]) -> Self {
        unsafe {
            let rk = {
                let mut rk = [__m128i::ZERO; 11];
                aes128_expand_key(key, &mut rk);
                rk
            };
            let h_raw = __m128i::ZERO.aes128ecb(&rk);
            let h = prepare_h_for_pclmulqdq(h_raw);
            let hash_powers = precompute_hash_powers(h);
            Self { rk, hash_powers }
        }
    }

    /// Encrypt plaintext with associated data.
    /// Returns ciphertext || 16-byte tag.
    pub(crate) fn encrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        mut inout: ReadWriter,
        tag_out: &mut [u8; 16],
    ) -> bool {
        if !lengths_are_valid(aad.len(), inout.len()) {
            return false;
        }
        let plaintext_len = inout.len();

        unsafe {
            let j0 = compute_j0(nonce, self.hash_powers.h, &self.hash_powers);
            let ectr0 = j0.aes128ecb(&self.rk);
            let mut ctr = inc32_be(j0);
            let h = self.hash_powers.h;

            // GHASH AAD (separate pass — AAD is typically small)
            let mut acc = ghash_bytes_reflected(aad, h, &self.hash_powers);

            // ── Bulk: 512 bytes at a time — interleaved AES-CTR encrypt + GHASH ──
            let reduced_acc = __m512i::_mm512_castsi128_si512(acc);
            let mut zmm_acc = BulkGhashProducts::ZERO;
            let mut has_products = false;
            let mut prev_ct_ptr: *const u8 = core::ptr::null();
            let mut bulk_ctr = init_bulk_ctr(ctr);
            if inout.len() >= GHASH_BULK_BYTES {
                encrypt_512_no_ghash(&inout, &mut bulk_ctr, &self.rk);
                prev_ct_ptr = inout.writer_ptr();
                inout.advance(GHASH_BULK_BYTES);
            }
            if inout.len() >= GHASH_BULK_BYTES {
                zmm_acc = encrypt_interleaved_512_initial(
                    &inout,
                    prev_ct_ptr,
                    &mut bulk_ctr,
                    &self.rk,
                    &self.hash_powers,
                    reduced_acc,
                );
                has_products = true;
                prev_ct_ptr = inout.writer_ptr();
                inout.advance(GHASH_BULK_BYTES);
            }
            while inout.len() >= GHASH_BULK_BYTES {
                zmm_acc = encrypt_interleaved_512(
                    &inout,
                    prev_ct_ptr,
                    &mut bulk_ctr,
                    &self.rk,
                    &self.hash_powers,
                    zmm_acc,
                );
                prev_ct_ptr = inout.writer_ptr();
                inout.advance(GHASH_BULK_BYTES);
            }

            let mut bulk_lanes = None;
            if !prev_ct_ptr.is_null() {
                bulk_lanes = Some(if has_products {
                    ghash_512(prev_ct_ptr, &self.hash_powers, zmm_acc.reduce())
                } else {
                    ghash_512_from_scalar(prev_ct_ptr, &self.hash_powers, acc)
                });
            }

            let tail_length = inout.len();
            if tail_length >= 40 && !(tail_length <= 144 && tail_length % 64 <= 16) {
                let tail_accumulator = match bulk_lanes.take() {
                    Some(accumulator) => TailGhashAccumulator::Lanes(accumulator),
                    None => TailGhashAccumulator::Scalar(acc),
                };
                acc = encrypt_tail_overshoot_x8(
                    &inout,
                    &mut bulk_ctr,
                    &self.rk,
                    &self.hash_powers,
                    tail_accumulator,
                );
                inout.advance(tail_length);
            } else {
                if let Some(zmm_acc) = bulk_lanes.take() {
                    acc = fold_ghash_lanes(zmm_acc);
                }
                ctr = bulk_ctr._mm512_castsi512_si128().bswap128();
                if tail_length >= 64 {
                    let zmm_length = tail_length / 64 * 64;
                    acc = encrypt_tail_zmm_x1(
                        &mut inout,
                        zmm_length,
                        &mut ctr,
                        &self.rk,
                        &self.hash_powers,
                        acc,
                    );
                }
            }

            // ── Tail: block-by-block encrypt + GHASH ──
            while inout.len() >= BLOCK {
                let pad = ctr.aes128ecb(&self.rk);
                ctr = inc32_be(ctr);
                let pt_block = inout.read_xmm();
                let ct_block = pt_block ^ pad;
                inout.write_xmm(ct_block);
                acc = gf128_mul(acc ^ ct_block.bswap128(), h);
                inout.advance(BLOCK);
            }

            // ── Partial final block ──
            if inout.len() != 0 {
                let remaining = inout.len();
                core::hint::assert_unchecked(remaining < BLOCK);
                let mask: u16 = (1u16 << remaining) - 1;
                let pt_block = inout.read_xmm_masked(mask);
                let pad = ctr.aes128ecb(&self.rk);
                let ct_block = pt_block ^ pad;
                inout.write_xmm_masked(mask, ct_block);
                let ct_for_ghash = __m128i::ZERO._mm_mask_mov_epi8(mask, ct_block);
                acc = gf128_mul(acc ^ ct_for_ghash.bswap128(), h);
            }

            // ── Length block ──
            let len_block = __m128i::_mm_set_epi64x(
                (aad.len() as u64 * 8) as i64,
                (plaintext_len as u64 * 8) as i64,
            );
            acc = gf128_mul(acc ^ len_block, h);

            let ghash = acc.bswap128();
            let tag = ghash ^ ectr0;
            tag._mm_storeu_si128(tag_out.as_mut_ptr());
        }
        true
    }

    /// Decrypt and authenticate ciphertext.
    /// Uses interleaved AES-CTR + GHASH for bulk data.
    pub(crate) fn decrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        mut inout: ReadWriter,
        tag: &[u8; 16],
    ) -> bool {
        if !lengths_are_valid(aad.len(), inout.len()) {
            return false;
        }
        let ciphertext_len = inout.len();
        unsafe {
            let j0 = compute_j0(nonce, self.hash_powers.h, &self.hash_powers);
            let ectr0 = j0.aes128ecb(&self.rk);
            let mut ctr = inc32_be(j0);
            let h = self.hash_powers.h;

            // GHASH AAD
            let mut acc = ghash_bytes_reflected(aad, h, &self.hash_powers);

            // ── Bulk: 512 bytes at a time — interleaved AES-CTR + GHASH ──
            let reduced_acc = __m512i::_mm512_castsi128_si512(acc);
            let mut zmm_acc = BulkGhashProducts::ZERO;
            let mut has_products = false;
            let mut bulk_ctr = init_bulk_ctr(ctr);
            if inout.len() >= GHASH_BULK_BYTES {
                zmm_acc = decrypt_interleaved_512_initial(
                    &inout,
                    &mut bulk_ctr,
                    &self.rk,
                    &self.hash_powers,
                    reduced_acc,
                );
                has_products = true;
                inout.advance(GHASH_BULK_BYTES);
            }
            while inout.len() >= GHASH_BULK_BYTES {
                zmm_acc = decrypt_interleaved_512(
                    &inout,
                    &mut bulk_ctr,
                    &self.rk,
                    &self.hash_powers,
                    zmm_acc,
                );
                inout.advance(GHASH_BULK_BYTES);
            }
            if has_products {
                acc = fold_ghash_lanes(ghash_dot_zmm(zmm_acc.reduce(), self.hash_powers.hkeys4()));
            }

            let tail_length = inout.len();
            if tail_length >= 40 && !(tail_length <= 144 && tail_length % 64 <= 16) {
                acc = decrypt_tail_overshoot_x8(
                    &inout,
                    &mut bulk_ctr,
                    &self.rk,
                    &self.hash_powers,
                    TailGhashAccumulator::Scalar(acc),
                );
                inout.advance(tail_length);
            } else {
                ctr = bulk_ctr._mm512_castsi512_si128().bswap128();
                if tail_length >= 64 {
                    let zmm_length = tail_length / 64 * 64;
                    acc = decrypt_tail_zmm_x1(
                        &mut inout,
                        zmm_length,
                        &mut ctr,
                        &self.rk,
                        &self.hash_powers,
                        acc,
                    );
                }
            }

            // ── Tail: block-by-block GHASH + decrypt ──
            while inout.len() >= BLOCK {
                let ct_block = inout.read_xmm();
                acc = gf128_mul(acc ^ ct_block.bswap128(), h);
                let pad = ctr.aes128ecb(&self.rk);
                ctr = inc32_be(ctr);
                inout.write_xmm(ct_block ^ pad);
                inout.advance(BLOCK);
            }

            // ── Partial final block ──
            if inout.len() != 0 {
                let remaining = inout.len();
                core::hint::assert_unchecked(remaining < BLOCK);
                let mask: u16 = (1u16 << remaining) - 1;
                let ct_block = inout.read_xmm_masked(mask);
                acc = gf128_mul(acc ^ ct_block.bswap128(), h);
                let pad = ctr.aes128ecb(&self.rk);
                let pt_block = ct_block ^ pad;
                inout.write_xmm_masked(mask, pt_block);
            }

            // ── Length block ──
            let aad_bits = (aad.len() as u64) * 8;
            let ct_bits = (ciphertext_len as u64) * 8;
            let len_block = __m128i::_mm_set_epi64x(aad_bits as i64, ct_bits as i64);
            acc = gf128_mul(acc ^ len_block, h);

            // ── Tag verification (constant-time) ──
            let ghash = acc.bswap128();
            let expected_tag = ghash ^ ectr0;
            let given_tag = __m128i::_mm_loadu_si128(tag.as_ptr());
            let diff = expected_tag ^ given_tag;
            if diff._mm_testz_si128(diff) == 0 {
                return false;
            }

            true
        }
    }
}

// ── AES-128 key expansion ─────────────────────────────────────────

unsafe fn aes128_expand_key(key: &[u8; 16], rk: &mut [__m128i; 11]) {
    let mut k = __m128i::_mm_loadu_si128(key.as_ptr());
    rk[0] = k;

    macro_rules! expand {
        ($rcon:expr, $idx:expr) => {{
            let t = k._mm_aeskeygenassist_si128::<$rcon>();
            let t = t._mm_shuffle_epi32::<0xFF>();
            k = k ^ (k._mm_slli_si128::<4>());
            k = k ^ (k._mm_slli_si128::<4>());
            k = k ^ (k._mm_slli_si128::<4>());
            k = k ^ t;
            rk[$idx] = k;
        }};
    }

    expand!(0x01, 1);
    expand!(0x02, 2);
    expand!(0x04, 3);
    expand!(0x08, 4);
    expand!(0x10, 5);
    expand!(0x20, 6);
    expand!(0x40, 7);
    expand!(0x80, 8);
    expand!(0x1B, 9);
    expand!(0x36, 10);
}

// ── __m128i helpers ─────────────────────────────────────────────────

trait Xmm128 {
    fn aes128ecb(self, rk: &[__m128i; 11]) -> Self;
    fn bswap128(self) -> Self;
    fn from_nonce(nonce: &[u8; 12]) -> Self;
}

impl Xmm128 for __m128i {
    #[inline]
    fn aes128ecb(self, rk: &[__m128i; 11]) -> Self {
        let mut s = self ^ rk[0];
        s = s._mm_aesenc_si128(rk[1]);
        s = s._mm_aesenc_si128(rk[2]);
        s = s._mm_aesenc_si128(rk[3]);
        s = s._mm_aesenc_si128(rk[4]);
        s = s._mm_aesenc_si128(rk[5]);
        s = s._mm_aesenc_si128(rk[6]);
        s = s._mm_aesenc_si128(rk[7]);
        s = s._mm_aesenc_si128(rk[8]);
        s = s._mm_aesenc_si128(rk[9]);
        s._mm_aesenclast_si128(rk[10])
    }

    #[inline]
    fn bswap128(self) -> Self {
        let mask = __m128i::_mm_set_epi8(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
        self._mm_shuffle_epi8(mask)
    }

    #[inline]
    fn from_nonce(nonce: &[u8; 12]) -> Self {
        let mut j0 = [0u8; 16];
        j0[..12].copy_from_slice(nonce);
        j0[15] = 1;
        unsafe { __m128i::_mm_loadu_si128(j0.as_ptr()) }
    }
}

/// Compute J0 from a nonce of any length (NIST SP 800-38D §7.1).
unsafe fn compute_j0(nonce: &[u8], h: __m128i, hash_powers: &HashPowers) -> __m128i {
    if nonce.len() == 12 {
        __m128i::from_nonce(nonce.try_into().unwrap())
    } else {
        let mut acc = ghash_bytes_reflected(nonce, h, hash_powers);
        let nonce_bits = (nonce.len() as u64) * 8;
        let len_block = __m128i::_mm_set_epi64x(0, nonce_bits as i64);
        acc = gf128_mul(acc ^ len_block, h);
        acc.bswap128()
    }
}

// ── CTR block generation ────────────────────────────────────────────

fn inc32_be(block: __m128i) -> __m128i {
    let le = block.bswap128();
    let inc = le._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 1));
    inc.bswap128()
}

/// Prepare H for PCLMULQDQ-based GHASH.
fn prepare_h_for_pclmulqdq(h_raw: __m128i) -> __m128i {
    let h = h_raw.bswap128();
    let carry_lo = h._mm_srli_epi64::<63>();
    let h1 = h._mm_slli_epi64::<1>() | carry_lo._mm_slli_si128::<8>();
    let reduction_mask = h._mm_shuffle_epi32::<0xFF>()._mm_srai_epi32::<31>();
    let reduction = __m128i::_mm_set_epi64x(0xC200000000000000u64 as i64, 1);
    h1 ^ (reduction_mask & reduction)
}

// ── GF(2^128) arithmetic (reflected domain) ─────────────────────────

fn gf128_reduce(lo: __m128i, hi: __m128i) -> __m128i {
    let poly = __m128i::_mm_set_epi64x(0xC200000000000000u64 as i64, 0xC200000000000000u64 as i64);
    let t = lo._mm_clmulepi64_si128::<0x10>(poly);
    let lo = lo._mm_shuffle_epi32::<0x4E>();
    let lo = lo ^ t;
    let t = lo._mm_clmulepi64_si128::<0x10>(poly);
    let lo = lo._mm_shuffle_epi32::<0x4E>();
    let lo = lo ^ t;
    hi ^ lo
}

fn gf128_mul(a: __m128i, b: __m128i) -> __m128i {
    let lo = a._mm_clmulepi64_si128::<0x00>(b);
    let hi = a._mm_clmulepi64_si128::<0x11>(b);
    let mid = a._mm_clmulepi64_si128::<0x01>(b) ^ a._mm_clmulepi64_si128::<0x10>(b);
    let lo = lo ^ (mid._mm_slli_si128::<8>());
    let hi = hi ^ (mid._mm_srli_si128::<8>());
    gf128_reduce(lo, hi)
}

// ── ZMM GHASH helpers (8×zmm Karatsuba) ────────────────────────────

pub(crate) fn bswap_zmm(v: __m512i) -> __m512i {
    let mask = __m512i::_mm512_set_epi8(
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
        12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6,
        7, 8, 9, 10, 11, 12, 13, 14, 15,
    );
    v._mm512_shuffle_epi8(mask)
}

fn ghash_reduce_zmm(lo: __m512i, hi: __m512i) -> __m512i {
    let poly = __m512i::_mm512_set1_epi64(0xC200000000000000u64 as i64);
    let t = lo._mm512_clmulepi64_epi128::<0x10>(poly);
    let lo = lo._mm512_shuffle_epi32::<0x4E>() ^ t;
    let t = lo._mm512_clmulepi64_epi128::<0x10>(poly);
    lo._mm512_shuffle_epi32::<0x4E>() ^ (hi ^ t)
}

fn ghash_dot_zmm(a: __m512i, b_bc: __m512i) -> __m512i {
    let lo = a._mm512_clmulepi64_epi128::<0x00>(b_bc);
    let hi = a._mm512_clmulepi64_epi128::<0x11>(b_bc);
    let m1 = a._mm512_clmulepi64_epi128::<0x01>(b_bc);
    let m2 = a._mm512_clmulepi64_epi128::<0x10>(b_bc);
    let mid = m1 ^ m2;
    let lo = lo ^ (mid._mm512_bslli_epi128::<8>());
    let hi = hi ^ (mid._mm512_bsrli_epi128::<8>());
    ghash_reduce_zmm(lo, hi)
}

unsafe fn precompute_hash_powers(h: __m128i) -> HashPowers {
    let h2 = gf128_mul(h, h);
    let h3 = gf128_mul(h2, h);
    let h4 = gf128_mul(h3, h);
    let mut h4n = [__m128i::ZERO; 8];
    h4n[0] = h4;
    for index in 1..h4n.len() {
        h4n[index] = gf128_mul(h4n[index - 1], h4);
    }
    HashPowers { h, h2, h3, h4n }
}

unsafe fn ghash_bytes_reflected(data: &[u8], h: __m128i, hash_powers: &HashPowers) -> __m128i {
    let mut data = data;
    let mut acc = __m128i::ZERO;
    let mut bulk_lanes = __m512i::ZERO;
    let mut had_bulk = false;

    while data.len() >= GHASH_BULK_BYTES {
        bulk_lanes = ghash_512_lanes(data.as_ptr(), hash_powers, bulk_lanes);
        data = &data[GHASH_BULK_BYTES..];
        had_bulk = true;
    }

    if had_bulk {
        acc = fold_ghash_lanes(ghash_dot_zmm(bulk_lanes, hash_powers.hkeys4()));
    }

    let tail_length = data.len();
    if tail_length >= 40 && !(tail_length <= 144 && tail_length % 64 <= 16) {
        acc = ghash_tail_overshoot_x8(data.as_ptr(), tail_length, hash_powers, acc);
        data = &data[tail_length..];
    } else if tail_length >= 64 {
        let zmm_length = tail_length / 64 * 64;
        acc = ghash_tail_zmm_x1(data.as_ptr(), zmm_length, hash_powers, acc);
        data = &data[zmm_length..];
    }

    while data.len() >= BLOCK {
        let block = __m128i::_mm_loadu_si128(data.as_ptr());
        let block_r = block.bswap128();
        acc = gf128_mul(acc ^ block_r, h);
        data = &data[BLOCK..];
    }

    if !data.is_empty() {
        core::hint::assert_unchecked(data.len() < BLOCK);
        let mask: u16 = (1u16 << data.len()) - 1;
        let block = __m128i::ZERO._mm_mask_loadu_epi8(mask, data.as_ptr());
        let block_r = block.bswap128();
        acc = gf128_mul(acc ^ block_r, h);
    }

    acc
}

// ── Encrypt helpers ────────────────────────────────────────────────

pub(crate) fn fold_ghash_lanes(accumulator: __m512i) -> __m128i {
    let t = accumulator._mm512_shuffle_i64x2::<0x4E>(accumulator);
    let a = accumulator ^ t;
    let u = a._mm512_shuffle_i64x2::<0xB1>(a);
    (a ^ u)._mm512_castsi512_si128()
}

fn ghash_zmm_x1(accumulator: __m128i, mut data: __m512i, hkeys4: __m512i) -> __m128i {
    data = data._mm512_mask_xor_epi64(0x03, data, __m512i::_mm512_castsi128_si512(accumulator));
    fold_ghash_lanes(ghash_dot_zmm(data, hkeys4))
}

pub(crate) fn ghash_zmm_blocks(
    mut accumulator: __m128i,
    data: __m512i,
    blocks: usize,
    hkeys4: __m512i,
) -> __m128i {
    if blocks == 4 {
        return ghash_zmm_x1(accumulator, data, hkeys4);
    }
    let h = hkeys4._mm512_extracti32x4_epi32::<3>();
    for lane in 0..blocks {
        let block = match lane {
            0 => data._mm512_castsi512_si128(),
            1 => data._mm512_extracti32x4_epi32::<1>(),
            2 => data._mm512_extracti32x4_epi32::<2>(),
            _ => data._mm512_extracti32x4_epi32::<3>(),
        };
        accumulator = gf128_mul(accumulator ^ block, h);
    }
    accumulator
}

unsafe fn ghash_tail_zmm_x1(
    data: *const u8,
    length: usize,
    hash_powers: &HashPowers,
    mut accumulator: __m128i,
) -> __m128i {
    let groups = length / 64;
    let hkeys4 = hash_powers.hkeys4();
    for group in 0..groups {
        accumulator = ghash_zmm_x1(
            accumulator,
            bswap_zmm(__m512i::_mm512_loadu_si512(data.add(group * 64))),
            hkeys4,
        );
    }
    accumulator
}

unsafe fn build_ctr_zmm(ctr: &mut __m128i) -> __m512i {
    let c0 = ctr.bswap128();
    let c1 = c0._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 1));
    let c2 = c0._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 2));
    let c3 = c0._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 3));
    let lo = __m256i::_mm256_castsi128_si256(c0)._mm256_inserti128_si256::<1>(c1);
    let hi = __m256i::_mm256_castsi128_si256(c2)._mm256_inserti128_si256::<1>(c3);
    *ctr = c3
        ._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 1))
        .bswap128();
    bswap_zmm(__m512i::_mm512_castsi256_si512(lo)._mm512_inserti64x4::<1>(hi))
}

unsafe fn encrypt_tail_zmm_x1(
    inout: &mut ReadWriter,
    length: usize,
    ctr: &mut __m128i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    mut accumulator: __m128i,
) -> __m128i {
    let groups = length / 64;
    let hkeys4 = hash_powers.hkeys4();
    for _ in 0..groups {
        let mut state = build_ctr_zmm(ctr) ^ __m512i::_mm512_broadcast_i32x4(rk[0]);
        for round_key in &rk[1..10] {
            state = state._mm512_aesenc_epi128(__m512i::_mm512_broadcast_i32x4(*round_key));
        }
        let [input] = inout.read_zmms::<1>();
        let output =
            state._mm512_aesenclast_epi128(__m512i::_mm512_broadcast_i32x4(rk[10])) ^ input;
        inout.write_zmms([output]);
        accumulator = ghash_zmm_x1(accumulator, bswap_zmm(output), hkeys4);
        inout.advance(64);
    }
    accumulator
}

unsafe fn decrypt_tail_zmm_x1(
    inout: &mut ReadWriter,
    length: usize,
    ctr: &mut __m128i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    mut accumulator: __m128i,
) -> __m128i {
    let groups = length / 64;
    let hkeys4 = hash_powers.hkeys4();
    for _ in 0..groups {
        let [input] = inout.read_zmms::<1>();
        let mut state = build_ctr_zmm(ctr) ^ __m512i::_mm512_broadcast_i32x4(rk[0]);
        for round_key in &rk[1..10] {
            state = state._mm512_aesenc_epi128(__m512i::_mm512_broadcast_i32x4(*round_key));
        }
        let output =
            state._mm512_aesenclast_epi128(__m512i::_mm512_broadcast_i32x4(rk[10])) ^ input;
        inout.write_zmms([output]);
        accumulator = ghash_zmm_x1(accumulator, bswap_zmm(input), hkeys4);
        inout.advance(64);
    }
    accumulator
}

unsafe fn decrypt_interleaved_512_initial(
    inout: &ReadWriter,
    ctr: &mut __m512i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    reduced_acc: __m512i,
) -> BulkGhashProducts {
    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let k0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut a0 = z0 ^ k0;
    let mut a1 = z1 ^ k0;
    let mut a2 = z2 ^ k0;
    let mut a3 = z3 ^ k0;
    let mut a4 = z4 ^ k0;
    let mut a5 = z5 ^ k0;
    let mut a6 = z6 ^ k0;
    let mut a7 = z7 ^ k0;

    let key = __m512i::_mm512_broadcast_i32x4(rk[1]);
    aes_round_8x(
        key, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
    );
    decrypt_interleaved_512_body(
        inout,
        rk,
        hash_powers,
        reduced_acc,
        true,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
    )
}

unsafe fn decrypt_interleaved_512(
    inout: &ReadWriter,
    ctr: &mut __m512i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    ghash_products: BulkGhashProducts,
) -> BulkGhashProducts {
    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let k0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut a0 = z0 ^ k0;
    let mut a1 = z1 ^ k0;
    let mut a2 = z2 ^ k0;
    let mut a3 = z3 ^ k0;
    let mut a4 = z4 ^ k0;
    let mut a5 = z5 ^ k0;
    let mut a6 = z6 ^ k0;
    let mut a7 = z7 ^ k0;

    let lo = ghash_products.lo ^ ghash_products.mid._mm512_bslli_epi128::<8>();
    let hi = ghash_products.hi ^ ghash_products.mid._mm512_bsrli_epi128::<8>();
    let key = __m512i::_mm512_broadcast_i32x4(rk[1]);
    let reduced_acc = ghash_reduce_with_aes_round(
        lo, hi, key, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
    ) ^ ghash_products.raw;
    decrypt_interleaved_512_body(
        inout,
        rk,
        hash_powers,
        reduced_acc,
        false,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
    )
}

#[allow(clippy::too_many_arguments)]
unsafe fn decrypt_interleaved_512_body(
    inout: &ReadWriter,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    reduced_acc: __m512i,
    initial: bool,
    mut a0: __m512i,
    mut a1: __m512i,
    mut a2: __m512i,
    mut a3: __m512i,
    mut a4: __m512i,
    mut a5: __m512i,
    mut a6: __m512i,
    mut a7: __m512i,
) -> BulkGhashProducts {
    let [c0, c1, c2, c3, c4, c5, c6, c7] = inout.read_zmms::<8>();

    let mut glo = __m512i::ZERO;
    let mut ghi = __m512i::ZERO;
    let mut gmd = __m512i::ZERO;

    macro_rules! aes_ghash_round {
        ($round:expr, $ciphertext:expr, $idx:expr) => {{
            let mut d = bswap_zmm($ciphertext);
            if initial && $idx == 1 {
                d = d._mm512_mask_xor_epi64(0x03, d, reduced_acc);
            }
            let dmd = d ^ d._mm512_shuffle_epi32::<0x4E>();
            let h = __m512i::_mm512_broadcast_i32x4(hash_powers.h4n[7 - $idx]);
            let hmd = h ^ h._mm512_shuffle_epi32::<0x4E>();
            let k = __m512i::_mm512_broadcast_i32x4(rk[$round]);
            let (ll, hh, md) = aes_round_8x_ghash_karatsuba(
                k, d, dmd, h, hmd, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6,
                &mut a7,
            );
            glo ^= ll;
            ghi ^= hh;
            gmd ^= md;
        }};
    }

    aes_ghash_round!(2, c0, 1);
    aes_ghash_round!(3, c1, 2);
    aes_ghash_round!(4, c2, 3);
    aes_ghash_round!(5, c3, 4);
    aes_ghash_round!(6, c4, 5);
    aes_ghash_round!(7, c5, 6);
    aes_ghash_round!(8, c6, 7);

    let raw = bswap_zmm(c7);
    let h32 = __m512i::_mm512_broadcast_i32x4(hash_powers.h4n[7]);
    let carry_mid = reduced_acc ^ reduced_acc._mm512_shuffle_epi32::<0x4E>();
    let h32_mid = h32 ^ h32._mm512_shuffle_epi32::<0x4E>();
    let k = __m512i::_mm512_broadcast_i32x4(rk[9]);
    if initial {
        aes_round_8x(
            k, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
        );
    } else {
        let (ll, hh, md) = aes_round_8x_ghash_karatsuba(
            k,
            reduced_acc,
            carry_mid,
            h32,
            h32_mid,
            &mut a0,
            &mut a1,
            &mut a2,
            &mut a3,
            &mut a4,
            &mut a5,
            &mut a6,
            &mut a7,
        );
        glo ^= ll;
        ghi ^= hh;
        gmd ^= md;
    }

    let kl = __m512i::_mm512_broadcast_i32x4(rk[10]);
    inout.write_zmms([
        a0._mm512_aesenclast_epi128(kl) ^ c0,
        a1._mm512_aesenclast_epi128(kl) ^ c1,
        a2._mm512_aesenclast_epi128(kl) ^ c2,
        a3._mm512_aesenclast_epi128(kl) ^ c3,
        a4._mm512_aesenclast_epi128(kl) ^ c4,
        a5._mm512_aesenclast_epi128(kl) ^ c5,
        a6._mm512_aesenclast_epi128(kl) ^ c6,
        a7._mm512_aesenclast_epi128(kl) ^ c7,
    ]);

    let gmd = gmd ^ (glo ^ ghi);
    BulkGhashProducts {
        lo: glo,
        hi: ghi,
        mid: gmd,
        raw,
    }
}

struct BulkGhashProducts {
    lo: __m512i,
    hi: __m512i,
    mid: __m512i,
    raw: __m512i,
}

impl BulkGhashProducts {
    const ZERO: Self = Self {
        lo: __m512i::ZERO,
        hi: __m512i::ZERO,
        mid: __m512i::ZERO,
        raw: __m512i::ZERO,
    };

    unsafe fn reduce(self) -> __m512i {
        let lo = self.lo ^ self.mid._mm512_bslli_epi128::<8>();
        let hi = self.hi ^ self.mid._mm512_bsrli_epi128::<8>();
        ghash_reduce_zmm(lo, hi) ^ self.raw
    }
}

/// Pure AES-CTR encrypt of 512 bytes (32 blocks), no GHASH.
unsafe fn encrypt_512_no_ghash(inout: &ReadWriter, ctr: &mut __m512i, rk: &[__m128i; 11]) {
    macro_rules! aes_round {
        ($r:expr, $($a:ident),+) => {{
            let k = __m512i::_mm512_broadcast_i32x4(rk[$r]);
            aes_round_8x(k, $(&mut $a),+);
        }};
    }

    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let k0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut a0 = z0 ^ k0;
    let mut a1 = z1 ^ k0;
    let mut a2 = z2 ^ k0;
    let mut a3 = z3 ^ k0;
    let mut a4 = z4 ^ k0;
    let mut a5 = z5 ^ k0;
    let mut a6 = z6 ^ k0;
    let mut a7 = z7 ^ k0;

    aes_round!(1, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(2, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(3, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(4, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(5, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(6, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(7, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(8, a0, a1, a2, a3, a4, a5, a6, a7);
    aes_round!(9, a0, a1, a2, a3, a4, a5, a6, a7);

    let kl = __m512i::_mm512_broadcast_i32x4(rk[10]);
    a0 = a0._mm512_aesenclast_epi128(kl);
    a1 = a1._mm512_aesenclast_epi128(kl);
    a2 = a2._mm512_aesenclast_epi128(kl);
    a3 = a3._mm512_aesenclast_epi128(kl);
    a4 = a4._mm512_aesenclast_epi128(kl);
    a5 = a5._mm512_aesenclast_epi128(kl);
    a6 = a6._mm512_aesenclast_epi128(kl);
    a7 = a7._mm512_aesenclast_epi128(kl);

    let [p0, p1, p2, p3, p4, p5, p6, p7] = inout.read_zmms::<8>();
    inout.write_zmms([
        a0 ^ p0,
        a1 ^ p1,
        a2 ^ p2,
        a3 ^ p3,
        a4 ^ p4,
        a5 ^ p5,
        a6 ^ p6,
        a7 ^ p7,
    ]);
}

/// Encrypt 512 bytes while GHASHing 512 bytes of *previous* ciphertext.
/// AES-128: rounds 1–7 interleaved with GHASH, rounds 8–9 pure, round 10 last.
unsafe fn encrypt_interleaved_512_initial(
    inout: &ReadWriter,
    prev_ct_ptr: *const u8,
    ctr: &mut __m512i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    reduced_acc: __m512i,
) -> BulkGhashProducts {
    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let k0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut a0 = z0 ^ k0;
    let mut a1 = z1 ^ k0;
    let mut a2 = z2 ^ k0;
    let mut a3 = z3 ^ k0;
    let mut a4 = z4 ^ k0;
    let mut a5 = z5 ^ k0;
    let mut a6 = z6 ^ k0;
    let mut a7 = z7 ^ k0;

    let key = __m512i::_mm512_broadcast_i32x4(rk[1]);
    aes_round_8x(
        key, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
    );
    encrypt_interleaved_512_body(
        inout,
        prev_ct_ptr,
        rk,
        hash_powers,
        reduced_acc,
        true,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
    )
}

unsafe fn encrypt_interleaved_512(
    inout: &ReadWriter,
    prev_ct_ptr: *const u8,
    ctr: &mut __m512i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    ghash_products: BulkGhashProducts,
) -> BulkGhashProducts {
    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let k0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut a0 = z0 ^ k0;
    let mut a1 = z1 ^ k0;
    let mut a2 = z2 ^ k0;
    let mut a3 = z3 ^ k0;
    let mut a4 = z4 ^ k0;
    let mut a5 = z5 ^ k0;
    let mut a6 = z6 ^ k0;
    let mut a7 = z7 ^ k0;

    let lo = ghash_products.lo ^ ghash_products.mid._mm512_bslli_epi128::<8>();
    let hi = ghash_products.hi ^ ghash_products.mid._mm512_bsrli_epi128::<8>();
    let key = __m512i::_mm512_broadcast_i32x4(rk[1]);
    let reduced_acc = ghash_reduce_with_aes_round(
        lo, hi, key, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
    ) ^ ghash_products.raw;
    encrypt_interleaved_512_body(
        inout,
        prev_ct_ptr,
        rk,
        hash_powers,
        reduced_acc,
        false,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
    )
}

unsafe fn encrypt_interleaved_512_body(
    inout: &ReadWriter,
    prev_ct_ptr: *const u8,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    reduced_acc: __m512i,
    initial: bool,
    mut a0: __m512i,
    mut a1: __m512i,
    mut a2: __m512i,
    mut a3: __m512i,
    mut a4: __m512i,
    mut a5: __m512i,
    mut a6: __m512i,
    mut a7: __m512i,
) -> BulkGhashProducts {
    let mut glo = __m512i::ZERO;
    let mut ghi = __m512i::ZERO;
    let mut gmd = __m512i::ZERO;

    macro_rules! aes_ghash_round {
        ($round:expr, $off:expr, $idx:expr) => {{
            let mut d = bswap_zmm(__m512i::_mm512_loadu_si512(prev_ct_ptr.add($off)));
            if initial && $off == 0 {
                d = d._mm512_mask_xor_epi64(0x03, d, reduced_acc);
            }
            let dmd = d ^ d._mm512_shuffle_epi32::<0x4E>();
            let h = __m512i::_mm512_broadcast_i32x4(hash_powers.h4n[7 - $idx]);
            let hmd = h ^ h._mm512_shuffle_epi32::<0x4E>();
            let k = __m512i::_mm512_broadcast_i32x4(rk[$round]);
            let (ll, hh, md) = aes_round_8x_ghash_karatsuba(
                k, d, dmd, h, hmd, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6,
                &mut a7,
            );
            glo ^= ll;
            ghi ^= hh;
            gmd ^= md;
        }};
    }

    aes_ghash_round!(2, 0, 1);
    aes_ghash_round!(3, 64, 2);
    aes_ghash_round!(4, 128, 3);
    aes_ghash_round!(5, 192, 4);
    aes_ghash_round!(6, 256, 5);
    aes_ghash_round!(7, 320, 6);
    aes_ghash_round!(8, 384, 7);

    let raw = bswap_zmm(__m512i::_mm512_loadu_si512(prev_ct_ptr.add(448)));

    // Advance the four independent carry lanes by 32 blocks with AES round 9.
    let h32 = __m512i::_mm512_broadcast_i32x4(hash_powers.h4n[7]);
    let carry_mid = reduced_acc ^ reduced_acc._mm512_shuffle_epi32::<0x4E>();
    let h32_mid = h32 ^ h32._mm512_shuffle_epi32::<0x4E>();
    let k = __m512i::_mm512_broadcast_i32x4(rk[9]);
    if initial {
        aes_round_8x(
            k, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
        );
    } else {
        let (ll, hh, md) = aes_round_8x_ghash_karatsuba(
            k,
            reduced_acc,
            carry_mid,
            h32,
            h32_mid,
            &mut a0,
            &mut a1,
            &mut a2,
            &mut a3,
            &mut a4,
            &mut a5,
            &mut a6,
            &mut a7,
        );
        glo ^= ll;
        ghi ^= hh;
        gmd ^= md;
    }

    // Final round (aesenclast)
    let kl = __m512i::_mm512_broadcast_i32x4(rk[10]);
    a0 = a0._mm512_aesenclast_epi128(kl);
    a1 = a1._mm512_aesenclast_epi128(kl);
    a2 = a2._mm512_aesenclast_epi128(kl);
    a3 = a3._mm512_aesenclast_epi128(kl);
    a4 = a4._mm512_aesenclast_epi128(kl);
    a5 = a5._mm512_aesenclast_epi128(kl);
    a6 = a6._mm512_aesenclast_epi128(kl);
    a7 = a7._mm512_aesenclast_epi128(kl);

    // XOR keystream with plaintext, store ciphertext
    let [p0, p1, p2, p3, p4, p5, p6, p7] = inout.read_zmms::<8>();
    inout.write_zmms([
        a0 ^ p0,
        a1 ^ p1,
        a2 ^ p2,
        a3 ^ p3,
        a4 ^ p4,
        a5 ^ p5,
        a6 ^ p6,
        a7 ^ p7,
    ]);

    // Carry Karatsuba products into the next iteration for deferred reduction.
    let gmd = gmd ^ (glo ^ ghi);
    BulkGhashProducts {
        lo: glo,
        hi: ghi,
        mid: gmd,
        raw,
    }
}

/// One AES round on eight independent ZMM states.
pub(crate) unsafe fn aes_round_8x(
    rk: __m512i,
    a0: &mut __m512i,
    a1: &mut __m512i,
    a2: &mut __m512i,
    a3: &mut __m512i,
    a4: &mut __m512i,
    a5: &mut __m512i,
    a6: &mut __m512i,
    a7: &mut __m512i,
) {
    core::arch::asm!(
        "vaesenc {rk}, {a0}, {a0}",
        "vaesenc {rk}, {a1}, {a1}",
        "vaesenc {rk}, {a2}, {a2}",
        "vaesenc {rk}, {a3}, {a3}",
        "vaesenc {rk}, {a4}, {a4}",
        "vaesenc {rk}, {a5}, {a5}",
        "vaesenc {rk}, {a6}, {a6}",
        "vaesenc {rk}, {a7}, {a7}",
        rk = in(zmm_reg) rk.0,
        a0 = inout(zmm_reg) a0.0,
        a1 = inout(zmm_reg) a1.0,
        a2 = inout(zmm_reg) a2.0,
        a3 = inout(zmm_reg) a3.0,
        a4 = inout(zmm_reg) a4.0,
        a5 = inout(zmm_reg) a5.0,
        a6 = inout(zmm_reg) a6.0,
        a7 = inout(zmm_reg) a7.0,
        options(nostack, nomem, att_syntax),
    );
}

unsafe fn aes_round_8x_ghash_karatsuba(
    rk: __m512i,
    data: __m512i,
    data_mid: __m512i,
    hash_key: __m512i,
    hash_key_mid: __m512i,
    a0: &mut __m512i,
    a1: &mut __m512i,
    a2: &mut __m512i,
    a3: &mut __m512i,
    a4: &mut __m512i,
    a5: &mut __m512i,
    a6: &mut __m512i,
    a7: &mut __m512i,
) -> (__m512i, __m512i, __m512i) {
    let mut lo = __m512i::ZERO;
    let mut hi = __m512i::ZERO;
    let mut mid = __m512i::ZERO;
    core::arch::asm!(
        "vaesenc {rk}, {a0}, {a0}",
        "vaesenc {rk}, {a1}, {a1}",
        "vaesenc {rk}, {a2}, {a2}",
        "vaesenc {rk}, {a3}, {a3}",
        "vaesenc {rk}, {a4}, {a4}",
        "vaesenc {rk}, {a5}, {a5}",
        "vaesenc {rk}, {a6}, {a6}",
        "vaesenc {rk}, {a7}, {a7}",
        "vpclmullqlqdq {hash_key}, {data}, {lo}",
        "vpclmulhqhqdq {hash_key}, {data}, {hi}",
        "vpclmullqlqdq {hash_key_mid}, {data_mid}, {mid}",
        rk = in(zmm_reg) rk.0,
        data = in(zmm_reg) data.0,
        data_mid = in(zmm_reg) data_mid.0,
        hash_key = in(zmm_reg) hash_key.0,
        hash_key_mid = in(zmm_reg) hash_key_mid.0,
        a0 = inout(zmm_reg) a0.0,
        a1 = inout(zmm_reg) a1.0,
        a2 = inout(zmm_reg) a2.0,
        a3 = inout(zmm_reg) a3.0,
        a4 = inout(zmm_reg) a4.0,
        a5 = inout(zmm_reg) a5.0,
        a6 = inout(zmm_reg) a6.0,
        a7 = inout(zmm_reg) a7.0,
        lo = out(zmm_reg) lo.0,
        hi = out(zmm_reg) hi.0,
        mid = out(zmm_reg) mid.0,
        options(nostack, nomem, att_syntax),
    );
    (lo, hi, mid)
}

unsafe fn ghash_reduce_with_aes_round(
    glo: __m512i,
    ghi: __m512i,
    rk: __m512i,
    a0: &mut __m512i,
    a1: &mut __m512i,
    a2: &mut __m512i,
    a3: &mut __m512i,
    a4: &mut __m512i,
    a5: &mut __m512i,
    a6: &mut __m512i,
    a7: &mut __m512i,
) -> __m512i {
    let poly = __m512i::_mm512_set1_epi64(0xC200000000000000u64 as i64);
    let mut t = __m512i::ZERO;
    let mut lo2 = __m512i::ZERO;
    let mut result = __m512i::ZERO;
    core::arch::asm!(
        "vpclmulqdq $16, {poly}, {glo}, {t}",
        "vpshufd $0x4e, {glo}, {lo2}",
        "vpxorq {t}, {lo2}, {lo2}",
        "vaesenc {rk}, {a0}, {a0}",
        "vaesenc {rk}, {a1}, {a1}",
        "vaesenc {rk}, {a2}, {a2}",
        "vaesenc {rk}, {a3}, {a3}",
        "vaesenc {rk}, {a4}, {a4}",
        "vaesenc {rk}, {a5}, {a5}",
        "vaesenc {rk}, {a6}, {a6}",
        "vaesenc {rk}, {a7}, {a7}",
        "vpclmulqdq $16, {poly}, {lo2}, {t}",
        "vpshufd $0x4e, {lo2}, {result}",
        "vpternlogq $0x96, {t}, {ghi}, {result}",
        glo = in(zmm_reg) glo.0,
        ghi = in(zmm_reg) ghi.0,
        poly = in(zmm_reg) poly.0,
        rk = in(zmm_reg) rk.0,
        a0 = inout(zmm_reg) a0.0,
        a1 = inout(zmm_reg) a1.0,
        a2 = inout(zmm_reg) a2.0,
        a3 = inout(zmm_reg) a3.0,
        a4 = inout(zmm_reg) a4.0,
        a5 = inout(zmm_reg) a5.0,
        a6 = inout(zmm_reg) a6.0,
        a7 = inout(zmm_reg) a7.0,
        t = out(zmm_reg) t.0,
        lo2 = out(zmm_reg) lo2.0,
        result = out(zmm_reg) result.0,
        options(nostack, nomem, att_syntax),
    );
    result
}

/// GHASH-only pass over 512 bytes (no AES).
unsafe fn ghash_512(ct_ptr: *const u8, hash_powers: &HashPowers, lanes: __m512i) -> __m512i {
    ghash_dot_zmm(
        ghash_512_lanes(ct_ptr, hash_powers, lanes),
        hash_powers.hkeys4(),
    )
}

unsafe fn ghash_512_from_scalar(
    ct_ptr: *const u8,
    hash_powers: &HashPowers,
    acc: __m128i,
) -> __m512i {
    ghash_dot_zmm(
        ghash_512_lanes_inner(
            ct_ptr,
            hash_powers,
            __m512i::ZERO,
            __m512i::_mm512_castsi128_si512(acc),
        ),
        hash_powers.hkeys4(),
    )
}

unsafe fn ghash_512_lanes(ct_ptr: *const u8, hash_powers: &HashPowers, lanes: __m512i) -> __m512i {
    ghash_512_lanes_inner(ct_ptr, hash_powers, lanes, __m512i::ZERO)
}

unsafe fn ghash_512_lanes_inner(
    ct_ptr: *const u8,
    hash_powers: &HashPowers,
    lanes: __m512i,
    first_block_acc: __m512i,
) -> __m512i {
    let h32 = __m512i::_mm512_broadcast_i32x4(hash_powers.h4n[7]);
    let mut glo = lanes._mm512_clmulepi64_epi128::<0x00>(h32);
    let mut ghi = lanes._mm512_clmulepi64_epi128::<0x11>(h32);
    let mut gmd = (lanes ^ lanes._mm512_shuffle_epi32::<0x4E>())
        ._mm512_clmulepi64_epi128::<0x00>(h32 ^ h32._mm512_shuffle_epi32::<0x4E>());

    macro_rules! ghash_block {
        ($off:expr, $idx:expr) => {{
            let mut d = bswap_zmm(__m512i::_mm512_loadu_si512(ct_ptr.add($off)));
            if $off == 0 {
                d ^= first_block_acc;
            }
            let h = __m512i::_mm512_broadcast_i32x4(hash_powers.h4n[7 - $idx]);
            glo ^= (d._mm512_clmulepi64_epi128::<0x00>(h));
            ghi ^= (d._mm512_clmulepi64_epi128::<0x11>(h));
            gmd ^= ((d ^ d._mm512_shuffle_epi32::<0x4E>())
                ._mm512_clmulepi64_epi128::<0x00>((h ^ h._mm512_shuffle_epi32::<0x4E>())));
        }};
    }
    ghash_block!(0, 1);
    ghash_block!(64, 2);
    ghash_block!(128, 3);
    ghash_block!(192, 4);
    ghash_block!(256, 5);
    ghash_block!(320, 6);
    ghash_block!(384, 7);
    let raw = bswap_zmm(__m512i::_mm512_loadu_si512(ct_ptr.add(448)));

    let gmd = gmd ^ (glo ^ ghi);
    let glo = glo ^ (gmd._mm512_bslli_epi128::<8>());
    let ghi = ghi ^ (gmd._mm512_bsrli_epi128::<8>());
    let poly = __m512i::_mm512_set1_epi64(0xC200000000000000u64 as i64);
    let t = glo._mm512_clmulepi64_epi128::<0x10>(poly);
    let lo2 = glo._mm512_shuffle_epi32::<0x4E>() ^ t;
    let t = lo2._mm512_clmulepi64_epi128::<0x10>(poly);
    lo2._mm512_shuffle_epi32::<0x4E>() ^ ghi ^ t ^ raw
}

unsafe fn init_bulk_ctr(ctr: __m128i) -> __m512i {
    let ctr_le = ctr.bswap128();
    let c1 = ctr_le._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 1));
    let c2 = ctr_le._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 2));
    let c3 = ctr_le._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 3));
    let lo = __m256i::_mm256_castsi128_si256(ctr_le)._mm256_inserti128_si256::<1>(c1);
    let hi = __m256i::_mm256_castsi128_si256(c2)._mm256_inserti128_si256::<1>(c3);
    __m512i::_mm512_castsi256_si512(lo)._mm512_inserti64x4::<1>(hi)
}

pub(crate) unsafe fn build_bulk_ctr_zmms(ctr: &mut __m512i) -> [__m512i; 8] {
    let bswap_mask = __m512i::_mm512_set_epi8(
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
        12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6,
        7, 8, 9, 10, 11, 12, 13, 14, 15,
    );
    let z0_le = *ctr;
    macro_rules! add_counter {
        ($increment:expr) => {
            z0_le._mm512_add_epi32(__m512i::_mm512_set_epi32(
                0, 0, 0, $increment, 0, 0, 0, $increment, 0, 0, 0, $increment, 0, 0, 0, $increment,
            ))
        };
    }
    let z1_le = add_counter!(4);
    let z2_le = add_counter!(8);
    let z3_le = add_counter!(12);
    let z4_le = add_counter!(16);
    let z5_le = add_counter!(20);
    let z6_le = add_counter!(24);
    let z7_le = add_counter!(28);
    *ctr = add_counter!(32);
    [
        z0_le._mm512_shuffle_epi8(bswap_mask),
        z1_le._mm512_shuffle_epi8(bswap_mask),
        z2_le._mm512_shuffle_epi8(bswap_mask),
        z3_le._mm512_shuffle_epi8(bswap_mask),
        z4_le._mm512_shuffle_epi8(bswap_mask),
        z5_le._mm512_shuffle_epi8(bswap_mask),
        z6_le._mm512_shuffle_epi8(bswap_mask),
        z7_le._mm512_shuffle_epi8(bswap_mask),
    ]
}

// ── Tests ───────────────────────────────────────────────────────────

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn gcm_length_limits() {
        assert!(lengths_are_valid(MAX_AAD_BYTES, MAX_CRYPT_BYTES));
        assert!(!lengths_are_valid(MAX_AAD_BYTES + 1, 0));
        assert!(!lengths_are_valid(0, MAX_CRYPT_BYTES + 1));
    }

    fn read_writer(reader: &[u8], writer: &mut [u8]) -> ReadWriter {
        unsafe {
            ReadWriter::from_ptrs(
                reader.as_ptr(),
                reader.len(),
                writer.as_mut_ptr(),
                writer.len(),
            )
            .unwrap()
        }
    }

    #[test]
    fn test_wrapper_layout_match() {
        assert_eq!(
            core::mem::size_of::<Aes128Gcm>(),
            core::mem::size_of::<aes128gcm_zen4::Aes128Gcm>(),
        );
        assert_eq!(
            core::mem::align_of::<Aes128Gcm>(),
            core::mem::align_of::<aes128gcm_zen4::Aes128Gcm>(),
        );
    }

    /// NIST GCM Test Case 1 (AES-128)
    /// Key: 0*16, IV: 0*12, PT: empty, AAD: empty
    /// Tag: 58e2fccefa7e3061367f1d57a4e7455a
    #[test]
    fn test_nist_case1_empty() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = [0u8; 16];
        let nonce = [0u8; 12];
        let gcm = Aes128Gcm::new(&key);
        let mut tag = [0u8; 16];
        gcm.encrypt(&nonce, &[], read_writer(&[], &mut []), &mut tag);
        assert_eq!(hex(&tag), "58e2fccefa7e3061367f1d57a4e7455a");
        assert!(gcm.decrypt(&nonce, &[], read_writer(&[], &mut []), &tag));
    }

    /// NIST GCM Test Case 2 (AES-128)
    /// Key: 0*16, IV: 0*12, PT: 0*16
    /// CT: 0388dace60b6a392f328c2b971b2fe78
    /// Tag: ab6e47d42cec13bdf53a67b21257bddf
    #[test]
    fn test_nist_case2_one_block() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = [0u8; 16];
        let nonce = [0u8; 12];
        let pt = [0u8; 16];
        let gcm = Aes128Gcm::new(&key);
        let mut ct = [0u8; 16];
        let mut tag = [0u8; 16];
        gcm.encrypt(&nonce, &[], read_writer(&pt, &mut ct), &mut tag);
        assert_eq!(hex(&ct), "0388dace60b6a392f328c2b971b2fe78", "CT");
        assert_eq!(hex(&tag), "ab6e47d42cec13bdf53a67b21257bddf", "Tag");
        let mut dec = [0u8; 16];
        assert!(gcm.decrypt(&nonce, &[], read_writer(&ct, &mut dec), &tag));
        assert_eq!(&dec[..], &pt[..]);
    }

    /// NIST GCM Test Case 4 (AES-128, 60-byte PT, no AAD)
    #[test]
    fn test_nist_case4() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = hex_decode("feffe9928665731c6d6a8f9467308308");
        let nonce = hex_decode("cafebabefacedbaddecaf888");
        let pt = hex_decode(
            "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255",
        );
        let expected_ct = hex_decode(
            "42831ec2217774244b7221b784d0d49ce3aa212f2c02a4e035c17e2329aca12e21d514b25466931c7d8f6a5aac84aa051ba30b396a0aac973d58e091473f5985",
        );
        let expected_tag = hex_decode("4d5c2af327cd64a62cf35abd2ba6fab4");

        let key16: [u8; 16] = key.try_into().unwrap();
        let nonce12: [u8; 12] = nonce.try_into().unwrap();
        let gcm = Aes128Gcm::new(&key16);

        let mut ct = vec![0u8; pt.len()];
        let mut tag = [0u8; 16];
        gcm.encrypt(&nonce12, &[], read_writer(&pt, &mut ct), &mut tag);
        assert_eq!(hex(&ct), hex(&expected_ct), "CT");
        assert_eq!(hex(&tag), hex(&expected_tag), "Tag");
        let mut dec = vec![0u8; pt.len()];
        assert!(gcm.decrypt(&nonce12, &[], read_writer(&ct, &mut dec), &tag));
        assert_eq!(dec, pt);
    }

    /// NIST GCM Test Case 5 (AES-128 with AAD)
    #[test]
    fn test_nist_case5_with_aad() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = hex_decode("feffe9928665731c6d6a8f9467308308");
        let nonce = hex_decode("cafebabefacedbaddecaf888");
        let pt = hex_decode(
            "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39",
        );
        let aad = hex_decode("feedfacedeadbeeffeedfacedeadbeefabaddad2");
        let expected_ct = hex_decode(
            "42831ec2217774244b7221b784d0d49ce3aa212f2c02a4e035c17e2329aca12e21d514b25466931c7d8f6a5aac84aa051ba30b396a0aac973d58e091",
        );
        let expected_tag = hex_decode("5bc94fbc3221a5db94fae95ae7121a47");

        let key16: [u8; 16] = key.try_into().unwrap();
        let nonce12: [u8; 12] = nonce.try_into().unwrap();
        let gcm = Aes128Gcm::new(&key16);

        let mut ct = vec![0u8; pt.len()];
        let mut tag = [0u8; 16];
        gcm.encrypt(&nonce12, &aad, read_writer(&pt, &mut ct), &mut tag);
        assert_eq!(hex(&ct), hex(&expected_ct), "CT");
        assert_eq!(hex(&tag), hex(&expected_tag), "Tag");
        let mut dec = vec![0u8; pt.len()];
        assert!(gcm.decrypt(&nonce12, &aad, read_writer(&ct, &mut dec), &tag));
        assert_eq!(dec, pt);
        assert!(!gcm.decrypt(&nonce12, b"wrong", read_writer(&ct, &mut dec), &tag));
    }

    #[test]
    fn test_tampered() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = [0x42u8; 16];
        let nonce = [0x01u8; 12];
        let gcm = Aes128Gcm::new(&key);
        let mut ct = vec![0u8; 16];
        let mut tag = [0u8; 16];
        gcm.encrypt(
            &nonce,
            &[],
            read_writer(b"hello world!!!!!", &mut ct),
            &mut tag,
        );
        ct[0] ^= 1;
        let mut out = vec![0u8; 16];
        assert!(!gcm.decrypt(&nonce, &[], read_writer(&ct, &mut out), &tag));
    }

    #[test]
    fn test_various_sizes() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = [0xffu8; 16];
        let nonce = [0xabu8; 12];
        let aad = vec![0x55u8; 100];
        let gcm = Aes128Gcm::new(&key);
        for size in [
            0, 1, 15, 16, 17, 31, 32, 100, 255, 256, 257, 512, 1023, 1024, 4096,
        ] {
            let pt: Vec<u8> = (0u8..=255).cycle().take(size).collect();
            let mut ct = vec![0u8; size];
            let mut tag = [0u8; 16];
            gcm.encrypt(&nonce, &aad, read_writer(&pt, &mut ct), &mut tag);
            let mut dec = vec![0u8; size];
            assert!(
                gcm.decrypt(&nonce, &aad, read_writer(&ct, &mut dec), &tag),
                "decrypt failed for size={}",
                size
            );
            assert_eq!(dec, pt, "round-trip failed for size={}", size);
        }
    }

    /// NIST GCM Test Case 6 (AES-128, 8-byte IV)
    #[test]
    fn test_nist_case6_short_iv() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = hex_decode("feffe9928665731c6d6a8f9467308308");
        let nonce = hex_decode("cafebabefacedbad");
        let pt = hex_decode(
            "d9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39",
        );
        let aad = hex_decode("feedfacedeadbeeffeedfacedeadbeefabaddad2");
        let expected_ct = hex_decode(
            "61353b4c2806934a777ff51fa22a4755699b2a714fcdc6f83766e5f97b6c742373806900e49f24b22b097544d4896b424989b5e1ebac0f07c23f4598",
        );
        let expected_tag = hex_decode("3612d2e79e3b0785561be14aaca2fccb");

        let key16: [u8; 16] = key.try_into().unwrap();
        let gcm = Aes128Gcm::new(&key16);

        let mut ct = vec![0u8; pt.len()];
        let mut tag = [0u8; 16];
        gcm.encrypt(&nonce, &aad, read_writer(&pt, &mut ct), &mut tag);
        assert_eq!(hex(&ct), hex(&expected_ct), "CT");
        assert_eq!(hex(&tag), hex(&expected_tag), "Tag");
        let mut dec = vec![0u8; pt.len()];
        assert!(gcm.decrypt(&nonce, &aad, read_writer(&ct, &mut dec), &tag));
        assert_eq!(dec, pt);
    }

    /// Round-trip with various non-12-byte nonce lengths
    #[test]
    fn test_various_nonce_lengths() {
        if !target_support_x86::is_supported() {
            return;
        }
        let key = [0x42u8; 16];
        let gcm = Aes128Gcm::new(&key);
        for nonce_len in [1, 8, 11, 13, 16, 20, 32, 48, 64, 128, 256] {
            let nonce: Vec<u8> = (0u8..=255).cycle().take(nonce_len).collect();
            let pt = b"The quick brown fox jumps over the lazy dog";
            let aad = b"additional data";
            let mut ct = vec![0u8; pt.len()];
            let mut tag = [0u8; 16];
            gcm.encrypt(&nonce, aad, read_writer(pt, &mut ct), &mut tag);
            let mut dec = vec![0u8; pt.len()];
            assert!(
                gcm.decrypt(&nonce, aad, read_writer(&ct, &mut dec), &tag),
                "round-trip failed for nonce_len={}",
                nonce_len
            );
            assert_eq!(
                &dec[..],
                &pt[..],
                "plaintext mismatch for nonce_len={}",
                nonce_len
            );
        }
    }

    fn hex(data: &[u8]) -> String {
        data.iter().map(|b| format!("{:02x}", b)).collect()
    }

    fn hex_decode(s: &str) -> Vec<u8> {
        (0..s.len())
            .step_by(2)
            .map(|i| u8::from_str_radix(&s[i..i + 2], 16).unwrap())
            .collect()
    }
}
