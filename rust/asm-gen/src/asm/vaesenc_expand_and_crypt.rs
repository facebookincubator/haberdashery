// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256::Aes256;
use crate::aes256::NUM_ROUNDS;
use crate::intrinsics::m128i::M128i;

#[inline(always)]
pub fn expand_and_crypt_step<const N: usize>(
    aes: &mut Aes256,
    i: usize,
    even_rcon: &mut M128i,
    blocks: &mut [M128i; N],
) {
    debug_assert!(i >= 2);
    debug_assert!(i < NUM_ROUNDS);
    let keys = [aes[i - 2], aes[i - 1]];
    aes[i] = match i & 0x1 == 0 {
        true => expand_and_crypt_step_even(keys, even_rcon, blocks),
        false => expand_and_crypt_step_odd(keys, blocks),
    }
}

#[inline(always)]
pub fn expand_and_crypt_step_even<const N: usize>(
    keys: [M128i; 2],
    even_rcon: &mut M128i,
    blocks: &mut [M128i; N],
) -> M128i {
    match N {
        1 => expand_step_crypt1_even(keys, even_rcon, blocks),
        6 => expand_step_crypt6_even(keys, even_rcon, blocks),
        _ => unimplemented!(),
    }
}

#[inline(always)]
pub fn expand_and_crypt_step_odd<const N: usize>(
    keys: [M128i; 2],
    blocks: &mut [M128i; N],
) -> M128i {
    match N {
        1 => expand_step_crypt1_odd(keys, blocks),
        6 => expand_step_crypt6_odd(keys, blocks),
        _ => unimplemented!(),
    }
}

