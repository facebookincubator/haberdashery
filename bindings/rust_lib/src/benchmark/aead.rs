// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::traits::aead::Aead;
pub struct Context<T: Aead> {
    aead: T,
    key: Vec<u8>,
    nonce: Vec<u8>,
    aad: Vec<u8>,
    plaintext: Vec<u8>,
    ciphertext: Vec<u8>,
    tag: Vec<u8>,
}
impl<T: Aead> Context<T> {
    pub fn new(aad_len: usize, crypt_len: usize) -> Option<Self> {
        if !T::is_supported() {
            return None;
        }
        let key = vec![0u8; T::KEY_LEN];
        let nonce = vec![0u8; T::NONCE_LEN];
        let aad = vec![0u8; aad_len];
        let plaintext = vec![0u8; crypt_len];
        let ciphertext = vec![0u8; crypt_len];
        let tag = vec![0u8; T::TAG_LEN];
        let aead = T::new(&key).unwrap();
        Some(Self {
            aead,
            key,
            nonce,
            aad,
            plaintext,
            ciphertext,
            tag,
        })
    }
    pub fn aad(aad_len: usize) -> Option<Self> {
        Self::new(aad_len, 0)
    }
    pub fn crypt(crypt_len: usize) -> Option<Self> {
        Self::new(0, crypt_len)
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        self.aead.init(&self.key)
    }
    #[inline(always)]
    pub fn encrypt(&mut self) -> bool {
        self.aead.encrypt(
            &self.nonce,
            &self.aad,
            &self.plaintext,
            &mut self.ciphertext,
            &mut self.tag,
        )
    }
    #[inline(always)]
    pub fn decrypt(&mut self) -> bool {
        self.aead.decrypt(
            &self.nonce,
            &self.aad,
            &self.ciphertext,
            &self.tag,
            &mut self.plaintext,
        )
    }
}
