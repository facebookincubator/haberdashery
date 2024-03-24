// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::aes::AesRoundKeys;
use crate::asm::vaesenc_vpclmulqdq_128::vaesenc_vpclmulqdq_128;
use crate::clmulfoil::*;
use crate::intrinsics::m128i::M128i;

pub struct RoundState<const N: usize, const R: usize> {
    product: ClMulFoilProduct<M128i>,
    aes: AesRoundKeys<R>,
    crypt_data: [M128i; N],
    auth_data: [M128i; N],
    auth_key: [M128i; N],
    aes_index: usize,
    auth_index: usize,
}
impl<const N: usize, const R: usize> RoundState<N, R> {
    #[inline(always)]
    pub fn new(
        aes: impl Into<AesRoundKeys<R>>,
        mut crypt_data: [M128i; N],
        auth_data: impl Into<[M128i; N]>,
        auth_key: [M128i; N],
        hash: M128i,
    ) -> Self {
        let auth_data = auth_data.into();
        let aes = aes.into();
        aes.encrypt_round_first(&mut crypt_data);
        Self {
            product: auth_key[N - 1].clmul_foil(auth_data[0] ^ hash),
            aes,
            crypt_data,
            auth_data,
            auth_key,
            aes_index: 1,
            auth_index: 1,
        }
    }
    #[inline(always)]
    pub fn crypt(&mut self) {
        self.aes.encrypt_round(&mut self.crypt_data, self.aes_index);
        self.aes_index += 1;
    }
    #[inline(always)]
    pub fn finish(mut self) -> ([M128i; N], M128i) {
        self.crypt_last();
        (self.crypt_data, self.product.reduce())
    }
    #[inline(always)]
    pub fn crypt_last(&mut self) {
        self.aes.encrypt_round_last(&mut self.crypt_data);
    }
    #[inline(always)]
    pub fn crypt_cmul(&mut self) {
        vaesenc_vpclmulqdq_128(
            self.aes[self.aes_index],
            &mut self.crypt_data,
            &mut self.product,
            self.auth_data[self.auth_index],
            self.auth_key[N - 1 - self.auth_index],
        );
        self.aes_index += 1;
        self.auth_index += 1;
    }
}
