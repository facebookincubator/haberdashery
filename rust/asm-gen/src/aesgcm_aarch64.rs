// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::aes256::Aes256;
use crate::aes::aes256::Aes256EncryptState;
use crate::aes::aes256::NUM_ROUNDS;
use crate::block::Block128;
use crate::clmul::clmul128foil::ClMul128FoilState;

pub struct Aes256ClMul128FoilState<const N: usize> {
    aes: Aes256EncryptState<[Block128; N]>,
    clmul: ClMul128FoilState<N>,
}
impl<const N: usize> Aes256ClMul128FoilState<N> {
    #[inline]
    pub fn new(
        aes: Aes256,
        crypt_data: [Block128; N],
        auth_state: Block128,
        lhs: [Block128; N],
        rhs: [Block128; N],
    ) -> Self {
        let aes = Aes256EncryptState::new(aes, crypt_data);
        let clmul = ClMul128FoilState::new(auth_state, lhs, rhs);
        Self { aes, clmul }
    }
    #[inline]
    #[track_caller]
    pub fn asm_round(&mut self) {
        debug_assert!(
            self.aes.index < NUM_ROUNDS - 2,
            "{} >= {}",
            self.aes.index,
            NUM_ROUNDS - 2,
        );
        debug_assert!(self.clmul.index < N, "{} >= {N}", self.clmul.index,);
        match N {
            8 => {
                use core::arch::aarch64::*;

                let key = self.aes.advance();
                let (lhs, rhs) = self.clmul.advance();
                let swap = rhs.swap_lanes64();
                let mut data = self.aes.get_data();

                let lo: uint8x16_t;
                let hi: uint8x16_t;
                let mut mid = self.clmul.product.mid;
                unsafe {
                    core::arch::asm!(
                        "aese  {data0:v}.16b, {key:v}.16b",
                        "aesmc {data0:v}.16b, {data0:v}.16b",
                        "aese  {data1:v}.16b, {key:v}.16b",
                        "aesmc {data1:v}.16b, {data1:v}.16b",
                        "aese  {data2:v}.16b, {key:v}.16b",
                        "aesmc {data2:v}.16b, {data2:v}.16b",
                        "aese  {data3:v}.16b, {key:v}.16b",
                        "aesmc {data3:v}.16b, {data3:v}.16b",
                        "aese  {data4:v}.16b, {key:v}.16b",
                        "aesmc {data4:v}.16b, {data4:v}.16b",
                        "aese  {data5:v}.16b, {key:v}.16b",
                        "aesmc {data5:v}.16b, {data5:v}.16b",
                        "aese  {data6:v}.16b, {key:v}.16b",
                        "aesmc {data6:v}.16b, {data6:v}.16b",
                        "aese  {data7:v}.16b, {key:v}.16b",
                        "aesmc {data7:v}.16b, {data7:v}.16b",
                        "pmull {lo:v}.1q, {lhs:v}.1d, {rhs:v}.1d",
                        "pmull2 {hi:v}.1q, {lhs:v}.2d, {rhs:v}.2d",
                        "pmull {tmp0:v}.1q, {lhs:v}.1d, {swap:v}.1d",
                        "pmull2 {tmp1:v}.1q, {lhs:v}.2d, {swap:v}.2d",
                        "eor3 {mid:v}.16b, {mid:v}.16b, {tmp0:v}.16b, {tmp1:v}.16b",
                        key =      in(vreg) key.0,
                        data0 = inout(vreg) data[0].0,
                        data1 = inout(vreg) data[1].0,
                        data2 = inout(vreg) data[2].0,
                        data3 = inout(vreg) data[3].0,
                        data4 = inout(vreg) data[4].0,
                        data5 = inout(vreg) data[5].0,
                        data6 = inout(vreg) data[6].0,
                        data7 = inout(vreg) data[7].0,
                        lhs =      in(vreg) lhs.0,
                        rhs =      in(vreg) rhs.0,
                        swap =     in(vreg) swap.0,
                        lo =    out(vreg) lo,
                        mid =   inout(vreg) mid.0,
                        hi =    out(vreg) hi,
                        tmp0 =    out(vreg) _,
                        tmp1 =    out(vreg) _,
                        options(
                            nomem,
                            nostack,
                            preserves_flags,
                            pure,
                        ),
                    );
                }

                self.clmul.product.mid = mid;
                self.clmul.product.lo ^= lo.into();
                self.clmul.product.hi ^= hi.into();
                self.aes.set_data(data);
            }
            _ => {
                self.aes_round();
                self.clmul_round();
            }
        }
    }
    #[inline]
    #[track_caller]
    pub fn round(&mut self) {
        if self.aes.index < NUM_ROUNDS - 2 && self.clmul.index < N {
            self.asm_round();
        } else if self.aes.index < NUM_ROUNDS && self.clmul.index < N {
            self.aes_round();
            self.clmul_round();
        } else if self.aes.index < NUM_ROUNDS {
            self.aes_round();
        } else if self.clmul.index < N {
            self.clmul_round();
        } else {
            panic!("No rounds remaining");
        }
    }
    #[inline]
    pub fn aes_round(&mut self) {
        self.aes.aes_round();
    }
    #[inline]
    pub fn clmul_round(&mut self) {
        self.clmul.round();
    }
    #[inline]
    pub fn clmul_state(&self) -> Block128 {
        self.clmul.state()
    }
    #[inline]
    pub fn aes_data(&self) -> [Block128; N] {
        self.aes.get_data_final()
    }
}
