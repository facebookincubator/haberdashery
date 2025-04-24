// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::block::Block128;
use crate::block::Block256;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct AesRoundKeys<const R: usize>([Block128; R]);
#[allow(unused)]
impl<const R: usize> AesRoundKeys<R> {
    #[inline]
    pub fn zero() -> Self {
        Self([Block128::zero(); R])
    }
    #[inline]
    pub fn encrypt_round_first(&self, item: &mut impl AesRoundInput) {
        item.encrypt_round_first(self);
    }
    #[inline]
    pub fn encrypt_round(&self, item: &mut impl AesRoundInput, i: usize) {
        item.encrypt_round(self, i);
    }
    #[inline]
    pub fn encrypt_round_last(&self, item: &mut impl AesRoundInput) {
        item.encrypt_round_last(self);
    }
}
impl<const R: usize> From<[Block128; R]> for AesRoundKeys<R> {
    #[inline]
    fn from(v: [Block128; R]) -> Self {
        Self(v)
    }
}
impl<const R: usize> core::ops::Index<usize> for AesRoundKeys<R> {
    type Output = Block128;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl<const R: usize> core::ops::IndexMut<usize> for AesRoundKeys<R> {
    #[inline]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

pub trait AesRoundInput {
    fn encrypt_round_first<const R: usize>(&mut self, key: &AesRoundKeys<R>);
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize);
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>);
}

impl AesRoundInput for Block128 {
    #[inline]
    fn encrypt_round_first<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        *self ^= key[0];
    }
    #[inline]
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize) {
        *self = self.aesenc(key[i]);
    }
    #[inline]
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        *self = self.aesenclast(key[R - 1]);
    }
}

impl<const N: usize> AesRoundInput for [Block128; N] {
    #[inline]
    fn encrypt_round_first<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        self.iter_mut().for_each(|b| b.encrypt_round_first(key));
    }
    #[inline]
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize) {
        crate::asm::vaesenc::vaesenc(self, key[i]);
    }
    #[inline]
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        crate::asm::vaesenc::vaesenclast(self, key[R - 1]);
    }
}

impl AesRoundInput for Block256 {
    #[inline]
    fn encrypt_round_first<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        *self ^= key[0].broadcast256();
    }
    #[inline]
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize) {
        *self = self.aesenc(key[i].broadcast256());
    }
    #[inline]
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        *self = self.aesenclast(key[R - 1].broadcast256());
    }
}