#[inline(always)]
fn expand_step_crypt1_even<const N: usize>(
    keys: [M128i; 2],
    even_rcon: &mut M128i,
    blocks: &mut [M128i; N],
) -> M128i {
    debug_assert_eq!(N, 1);
    let mut next_key = M128i::zero();

    let even_shuffle = M128i::from([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d]);
    unsafe {
        core::arch::asm!(
            "vaesenc          {key0}, {blk0}, {blk0}",
            "vpslldq $4,      {key0}, {tmp0}",
            "vpslldq $8,      {key0}, {tmp1}",
            "vpslldq $12,     {key0}, {tmp2}",
            "vpternlogq	$150, {tmp0}, {tmp1}, {tmp2}",
            "vpshufb          {shfl}, {key1}, {key2}",
            "vaesenclast      {rcon}, {key2}, {key2}",
            "vpternlogq	$150, {key0}, {tmp2}, {key2}",
            rcon =    in(xmm_reg) **even_rcon,
            shfl =    in(xmm_reg) *even_shuffle,
            key0 =    in(xmm_reg) *keys[0],
            key1 =    in(xmm_reg) *keys[1],
            key2 =   out(xmm_reg) *next_key,
            tmp0 =   out(xmm_reg) _,
            tmp1 =   out(xmm_reg) _,
            tmp2 =   out(xmm_reg) _,
            blk0 = inout(xmm_reg) blocks[0].0,
            options(
                att_syntax,
                nomem,
                nostack,
                preserves_flags,
                pure,
            ),
        );
    }
    *even_rcon = even_rcon.left_bitshift64::<1>();
    next_key
}
#[inline(always)]
fn expand_step_crypt1_odd<const N: usize>(keys: [M128i; 2], blocks: &mut [M128i; N]) -> M128i {
    debug_assert_eq!(N, 1);
    let mut next_key = M128i::zero();
    unsafe {
        core::arch::asm!(
            "vaesenc          {key0}, {blk0}, {blk0}",
            "vpslldq $4,      {key0}, {tmp0}",
            "vpslldq $8,      {key0}, {tmp1}",
            "vpslldq $12,     {key0}, {tmp2}",
            "vpternlogq	$150, {tmp0}, {tmp1}, {tmp2}",
            "vpshufd $255,    {key1}, {key2}",
            "vaesenclast      {zero}, {key2}, {key2}",
            "vpternlogq	$150, {key0}, {tmp2}, {key2}",
            zero =    in(xmm_reg) *M128i::zero(),
            key0 =    in(xmm_reg) *keys[0],
            key1 =    in(xmm_reg) *keys[1],
            key2 =   out(xmm_reg) *next_key,
            tmp0 =   out(xmm_reg) _,
            tmp1 =   out(xmm_reg) _,
            tmp2 =   out(xmm_reg) _,
            blk0 = inout(xmm_reg) blocks[0].0,
            options(
                att_syntax,
                nomem,
                nostack,
                preserves_flags,
                pure,
            ),
        );
    }
    next_key
}
#[inline(always)]
fn expand_step_crypt6_even<const N: usize>(
    keys: [M128i; 2],
    even_rcon: &mut M128i,
    blocks: &mut [M128i; N],
) -> M128i {
    debug_assert_eq!(N, 6);
    let mut next_key = M128i::zero();

    let even_shuffle = M128i::from([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d]);
    unsafe {
        core::arch::asm!(
            "vaesenc          {key0}, {blk0}, {blk0}",
            "vaesenc          {key0}, {blk1}, {blk1}",
            "vaesenc          {key0}, {blk2}, {blk2}",
            "vaesenc          {key0}, {blk3}, {blk3}",
            "vaesenc          {key0}, {blk4}, {blk4}",
            "vaesenc          {key0}, {blk5}, {blk5}",
            "vpslldq $4,      {key0}, {tmp0}",
            "vpslldq $8,      {key0}, {tmp1}",
            "vpslldq $12,     {key0}, {tmp2}",
            "vpternlogq	$150, {tmp0}, {tmp1}, {tmp2}",
            "vpshufb          {shfl}, {key1}, {key2}",
            "vaesenclast      {rcon}, {key2}, {key2}",
            "vpternlogq	$150, {key0}, {tmp2}, {key2}",
            rcon =    in(xmm_reg) **even_rcon,
            shfl =    in(xmm_reg) *even_shuffle,
            key0 =    in(xmm_reg) *keys[0],
            key1 =    in(xmm_reg) *keys[1],
            key2 =   out(xmm_reg) *next_key,
            tmp0 =   out(xmm_reg) _,
            tmp1 =   out(xmm_reg) _,
            tmp2 =   out(xmm_reg) _,
            blk0 = inout(xmm_reg) blocks[0].0,
            blk1 = inout(xmm_reg) blocks[1].0,
            blk2 = inout(xmm_reg) blocks[2].0,
            blk3 = inout(xmm_reg) blocks[3].0,
            blk4 = inout(xmm_reg) blocks[4].0,
            blk5 = inout(xmm_reg) blocks[5].0,
            options(
                att_syntax,
                nomem,
                nostack,
                preserves_flags,
                pure,
            ),
        );
    }
    *even_rcon = even_rcon.left_bitshift64::<1>();
    next_key
}
#[inline(always)]
fn expand_step_crypt6_odd<const N: usize>(keys: [M128i; 2], blocks: &mut [M128i; N]) -> M128i {
    debug_assert_eq!(N, 6);
    let mut next_key = M128i::zero();
    unsafe {
        core::arch::asm!(
            "vaesenc          {key0}, {blk0}, {blk0}",
            "vaesenc          {key0}, {blk1}, {blk1}",
            "vaesenc          {key0}, {blk2}, {blk2}",
            "vaesenc          {key0}, {blk3}, {blk3}",
            "vaesenc          {key0}, {blk4}, {blk4}",
            "vaesenc          {key0}, {blk5}, {blk5}",
            "vpslldq $4,      {key0}, {tmp0}",
            "vpslldq $8,      {key0}, {tmp1}",
            "vpslldq $12,     {key0}, {tmp2}",
            "vpternlogq	$150, {tmp0}, {tmp1}, {tmp2}",
            "vpshufd $255,    {key1}, {key2}",
            "vaesenclast      {zero}, {key2}, {key2}",
            "vpternlogq	$150, {key0}, {tmp2}, {key2}",
            zero =    in(xmm_reg) *M128i::zero(),
            key0 =    in(xmm_reg) *keys[0],
            key1 =    in(xmm_reg) *keys[1],
            key2 =   out(xmm_reg) *next_key,
            tmp0 =   out(xmm_reg) _,
            tmp1 =   out(xmm_reg) _,
            tmp2 =   out(xmm_reg) _,
            blk0 = inout(xmm_reg) blocks[0].0,
            blk1 = inout(xmm_reg) blocks[1].0,
            blk2 = inout(xmm_reg) blocks[2].0,
            blk3 = inout(xmm_reg) blocks[3].0,
            blk4 = inout(xmm_reg) blocks[4].0,
            blk5 = inout(xmm_reg) blocks[5].0,
            options(
                att_syntax,
                nomem,
                nostack,
                preserves_flags,
                pure,
            ),
        );
    }
    next_key
}
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn compare_reference_impl() {
        if !cpuid::has_skylake_support() {
            return;
        }
        fn compare_reference_impl<const N: usize>() {
            let mut aes: Aes256 = random::array().into();
            let mut blocks = [(); N].map(|_| M128i::random());
            let expected_blocks = aes.encrypt(blocks);

            let mut rcon = M128i::from([1, 1, 1, 1]);
            aes.encrypt_round_first(&mut blocks);
            aes.expand_step_aesenclast::<2>(&mut rcon);
            for i in 3..NUM_ROUNDS {
                let expected_key = aes[i];
                expand_and_crypt_step(&mut aes, i, &mut rcon, &mut blocks);
                assert_eq!(expected_key, aes[i]);
            }
            aes.encrypt_round(&mut blocks, 13);
            aes.encrypt_round_last(&mut blocks);
            assert_eq!(expected_blocks, blocks);
        }
        for _i in 0..128 {
            compare_reference_impl::<1>();
            compare_reference_impl::<6>();
        }
    }
}
