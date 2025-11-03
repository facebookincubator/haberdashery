// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod aes256;

use crate::block::Block128;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct AesRoundKeys<const R: usize>([Block128; R]);
impl<const R: usize> Default for AesRoundKeys<R> {
    #[inline]
    fn default() -> Self {
        Self([Block128::ZERO; R])
    }
}

#[allow(unused)]
impl<const R: usize> AesRoundKeys<R> {
    // for i < R - 2
    #[inline(always)]
    pub fn encrypt_round(&self, item: &mut impl AesRoundInput, i: usize) {
        item.encrypt_round(self, i);
    }

    #[inline(always)]
    pub fn encrypt_round_second_last(&self, item: &mut impl AesRoundInput) {
        item.encrypt_round_second_last(self);
    }

    #[inline(always)]
    pub fn encrypt_round_last(&self, item: &mut impl AesRoundInput) {
        item.encrypt_round_last(self);
    }
}

impl<const R: usize> From<[Block128; R]> for AesRoundKeys<R> {
    #[inline(always)]
    fn from(v: [Block128; R]) -> Self {
        Self(v)
    }
}

impl<const R: usize> core::ops::Index<usize> for AesRoundKeys<R> {
    type Output = Block128;
    #[inline(always)]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}

impl<const R: usize> core::ops::IndexMut<usize> for AesRoundKeys<R> {
    #[inline(always)]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

pub trait AesRoundInput {
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize);
    fn encrypt_round_second_last<const R: usize>(&mut self, key: &AesRoundKeys<R>);
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>);
}

impl AesRoundInput for Block128 {
    // for i < R - 2
    #[inline(always)]
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize) {
        *self = self.aesenc(key[i]);
        *self = self.aesmc();
    }

    #[inline(always)]
    fn encrypt_round_second_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        *self = self.aesenc(key[R - 2]);
    }

    #[inline(always)]
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        *self ^= key[R - 1];
    }
}

impl<const N: usize> AesRoundInput for [Block128; N] {
    #[inline(always)]
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize) {
        match N {
            #[cfg(feature = "aes")]
            8 => {
                unsafe {
                    core::arch::asm!(
                        "aese  {blk0:v}.16b, {key:v}.16b",
                        "aesmc {blk0:v}.16b, {blk0:v}.16b",
                        "aese  {blk1:v}.16b, {key:v}.16b",
                        "aesmc {blk1:v}.16b, {blk1:v}.16b",
                        "aese  {blk2:v}.16b, {key:v}.16b",
                        "aesmc {blk2:v}.16b, {blk2:v}.16b",
                        "aese  {blk3:v}.16b, {key:v}.16b",
                        "aesmc {blk3:v}.16b, {blk3:v}.16b",
                        "aese  {blk4:v}.16b, {key:v}.16b",
                        "aesmc {blk4:v}.16b, {blk4:v}.16b",
                        "aese  {blk5:v}.16b, {key:v}.16b",
                        "aesmc {blk5:v}.16b, {blk5:v}.16b",
                        "aese  {blk6:v}.16b, {key:v}.16b",
                        "aesmc {blk6:v}.16b, {blk6:v}.16b",
                        "aese  {blk7:v}.16b, {key:v}.16b",
                        "aesmc {blk7:v}.16b, {blk7:v}.16b",
                        key =     in(vreg)  key[i].0,
                        blk0 = inout(vreg) self[0].0,
                        blk1 = inout(vreg) self[1].0,
                        blk2 = inout(vreg) self[2].0,
                        blk3 = inout(vreg) self[3].0,
                        blk4 = inout(vreg) self[4].0,
                        blk5 = inout(vreg) self[5].0,
                        blk6 = inout(vreg) self[6].0,
                        blk7 = inout(vreg) self[7].0,
                        options(
                            nomem,
                            nostack,
                            preserves_flags,
                            pure,
                        ),
                    )
                };
            }
            _ => {
                self.iter_mut().for_each(|b| b.encrypt_round(key, i));
            }
        }
    }
    #[inline(always)]
    fn encrypt_round_second_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        self.iter_mut()
            .for_each(|b| b.encrypt_round_second_last(key));
    }
    #[inline(always)]
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        self.iter_mut().for_each(|b| b.encrypt_round_last(key));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn fips197() {
        // FIPS 197, Apendix B: 10 rounds
        let mut input = Block128::from_hex("3243f6a8885a308d313198a2e0370734").unwrap();
        let roundkeys = AesRoundKeys([
            Block128::from_hex("2b7e151628aed2a6abf7158809cf4f3c").unwrap(), // key
            Block128::from_hex("a0fafe1788542cb123a339392a6c7605").unwrap(), // subkey 1
            Block128::from_hex("f2c295f27a96b9435935807a7359f67f").unwrap(), // subkey 2
            Block128::from_hex("3d80477d4716fe3e1e237e446d7a883b").unwrap(), // subkey 3
            Block128::from_hex("ef44a541a8525b7fb671253bdb0bad00").unwrap(), // subkey 4
            Block128::from_hex("d4d1c6f87c839d87caf2b8bc11f915bc").unwrap(), // subkey 5
            Block128::from_hex("6d88a37a110b3efddbf98641ca0093fd").unwrap(), // subkey 6
            Block128::from_hex("4e54f70e5f5fc9f384a64fb24ea6dc4f").unwrap(), // subkey 7
            Block128::from_hex("ead27321b58dbad2312bf5607f8d292f").unwrap(), // subkey 8
            Block128::from_hex("ac7766f319fadc2128d12941575c006e").unwrap(), // subkey 9
            Block128::from_hex("d014f9a8c9ee2589e13f0cc8b6630ca6").unwrap(), // subkey 10
        ]);
        // round 1 - 8
        for i in 0..9 {
            input.encrypt_round(&roundkeys, i);
        }
        // round 9
        input.encrypt_round_second_last(&roundkeys);
        // round 10
        input.encrypt_round_last(&roundkeys);

        assert_eq!(input, "3925841d02dc09fbdc118597196a0b32");
    }
}
