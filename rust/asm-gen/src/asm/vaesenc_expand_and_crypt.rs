// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes256::Aes256;
use crate::aes256::NUM_ROUNDS;
use crate::block::Block128;

#[inline]
pub fn expand_and_crypt_step<const N: usize>(
    aes: &mut Aes256,
    i: usize,
    even_rcon: &mut Block128,
    blocks: &mut [Block128; N],
) {
    debug_assert!(i >= 2);
    debug_assert!(i < NUM_ROUNDS);
    let keys = [aes[i - 2], aes[i - 1]];
    match i & 0x1 == 0 {
        true => {
            aes[i] = expand_crypt_even(keys, blocks, *even_rcon);
            *even_rcon = even_rcon.left_bitshift64::<1>();
        }
        false => aes[i] = expand_crypt_odd(keys, blocks),
    }
}

#[inline]
pub fn expand_crypt_even<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
    rcon: Block128,
) -> Block128 {
    if cfg!(feature = "avx512f") & cfg!(feature = "avx512vl") {
        expand_crypt_even_avx512(keys, blocks, rcon)
    } else if cfg!(feature = "aes") {
        expand_crypt_even_asm(keys, blocks, rcon)
    } else {
        expand_crypt_even_ref(keys, blocks, rcon)
    }
}

#[inline]
pub fn expand_crypt_odd<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
) -> Block128 {
    if cfg!(feature = "avx512f") & cfg!(feature = "avx512vl") {
        expand_crypt_odd_avx512(keys, blocks)
    } else if cfg!(feature = "aes") {
        expand_crypt_odd_asm(keys, blocks)
    } else {
        expand_crypt_odd_ref(keys, blocks)
    }
}

