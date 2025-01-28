// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::wrapper::hmac_ctx::HmacCtx;

pub trait Mac {
    const KEY_LEN: usize;
    const TAG_LEN: usize;
    fn ctx(&mut self) -> &mut HmacCtx;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.ctx().key_init(key)
    }
    #[inline(always)]
    fn sign(&mut self, message: &[u8], tag: &mut [u8]) -> bool {
        if !self.ctx().reset() {
            return false;
        }
        if !self.ctx().update(message) {
            return false;
        }
        self.ctx().finalize(tag)
    }
}
pub struct BenchmarkData<T: Mac + Default> {
    mac: T,
    key: Vec<u8>,
    message: Vec<u8>,
    tag: Vec<u8>,
}
impl<T: Mac + Default> BenchmarkData<T> {
    pub fn new(len: usize) -> Self {
        let mut this = Self {
            mac: T::default(),
            key: random::vec(T::KEY_LEN),
            message: random::vec(len),
            tag: vec![0u8; T::TAG_LEN],
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
