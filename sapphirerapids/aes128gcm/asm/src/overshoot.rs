// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use intrinsics_x86_64::*;

use crate::aes128gcm::HashPowers;
use crate::aes128gcm::aes_round_8x;
use crate::aes128gcm::bswap_zmm;
use crate::aes128gcm::build_bulk_ctr_zmms;
use crate::aes128gcm::fold_ghash_lanes;
use crate::aes128gcm::ghash_zmm_blocks;
use crate::io::ReadWriter;

pub(crate) enum TailGhashAccumulator {
    Scalar(__m128i),
    Lanes(__m512i),
}

pub(crate) unsafe fn ghash_tail_overshoot_x8(
    data: *const u8,
    length: usize,
    hash_powers: &HashPowers,
    mut accumulator: __m128i,
) -> __m128i {
    let blocks = length.div_ceil(16);
    let hkeys4 = hash_powers.hkeys4();
    for group in 0..8 {
        let offset = group * 64;
        let bytes = length.saturating_sub(offset).min(64);
        let group_blocks = blocks.saturating_sub(group * 4).min(4);
        if group_blocks == 0 {
            break;
        }
        let mask = if bytes == 64 {
            u64::MAX
        } else {
            (1u64 << bytes) - 1
        };
        let ptr = if bytes == 0 { data } else { data.add(offset) };
        let input = __m512i::_mm512_maskz_loadu_epi8(mask, ptr);
        accumulator = ghash_zmm_blocks(accumulator, bswap_zmm(input), group_blocks, hkeys4);
    }
    accumulator
}

pub(crate) unsafe fn encrypt_tail_overshoot_x8(
    inout: &ReadWriter,
    ctr: &mut __m512i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    accumulator: TailGhashAccumulator,
) -> __m128i {
    let length = inout.len();
    let blocks = length.div_ceil(16);
    let mut accumulator = match accumulator {
        TailGhashAccumulator::Scalar(accumulator) => accumulator,
        TailGhashAccumulator::Lanes(accumulator) => fold_ghash_lanes(accumulator),
    };
    let hkeys4 = hash_powers.hkeys4();
    let counter_start = *ctr;
    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let key0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut a0 = z0 ^ key0;
    let mut a1 = z1 ^ key0;
    let mut a2 = z2 ^ key0;
    let mut a3 = z3 ^ key0;
    let mut a4 = z4 ^ key0;
    let mut a5 = z5 ^ key0;
    let mut a6 = z6 ^ key0;
    let mut a7 = z7 ^ key0;
    for round_key in &rk[1..10] {
        let key = __m512i::_mm512_broadcast_i32x4(*round_key);
        aes_round_8x(
            key, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5, &mut a6, &mut a7,
        );
    }
    let last = __m512i::_mm512_broadcast_i32x4(rk[10]);
    for (group, state) in [a0, a1, a2, a3, a4, a5, a6, a7].into_iter().enumerate() {
        let offset = group * 64;
        let bytes = length.saturating_sub(offset).min(64);
        if bytes == 0 {
            break;
        }
        let mask = if bytes == 64 {
            u64::MAX
        } else {
            (1u64 << bytes) - 1
        };
        let input = inout.read_zmm_masked(offset, mask);
        let output = (state._mm512_aesenclast_epi128(last) ^ input)._mm512_maskz_mov_epi8(mask);
        inout.write_zmm_masked(offset, mask, output);
        accumulator = ghash_zmm_blocks(
            accumulator,
            bswap_zmm(output),
            blocks.saturating_sub(group * 4).min(4),
            hkeys4,
        );
    }
    *ctr = advance_bulk_ctr(counter_start, blocks);
    accumulator
}

pub(crate) unsafe fn decrypt_tail_overshoot_x8(
    inout: &ReadWriter,
    ctr: &mut __m512i,
    rk: &[__m128i; 11],
    hash_powers: &HashPowers,
    accumulator: TailGhashAccumulator,
) -> __m128i {
    let length = inout.len();
    let blocks = length.div_ceil(16);
    let mut accumulator = match accumulator {
        TailGhashAccumulator::Scalar(accumulator) => accumulator,
        TailGhashAccumulator::Lanes(accumulator) => fold_ghash_lanes(accumulator),
    };
    let hkeys4 = hash_powers.hkeys4();
    let counter_start = *ctr;
    let [z0, z1, z2, z3, z4, z5, z6, z7] = build_bulk_ctr_zmms(ctr);
    let key0 = __m512i::_mm512_broadcast_i32x4(rk[0]);
    let mut states = [
        z0 ^ key0,
        z1 ^ key0,
        z2 ^ key0,
        z3 ^ key0,
        z4 ^ key0,
        z5 ^ key0,
        z6 ^ key0,
        z7 ^ key0,
    ];
    for round_key in &rk[1..10] {
        let key = __m512i::_mm512_broadcast_i32x4(*round_key);
        let [a0, a1, a2, a3, a4, a5, a6, a7] = &mut states;
        aes_round_8x(key, a0, a1, a2, a3, a4, a5, a6, a7);
    }
    let last = __m512i::_mm512_broadcast_i32x4(rk[10]);
    for (group, state) in states.into_iter().enumerate() {
        let offset = group * 64;
        let bytes = length.saturating_sub(offset).min(64);
        if bytes == 0 {
            break;
        }
        let mask = if bytes == 64 {
            u64::MAX
        } else {
            (1u64 << bytes) - 1
        };
        let input = inout.read_zmm_masked(offset, mask);
        let output = (state._mm512_aesenclast_epi128(last) ^ input)._mm512_maskz_mov_epi8(mask);
        inout.write_zmm_masked(offset, mask, output);
        accumulator = ghash_zmm_blocks(
            accumulator,
            bswap_zmm(input),
            blocks.saturating_sub(group * 4).min(4),
            hkeys4,
        );
    }
    *ctr = advance_bulk_ctr(counter_start, blocks);
    accumulator
}

unsafe fn advance_bulk_ctr(ctr: __m512i, blocks: usize) -> __m512i {
    // `ctr` holds big-endian counters; advance exactly via little-endian.
    let blocks = blocks as i32;
    bswap_zmm(bswap_zmm(ctr)._mm512_add_epi32(__m512i::_mm512_set_epi32(
        0, 0, 0, blocks, 0, 0, 0, blocks, 0, 0, 0, blocks, 0, 0, 0, blocks,
    )))
}
