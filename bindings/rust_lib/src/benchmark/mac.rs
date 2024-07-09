// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::traits::mac::Mac;
pub struct Context<T: Mac> {
    mac: T,
    key: Vec<u8>,
    message: Vec<u8>,
    tag: Vec<u8>,
}
impl<T: Mac> Context<T> {
    pub fn new(len: usize) -> Option<Self> {
        if !T::is_supported() {
            return None;
        }
        let key = vec![0u8; T::KEY_LEN];
        let message = vec![0u8; len];
        let tag = vec![0u8; T::TAG_LEN];
        let mac = T::new(&key).unwrap();
        Some(Self {
            mac,
            key,
            message,
            tag,
        })
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        self.mac.init(&self.key)
    }
    #[inline(always)]
    pub fn sign(&mut self) -> bool {
        self.mac.sign(&self.message, &mut self.tag)
    }
    #[inline(always)]
    pub fn verify(&self) -> bool {
        self.mac.verify(&self.message, &self.tag)
    }
}
