// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::traits::hash::Hash;
pub struct Context<T: Hash> {
    hash: T,
    message: Vec<u8>,
    digest: Vec<u8>,
}
impl<T: Hash> Context<T> {
    pub fn new(len: usize) -> Option<Self> {
        if !T::is_supported() {
            return None;
        }
        let message = vec![0u8; len];
        let digest = vec![0u8; T::DIGEST_LEN];
        let hash = T::new().unwrap();
        Some(Self {
            hash,
            message,
            digest,
        })
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        self.hash.init()
    }
    #[inline(always)]
    pub fn update(&mut self) -> bool {
        self.hash.update(&self.message)
    }
    #[inline(always)]
    pub fn finalize(&mut self) -> bool {
        self.hash.finalize()
    }
    #[inline(always)]
    pub fn hash(&mut self) -> bool {
        self.hash.init();
        self.hash.update(&self.message);
        self.hash.finalize();
        self.hash.digest(&mut self.digest)
    }
}
