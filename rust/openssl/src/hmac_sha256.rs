// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use nano_bench::Measure;
use openssl_sys::*;

use crate::evp_mac_ctx::MacCtx;
use crate::mac::Mac;

pub struct HmacSha256 {
    ctx: MacCtx,
}
impl Mac for HmacSha256 {
    const KEY_LEN: usize = 32;
    const TAG_LEN: usize = 32;

    #[inline(always)]
    fn ctx(&mut self) -> &mut MacCtx {
        &mut self.ctx
    }
}
impl Default for HmacSha256 {
    fn default() -> Self {
        let mut ctx = MacCtx::default();
        let key = [0u8; Self::KEY_LEN];
        let res = ctx.init(unsafe { EVP_sha256() }, &key);
        debug_assert!(res);
        Self { ctx }
    }
}

type BenchmarkData = crate::mac::BenchmarkData<HmacSha256>;

#[nano_bench::benchmark(
    library:openssl,
    primitive:mac,
    algorithm:hmac_sha256,
)]
fn init(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(0);
    measure.start();
    for _ in 0..iters {
        data.init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:openssl,
    primitive:mac,
    algorithm:hmac_sha256,
)]
fn sign(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(length);
    measure.start();
    for _ in 0..iters {
        data.sign();
    }
    measure.stop();
}
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn rfc4868() {
        struct TestVector {
            key: &'static str,
            message: &'static str,
            tag: &'static str,
        }
        impl TestVector {
            fn test(&self) {
                let key = hex::decode(self.key).unwrap();
                let message = hex::decode(self.message).unwrap();
                let mut tag = [0u8; HmacSha256::TAG_LEN];
                let mut mac = HmacSha256::default();
                assert!(mac.init(&key));
                assert!(mac.sign(&message, &mut tag));
                assert_eq!(hex::encode(tag), self.tag);
            }
        }
        let vectors = [
            TestVector {
                key: "0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b",
                message: "4869205468657265",
                tag: "198a607eb44bfbc69903a0f1cf2bbdc5ba0aa3f3d9ae3c1c7a3b1696a0b68cf7",
            },
            TestVector {
                key: "4a6566654a6566654a6566654a6566654a6566654a6566654a6566654a656665",
                message: "7768617420646f2079612077616e7420666f72206e6f7468696e673f",
                tag: "167f928588c5cc2eef8e3093caa0e87c9ff566a14794aa61648d81621a2a40c6",
            },
            TestVector {
                key: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                message: "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
                tag: "cdcb1220d1ecccea91e53aba3092f962e549fe6ce9ed7fdc43191fbde45c30b0",
            },
            TestVector {
                key: "0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f20",
                message: "cdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcd",
                tag: "372efcf9b40b35c2115b1346903d2ef42fced46f0846e7257bb156d3d7b30d3f",
            },
        ];
        vectors.iter().for_each(TestVector::test);
    }
}
