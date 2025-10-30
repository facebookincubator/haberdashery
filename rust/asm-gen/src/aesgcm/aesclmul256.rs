// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::aes256::Aes256;
use crate::aes::aes256::Aes256EncryptState;
use crate::aes::aes256::NUM_ROUNDS;
use crate::block::Block256;
use crate::clmul::clmul256karatsuba::ClMul256KaratsubaState;

pub struct Aes256ClMul256KaratsubaState<const N: usize> {
    aes: Aes256EncryptState<[Block256; N]>,
    clmul: ClMul256KaratsubaState<N>,
}
impl<const N: usize> Aes256ClMul256KaratsubaState<N> {
    #[inline]
    pub fn new(
        aes: Aes256,
        crypt_data: [Block256; N],
        auth_state: Block256,
        lhs: [Block256; N],
        rhs: [Block256; N],
    ) -> Self {
        let aes = Aes256EncryptState::new(aes, crypt_data);
        let clmul = ClMul256KaratsubaState::new(auth_state, lhs, rhs);
        Self { aes, clmul }
    }
    #[inline]
    #[track_caller]
    pub fn asm_round(&mut self) {
        debug_assert!(
            self.aes.index < NUM_ROUNDS - 1,
            "{} >= {}",
            self.aes.index,
            NUM_ROUNDS - 1,
        );
        debug_assert!(self.aes.index > 0, "{} == 0", self.aes.index);
        debug_assert!(self.clmul.index < N, "{} >= {N}", self.clmul.index,);
        match N {
            #[cfg(target_feature = "avx")]
            8 => {
                use core::arch::x86_64::__m256i;

                let key = self.aes.advance().broadcast256();
                let (lhs, rhs) = self.clmul.advance();
                let mut data = self.aes.get_data();
                let hi: __m256i;
                let mid: __m256i;
                let lo: __m256i;
                unsafe {
                    core::arch::asm!(
                        "vaesenc {key}, {data0}, {data0}",
                        "vaesenc {key}, {data1}, {data1}",
                        "vaesenc {key}, {data2}, {data2}",
                        "vaesenc {key}, {data3}, {data3}",
                        "vaesenc {key}, {data4}, {data4}",
                        "vaesenc {key}, {data5}, {data5}",
                        "vaesenc {key}, {data6}, {data6}",
                        "vaesenc {key}, {data7}, {data7}",
                        "vpunpcklqdq {lhs}, {rhs}, {hi}",
                        "vpunpckhqdq {lhs}, {rhs}, {mid}",
                        "vpxor {hi}, {mid}, {mid}",
                        "vpclmullqhqdq {mid}, {mid}, {mid}",
                        "vpclmullqlqdq {lhs}, {rhs}, {lo}",
                        "vpclmulhqhqdq {lhs}, {rhs}, {hi}",
                        key =      in(ymm_reg) key.0,
                        data0 = inout(ymm_reg) data[0].0,
                        data1 = inout(ymm_reg) data[1].0,
                        data2 = inout(ymm_reg) data[2].0,
                        data3 = inout(ymm_reg) data[3].0,
                        data4 = inout(ymm_reg) data[4].0,
                        data5 = inout(ymm_reg) data[5].0,
                        data6 = inout(ymm_reg) data[6].0,
                        data7 = inout(ymm_reg) data[7].0,
                        lhs =      in(ymm_reg) lhs.0,
                        rhs =      in(ymm_reg) rhs.0,
                        hi =      out(ymm_reg) hi,
                        mid =     out(ymm_reg) mid,
                        lo =      out(ymm_reg) lo,
                        options(
                            att_syntax,
                            nomem,
                            nostack,
                            preserves_flags,
                            pure,
                        ),
                    );
                }
                self.clmul.product.lo ^= lo;
                self.clmul.product.hi ^= hi;
                self.clmul.product.mid ^= mid;
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
        if self.aes.index > 0 && self.aes.index < NUM_ROUNDS - 1 && self.clmul.index < N {
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
    pub fn clmul_state(&self) -> Block256 {
        self.clmul.state()
    }
    #[inline]
    pub fn aes_data(&self) -> [Block256; N] {
        self.aes.get_data_final()
    }
}
