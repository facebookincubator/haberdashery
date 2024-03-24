// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ffi::c_void;
use core::ptr::null_mut;

use openssl_sys::*;

struct Ctx {
    ctx: *mut CMAC_CTX,
}
impl Default for Ctx {
    fn default() -> Self {
        Self {
            ctx: unsafe { CMAC_CTX_new() },
        }
    }
}
impl Drop for Ctx {
    fn drop(&mut self) {
        unsafe { CMAC_CTX_free(self.ctx) }
        self.ctx = core::ptr::null_mut();
    }
}
impl Ctx {
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        unsafe {
            CMAC_Init(
                self.ctx,
                key.as_ptr() as *const c_void,
                key.len(),
                EVP_aes_128_cbc(),
                null_mut(),
            ) != 0
        }
    }
    #[inline(always)]
    pub fn update(&mut self, message: &[u8]) -> bool {
        unsafe { CMAC_Update(self.ctx, message.as_ptr() as *const c_void, message.len()) != 0 }
    }
    #[inline(always)]
    pub fn finalize(&mut self, tag: &mut [u8]) -> bool {
        let mut len = tag.len();
        unsafe { CMAC_Final(self.ctx, tag.as_mut_ptr(), &mut len) != 0 }
    }
}

#[derive(Default)]
struct Cmac128 {
    ctx: Ctx,
}
impl Cmac128 {
    const KEY_LEN: usize = 16;
    const TAG_LEN: usize = 16;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.ctx.init(key)
    }
    #[inline(always)]
    pub fn sign(&mut self, message: &[u8], tag: &mut [u8]) -> bool {
        if !self.ctx.update(message) {
            return false;
        }
        self.ctx.finalize(tag)
    }
}

pub struct BenchmarkData {
    mac: Cmac128,
    key: Vec<u8>,
    message: Vec<u8>,
    tag: Vec<u8>,
}
impl BenchmarkData {
    pub fn new(len: usize) -> Self {
        let mut this = Self {
            mac: Cmac128::default(),
            key: random::vec(Cmac128::KEY_LEN),
            message: random::vec(len),
            tag: vec![0u8; Cmac128::TAG_LEN],
        };
        assert!(this.init());
        assert!(this.sign());
        this
    }
    pub fn init(&mut self) -> bool {
        self.mac.init(&self.key)
    }
    pub fn sign(&mut self) -> bool {
        self.mac.sign(&self.message, &mut self.tag)
    }
}

#[nano_bench::benchmark(
    library:openssl,
    primitive:mac,
    algorithm:cmac128,
)]
fn init(iters: u64, measure: &mut dyn nano_bench::Measure) {
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
    algorithm:cmac128,
)]
fn sign(length: usize, iters: u64, measure: &mut dyn nano_bench::Measure) {
    let mut data = BenchmarkData::new(length);
    measure.start();
    for _ in 0..iters {
        data.sign();
    }
    measure.stop();
}
#[cfg(test)]
mod tests {
    type Mac = super::Cmac128;

    #[test]
    fn rfc4493() {
        struct TestVector {
            key: &'static str,
            message: &'static str,
            tag: &'static str,
        }
        impl TestVector {
            fn test(&self) {
                let key = hex::decode(self.key).unwrap();
                let message = hex::decode(self.message).unwrap();
                let mut tag = [0u8; Mac::TAG_LEN];
                let mut mac = Mac::default();
                assert!(mac.init(&key));
                assert!(mac.sign(&message, &mut tag));
                assert_eq!(hex::encode(tag), self.tag);
            }
        }
        // https://www.rfc-editor.org/rfc/rfc4493.html#section-4
        let vectors = [
            TestVector {
                key: "2b7e151628aed2a6abf7158809cf4f3c",
                message: "",
                tag: "bb1d6929e95937287fa37d129b756746",
            },
            TestVector {
                key: "2b7e151628aed2a6abf7158809cf4f3c",
                message: "6bc1bee22e409f96e93d7e117393172a",
                tag: "070a16b46b4d4144f79bdd9dd04a287c",
            },
            TestVector {
                key: "2b7e151628aed2a6abf7158809cf4f3c",
                message: concat!(
                    "6bc1bee22e409f96e93d7e117393172a",
                    "ae2d8a571e03ac9c9eb76fac45af8e51",
                    "30c81c46a35ce411",
                ),
                tag: "dfa66747de9ae63030ca32611497c827",
            },
            TestVector {
                key: "2b7e151628aed2a6abf7158809cf4f3c",
                message: concat!(
                    "6bc1bee22e409f96e93d7e117393172a",
                    "ae2d8a571e03ac9c9eb76fac45af8e51",
                    "30c81c46a35ce411e5fbc1191a0a52ef",
                    "f69f2445df4f9b17ad2b417be66c3710",
                ),
                tag: "51f0bebf7e3b9d92fc49741779363cfe",
            },
        ];
        vectors.iter().for_each(TestVector::test);
    }
}