impl<const N: usize> AesRoundInput for [Block256; N] {
    #[inline]
    fn encrypt_round_first<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        self.iter_mut().for_each(|b| b.encrypt_round_first(key));
    }
    #[inline]
    fn encrypt_round<const R: usize>(&mut self, key: &AesRoundKeys<R>, i: usize) {
        self.iter_mut().for_each(|b| b.encrypt_round(key, i));
    }
    #[inline]
    fn encrypt_round_last<const R: usize>(&mut self, key: &AesRoundKeys<R>) {
        self.iter_mut().for_each(|b| b.encrypt_round_last(key));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn asm() {
        // Randomly generated using Block128::random()
        let keys =
            AesRoundKeys([Block128::from_hex("32ba275c155f992c98eb61f24065f271").unwrap(); 1]);
        let plaintext = [
            Block128::from_hex("d903c4db0372d133edb8e7483ed89d2a").unwrap(),
            Block128::from_hex("2be3010698daf8be981e83464ee3e122").unwrap(),
            Block128::from_hex("f8b6f74508f80ff60c2f04379eab2ef6").unwrap(),
            Block128::from_hex("7ee9509279cbab7d6a43d3849a618535").unwrap(),
            Block128::from_hex("c3a2e61943e6aaffe2ce15a036320677").unwrap(),
            Block128::from_hex("58a863ae4c56c2669180a31c776370d8").unwrap(),
            Block128::from_hex("b879d85df7fb44dff6409364d8caaf7b").unwrap(),
            Block128::from_hex("b44ce6c63becc857d43ddbee018a381b").unwrap(),
        ];
        let mut reference_rounds = plaintext;
        reference_rounds
            .iter_mut()
            .for_each(|b| *b = b.aesenc(keys[0]));
        assert_eq!(reference_rounds[0], "e94d5506b0a7e2fa4e9b33edde31b15d");
        assert_eq!(reference_rounds[1], "4d59ecd29881f7b2f5a5271236f1a0e4");
        assert_eq!(reference_rounds[2], "c3361ea815786c84f32beb6568f2ee7b");
        assert_eq!(reference_rounds[3], "1e4ba61c9430d1fe1a2630ad34187160");
        assert_eq!(reference_rounds[4], "4b8d31081c2db1554eaae7c0481bb533");
        assert_eq!(reference_rounds[5], "45d64b9bbee0e8185fa2a30c55fc30b1");
        assert_eq!(reference_rounds[6], "06968479ebe2de7c7f7c2c061b1dd6f9");
        assert_eq!(reference_rounds[7], "6ccfe7e2104e95425f8dbd6c03401464");

        let mut asm_rounds = plaintext;
        keys.encrypt_round(&mut asm_rounds, 0);
        assert_eq!(asm_rounds[0], "e94d5506b0a7e2fa4e9b33edde31b15d");
        assert_eq!(asm_rounds[1], "4d59ecd29881f7b2f5a5271236f1a0e4");
        assert_eq!(asm_rounds[2], "c3361ea815786c84f32beb6568f2ee7b");
        assert_eq!(asm_rounds[3], "1e4ba61c9430d1fe1a2630ad34187160");
        assert_eq!(asm_rounds[4], "4b8d31081c2db1554eaae7c0481bb533");
        assert_eq!(asm_rounds[5], "45d64b9bbee0e8185fa2a30c55fc30b1");
        assert_eq!(asm_rounds[6], "06968479ebe2de7c7f7c2c061b1dd6f9");
        assert_eq!(asm_rounds[7], "6ccfe7e2104e95425f8dbd6c03401464");

        let mut intrinsic_rounds = plaintext;
        intrinsic_rounds
            .iter_mut()
            .for_each(|b| keys.encrypt_round(b, 0));
        assert_eq!(intrinsic_rounds[0], "e94d5506b0a7e2fa4e9b33edde31b15d");
        assert_eq!(intrinsic_rounds[1], "4d59ecd29881f7b2f5a5271236f1a0e4");
        assert_eq!(intrinsic_rounds[2], "c3361ea815786c84f32beb6568f2ee7b");
        assert_eq!(intrinsic_rounds[3], "1e4ba61c9430d1fe1a2630ad34187160");
        assert_eq!(intrinsic_rounds[4], "4b8d31081c2db1554eaae7c0481bb533");
        assert_eq!(intrinsic_rounds[5], "45d64b9bbee0e8185fa2a30c55fc30b1");
        assert_eq!(intrinsic_rounds[6], "06968479ebe2de7c7f7c2c061b1dd6f9");
        assert_eq!(intrinsic_rounds[7], "6ccfe7e2104e95425f8dbd6c03401464");
    }

    #[test]
    fn asm256() {
        if !cpuid::VAES.is_supported() {
            return;
        }
        // Randomly generated using Block128::random()
        let keys =
            AesRoundKeys([Block128::from_hex("32ba275c155f992c98eb61f24065f271").unwrap(); 1]);
        let plaintext = [
            Block256::from_hex("d903c4db0372d133edb8e7483ed89d2ad903c4db0372d133edb8e7483ed89d2a")
                .unwrap(),
            Block256::from_hex("2be3010698daf8be981e83464ee3e1222be3010698daf8be981e83464ee3e122")
                .unwrap(),
            Block256::from_hex("f8b6f74508f80ff60c2f04379eab2ef6f8b6f74508f80ff60c2f04379eab2ef6")
                .unwrap(),
            Block256::from_hex("7ee9509279cbab7d6a43d3849a6185357ee9509279cbab7d6a43d3849a618535")
                .unwrap(),
            Block256::from_hex("c3a2e61943e6aaffe2ce15a036320677c3a2e61943e6aaffe2ce15a036320677")
                .unwrap(),
            Block256::from_hex("58a863ae4c56c2669180a31c776370d858a863ae4c56c2669180a31c776370d8")
                .unwrap(),
            Block256::from_hex("b879d85df7fb44dff6409364d8caaf7bb879d85df7fb44dff6409364d8caaf7b")
                .unwrap(),
            Block256::from_hex("b44ce6c63becc857d43ddbee018a381bb44ce6c63becc857d43ddbee018a381b")
                .unwrap(),
        ];
        let mut reference_rounds = plaintext;
        reference_rounds
            .iter_mut()
            .for_each(|b| *b = b.aesenc(keys[0].broadcast256()));
        assert_eq!(
            reference_rounds[0],
            "e94d5506b0a7e2fa4e9b33edde31b15de94d5506b0a7e2fa4e9b33edde31b15d"
        );
        assert_eq!(
            reference_rounds[1],
            "4d59ecd29881f7b2f5a5271236f1a0e44d59ecd29881f7b2f5a5271236f1a0e4"
        );
        assert_eq!(
            reference_rounds[2],
            "c3361ea815786c84f32beb6568f2ee7bc3361ea815786c84f32beb6568f2ee7b"
        );
        assert_eq!(
            reference_rounds[3],
            "1e4ba61c9430d1fe1a2630ad341871601e4ba61c9430d1fe1a2630ad34187160"
        );
        assert_eq!(
            reference_rounds[4],
            "4b8d31081c2db1554eaae7c0481bb5334b8d31081c2db1554eaae7c0481bb533"
        );
        assert_eq!(
            reference_rounds[5],
            "45d64b9bbee0e8185fa2a30c55fc30b145d64b9bbee0e8185fa2a30c55fc30b1"
        );
        assert_eq!(
            reference_rounds[6],
            "06968479ebe2de7c7f7c2c061b1dd6f906968479ebe2de7c7f7c2c061b1dd6f9"
        );
        assert_eq!(
            reference_rounds[7],
            "6ccfe7e2104e95425f8dbd6c034014646ccfe7e2104e95425f8dbd6c03401464"
        );

        let mut asm_rounds = plaintext;
        keys.encrypt_round(&mut asm_rounds, 0);
        assert_eq!(
            asm_rounds[0],
            "e94d5506b0a7e2fa4e9b33edde31b15de94d5506b0a7e2fa4e9b33edde31b15d"
        );
        assert_eq!(
            asm_rounds[1],
            "4d59ecd29881f7b2f5a5271236f1a0e44d59ecd29881f7b2f5a5271236f1a0e4"
        );
        assert_eq!(
            asm_rounds[2],
            "c3361ea815786c84f32beb6568f2ee7bc3361ea815786c84f32beb6568f2ee7b"
        );
        assert_eq!(
            asm_rounds[3],
            "1e4ba61c9430d1fe1a2630ad341871601e4ba61c9430d1fe1a2630ad34187160"
        );
        assert_eq!(
            asm_rounds[4],
            "4b8d31081c2db1554eaae7c0481bb5334b8d31081c2db1554eaae7c0481bb533"
        );
        assert_eq!(
            asm_rounds[5],
            "45d64b9bbee0e8185fa2a30c55fc30b145d64b9bbee0e8185fa2a30c55fc30b1"
        );
        assert_eq!(
            asm_rounds[6],
            "06968479ebe2de7c7f7c2c061b1dd6f906968479ebe2de7c7f7c2c061b1dd6f9"
        );
        assert_eq!(
            asm_rounds[7],
            "6ccfe7e2104e95425f8dbd6c034014646ccfe7e2104e95425f8dbd6c03401464"
        );

        let mut intrinsic_rounds = plaintext;
        intrinsic_rounds
            .iter_mut()
            .for_each(|b| keys.encrypt_round(b, 0));
        assert_eq!(
            intrinsic_rounds[0],
            "e94d5506b0a7e2fa4e9b33edde31b15de94d5506b0a7e2fa4e9b33edde31b15d"
        );
        assert_eq!(
            intrinsic_rounds[1],
            "4d59ecd29881f7b2f5a5271236f1a0e44d59ecd29881f7b2f5a5271236f1a0e4"
        );
        assert_eq!(
            intrinsic_rounds[2],
            "c3361ea815786c84f32beb6568f2ee7bc3361ea815786c84f32beb6568f2ee7b"
        );
        assert_eq!(
            intrinsic_rounds[3],
            "1e4ba61c9430d1fe1a2630ad341871601e4ba61c9430d1fe1a2630ad34187160"
        );
        assert_eq!(
            intrinsic_rounds[4],
            "4b8d31081c2db1554eaae7c0481bb5334b8d31081c2db1554eaae7c0481bb533"
        );
        assert_eq!(
            intrinsic_rounds[5],
            "45d64b9bbee0e8185fa2a30c55fc30b145d64b9bbee0e8185fa2a30c55fc30b1"
        );
        assert_eq!(
            intrinsic_rounds[6],
            "06968479ebe2de7c7f7c2c061b1dd6f906968479ebe2de7c7f7c2c061b1dd6f9"
        );
        assert_eq!(
            intrinsic_rounds[7],
            "6ccfe7e2104e95425f8dbd6c034014646ccfe7e2104e95425f8dbd6c03401464"
        );
    }
}