#[inline]
pub fn expand_crypt_even_ref<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
    rcon: Block128,
) -> Block128 {
    for block in blocks {
        *block = block.aesenc(keys[0]);
    }
    keys[1]
        .shuffle8([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d])
        .aesenclast(rcon)
        ^ keys[0]
        ^ keys[0].left_byteshift::<4>()
        ^ keys[0].left_byteshift::<8>()
        ^ keys[0].left_byteshift::<12>()
}
#[inline]
pub fn expand_crypt_even_asm<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
    rcon: Block128,
) -> Block128 {
    let shuffle = Block128::from([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d]);
    let mut next_key = Block128::zero();
    match N {
        1 => unsafe {
            core::arch::asm!(
                "vaesenc          {key0}, {blk0}, {blk0}",
                "vpslldq $4,      {key0}, {tmp0}",
                "vpslldq $8,      {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpslldq $12,     {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpxor            {key0}, {tmp0}, {tmp0}",
                "vpshufb          {shfl}, {key1}, {key2}",
                "vaesenclast      {rcon}, {key2}, {key2}",
                "vpxor            {tmp0}, {key2}, {key2}",
                rcon =    in(xmm_reg) *rcon,
                shfl =    in(xmm_reg) *shuffle,
                key0 =    in(xmm_reg) *keys[0],
                key1 =    in(xmm_reg) *keys[1],
                key2 =   out(xmm_reg) *next_key,
                tmp0 =   out(xmm_reg) _,
                tmp1 =   out(xmm_reg) _,
                blk0 = inout(xmm_reg) blocks[0].0,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
            next_key
        },
        6 => unsafe {
            core::arch::asm!(
                "vaesenc          {key0}, {blk0}, {blk0}",
                "vaesenc          {key0}, {blk1}, {blk1}",
                "vaesenc          {key0}, {blk2}, {blk2}",
                "vaesenc          {key0}, {blk3}, {blk3}",
                "vaesenc          {key0}, {blk4}, {blk4}",
                "vaesenc          {key0}, {blk5}, {blk5}",
                "vpslldq $4,      {key0}, {tmp0}",
                "vpslldq $8,      {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpslldq $12,     {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpxor            {key0}, {tmp0}, {tmp0}",
                "vpshufb          {shfl}, {key1}, {key2}",
                "vaesenclast      {rcon}, {key2}, {key2}",
                "vpxor            {tmp0}, {key2}, {key2}",
                rcon =    in(xmm_reg) *rcon,
                shfl =    in(xmm_reg) *shuffle,
                key0 =    in(xmm_reg) *keys[0],
                key1 =    in(xmm_reg) *keys[1],
                key2 =   out(xmm_reg) *next_key,
                tmp0 =   out(xmm_reg) _,
                tmp1 =   out(xmm_reg) _,
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
            next_key
        },
        _ => expand_crypt_even_ref(keys, blocks, rcon),
    }
}
#[inline]
pub fn expand_crypt_even_avx512<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
    rcon: Block128,
) -> Block128 {
    let shuffle = Block128::from([0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d, 0x0c0f0e0d]);
    let mut next_key = Block128::zero();
    match N {
        1 => unsafe {
            core::arch::asm!(
                "vaesenc          {key0}, {blk0}, {blk0}",
                "vpslldq $4,      {key0}, {tmp0}",
                "vpslldq $8,      {key0}, {tmp1}",
                "vpslldq $12,     {key0}, {tmp2}",
                "vpternlogq	$150, {tmp0}, {tmp1}, {tmp2}",
                "vpshufb          {shfl}, {key1}, {key2}",
                "vaesenclast      {rcon}, {key2}, {key2}",
                "vpternlogq	$150, {key0}, {tmp2}, {key2}",
                rcon =    in(xmm_reg) *rcon,
                shfl =    in(xmm_reg) *shuffle,
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
            next_key
        },
        6 => unsafe {
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
                rcon =    in(xmm_reg) *rcon,
                shfl =    in(xmm_reg) *shuffle,
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
            next_key
        },
        _ => expand_crypt_even_ref(keys, blocks, rcon),
    }
}

#[inline]
pub fn expand_crypt_odd_ref<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
) -> Block128 {
    for block in blocks {
        *block = block.aesenc(keys[0]);
    }
    keys[1].shuffle32::<0xff>().aesenclast(Block128::zero())
        ^ keys[0]
        ^ keys[0].left_byteshift::<4>()
        ^ keys[0].left_byteshift::<8>()
        ^ keys[0].left_byteshift::<12>()
}

#[inline]
pub fn expand_crypt_odd_asm<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
) -> Block128 {
    let mut next_key = Block128::zero();
    match N {
        1 => unsafe {
            core::arch::asm!(
                "vaesenc          {key0}, {blk0}, {blk0}",
                "vpslldq $4,      {key0}, {tmp0}",
                "vpslldq $8,      {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpslldq $12,     {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpxor            {key0}, {tmp0}, {tmp0}",
                "vpshufd $255,    {key1}, {key2}",
                "vaesenclast      {zero}, {key2}, {key2}",
                "vpxor            {tmp0}, {key2}, {key2}",
                zero =    in(xmm_reg) *Block128::zero(),
                key0 =    in(xmm_reg) *keys[0],
                key1 =    in(xmm_reg) *keys[1],
                key2 =   out(xmm_reg) *next_key,
                tmp0 =   out(xmm_reg) _,
                tmp1 =   out(xmm_reg) _,
                blk0 = inout(xmm_reg) blocks[0].0,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
            next_key
        },
        6 => unsafe {
            core::arch::asm!(
                "vaesenc          {key0}, {blk0}, {blk0}",
                "vaesenc          {key0}, {blk1}, {blk1}",
                "vaesenc          {key0}, {blk2}, {blk2}",
                "vaesenc          {key0}, {blk3}, {blk3}",
                "vaesenc          {key0}, {blk4}, {blk4}",
                "vaesenc          {key0}, {blk5}, {blk5}",
                "vpslldq $4,      {key0}, {tmp0}",
                "vpslldq $8,      {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpslldq $12,     {key0}, {tmp1}",
                "vpxor            {tmp1}, {tmp0}, {tmp0}",
                "vpxor            {key0}, {tmp0}, {tmp0}",
                "vpshufd $255,    {key1}, {key2}",
                "vaesenclast      {zero}, {key2}, {key2}",
                "vpxor            {tmp0}, {key2}, {key2}",
                zero =    in(xmm_reg) *Block128::zero(),
                key0 =    in(xmm_reg) *keys[0],
                key1 =    in(xmm_reg) *keys[1],
                key2 =   out(xmm_reg) *next_key,
                tmp0 =   out(xmm_reg) _,
                tmp1 =   out(xmm_reg) _,
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
            next_key
        },
        _ => expand_crypt_odd_ref(keys, blocks),
    }
}

#[inline]
pub fn expand_crypt_odd_avx512<const N: usize>(
    keys: [Block128; 2],
    blocks: &mut [Block128; N],
) -> Block128 {
    let mut next_key = Block128::zero();
    match N {
        1 => unsafe {
            core::arch::asm!(
                "vaesenc          {key0}, {blk0}, {blk0}",
                "vpslldq $4,      {key0}, {tmp0}",
                "vpslldq $8,      {key0}, {tmp1}",
                "vpslldq $12,     {key0}, {tmp2}",
                "vpternlogq	$150, {tmp0}, {tmp1}, {tmp2}",
                "vpshufd $255,    {key1}, {key2}",
                "vaesenclast      {zero}, {key2}, {key2}",
                "vpternlogq	$150, {key0}, {tmp2}, {key2}",
                zero =    in(xmm_reg) *Block128::zero(),
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
            next_key
        },
        6 => unsafe {
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
                zero =    in(xmm_reg) *Block128::zero(),
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
            next_key
        },
        _ => expand_crypt_odd_ref(keys, blocks),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_expand_crypt() {
        fn compare<const N: usize>() {
            for _i in 0..128 {
                let blocks: [Block128; N] = core::array::from_fn(|_| Block128::random());
                let keys = [Block128::random(), Block128::random()];
                let rcon = Block128::random();
                {
                    let mut ref_blocks = blocks;
                    let mut asm_blocks = blocks;
                    assert_eq!(
                        expand_crypt_even_ref(keys, &mut ref_blocks, rcon),
                        expand_crypt_even_asm(keys, &mut asm_blocks, rcon)
                    );
                    assert_eq!(ref_blocks, asm_blocks);
                }
                {
                    let mut ref_blocks = blocks;
                    let mut asm_blocks = blocks;
                    assert_eq!(
                        expand_crypt_odd_ref(keys, &mut ref_blocks),
                        expand_crypt_odd_asm(keys, &mut asm_blocks)
                    );
                    assert_eq!(ref_blocks, asm_blocks);
                }
                if cpuid::AVX512F.is_supported() {
                    let mut ref_blocks = blocks;
                    let mut avx512_blocks = blocks;
                    assert_eq!(
                        expand_crypt_even_ref(keys, &mut ref_blocks, rcon),
                        expand_crypt_even_avx512(keys, &mut avx512_blocks, rcon)
                    );
                    assert_eq!(ref_blocks, avx512_blocks);
                }
                if cpuid::AVX512F.is_supported() {
                    let mut ref_blocks = blocks;
                    let mut avx512_blocks = blocks;
                    assert_eq!(
                        expand_crypt_odd_ref(keys, &mut ref_blocks),
                        expand_crypt_odd_avx512(keys, &mut avx512_blocks)
                    );
                    assert_eq!(ref_blocks, avx512_blocks);
                }
            }
        }
        compare::<1>();
        compare::<6>();
    }

    #[test]
    fn compare_reference_impl() {
        if !cpuid::skylake().is_supported() {
            return;
        }
        fn compare_reference_impl<const N: usize>() {
            let mut aes: Aes256 = random::array().into();
            let mut blocks = [(); N].map(|_| Block128::random());
            let expected_blocks = aes.encrypt(blocks);

            let mut rcon = Block128::from([1, 1, 1, 1]);
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
