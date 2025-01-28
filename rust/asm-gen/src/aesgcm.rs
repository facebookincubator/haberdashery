// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::AesRoundKeys;
use crate::asm::vaesenc_vpclmulqdq_128::vaesenc_vpclmulqdq_128;
use crate::clmul::clmul128foil::*;
use crate::intrinsics::m128i::M128i;

pub struct RoundState<const N: usize, const R: usize> {
    product: ClMul128FoilProduct,
    aes: AesRoundKeys<R>,
    crypt_data: [M128i; N],
    auth_data: [M128i; N],
    auth_key: [M128i; N],
    aes_index: usize,
    auth_index: usize,
}
impl<const N: usize, const R: usize> RoundState<N, R> {
    #[inline]
    pub fn new(
        aes: impl Into<AesRoundKeys<R>>,
        mut crypt_data: [M128i; N],
        auth_data: impl Into<[M128i; N]>,
        auth_key: [M128i; N],
        hash: M128i,
    ) -> Self {
        let mut auth_data = auth_data.into();
        auth_data[0] ^= hash;
        let aes = aes.into();
        aes.encrypt_round_first(&mut crypt_data);
        Self {
            product: ClMul128FoilProduct::default(),
            aes,
            crypt_data,
            auth_data,
            auth_key,
            aes_index: 1,
            auth_index: 0,
        }
    }
    #[inline]
    pub fn step(&mut self) {
        if self.aes_index * N <= self.auth_index * (R - 1) {
            self.crypt();
        } else {
            self.crypt_cmul();
        }
    }
    #[inline]
    pub fn crypt(&mut self) {
        debug_assert!(self.aes_index < R - 1);
        self.aes.encrypt_round(&mut self.crypt_data, self.aes_index);
        self.aes_index += 1;
    }
    #[inline]
    pub fn finish(mut self) -> ([M128i; N], M128i) {
        // Finish up any remaining clmul rounds
        while self.auth_index < N {
            self.crypt_cmul();
        }
        // Finish up any remaining non-clmul rounds
        while self.aes_index < R - 1 {
            self.crypt();
        }
        // Compute the last aes round
        self.crypt_last();
        (self.crypt_data, self.product.reduce())
    }
    #[inline]
    pub fn crypt_last(&mut self) {
        debug_assert!(self.aes_index == R - 1);
        self.aes.encrypt_round_last(&mut self.crypt_data);
    }
    #[inline]
    pub fn crypt_cmul(&mut self) {
        debug_assert!(self.aes_index < R);
        debug_assert!(self.auth_index < N);
        vaesenc_vpclmulqdq_128(
            self.aes[self.aes_index],
            &mut self.crypt_data,
            &mut self.product,
            self.auth_key[self.auth_index],
            self.auth_data[N - 1 - self.auth_index],
        );
        self.aes_index += 1;
        self.auth_index += 1;
    }
}
