// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use openssl_sys::*;

use crate::wrapper::evp_cipher_ctx::EvpCipherCtx;

pub trait Aead {
    const KEY_LEN: usize;
    const NONCE_LEN: usize;
    const TAG_LEN: usize;
    fn ctx(&mut self) -> &mut EvpCipherCtx;
    fn cipher() -> *const EVP_CIPHER;
    #[inline(always)]
    fn cipher_init(&mut self) -> i32 {
        self.ctx().cipher_init(Self::cipher())
    }
    #[inline(always)]
    fn key_init(&mut self, key: &[u8]) -> i32 {
        self.ctx().key_init(key)
    }
    #[inline(always)]
    fn encrypt_init(&mut self, nonce: &[u8]) -> i32 {
        self.ctx().encrypt_init(nonce)
    }
    #[inline(always)]
    fn decrypt_init(&mut self, nonce: &[u8]) -> i32 {
        self.ctx().decrypt_init(nonce)
    }
    #[inline(always)]
    fn encrypt(
        &mut self,
        nonce: &[u8],
        aad: &[u8],
        plaintext: &[u8],
        ciphertext: &mut [u8],
        tag: &mut [u8],
    ) -> i32 {
        self.ctx().encrypt_init(nonce);
        self.ctx().aad(aad);
        self.ctx().crypt(plaintext, ciphertext);
        self.ctx().encrypt_final(tag)
    }
    #[inline(always)]
    fn decrypt(
        &mut self,
        nonce: &[u8],
        aad: &[u8],
        ciphertext: &[u8],
        tag: &mut [u8],
        plaintext: &mut [u8],
    ) -> i32 {
        self.ctx().decrypt_init(nonce);
        self.ctx().aad(aad);
        self.ctx().crypt(ciphertext, plaintext);
        self.ctx().decrypt_final(tag)
    }
}
pub struct BenchmarkData<T: Aead + Default> {
    aead: T,
    key: Vec<u8>,
    nonce: Vec<u8>,
    aad: Vec<u8>,
    plaintext: Vec<u8>,
    ciphertext: Vec<u8>,
    tag: Vec<u8>,
}
impl<T: Aead + Default> BenchmarkData<T> {
    pub fn new(aad_len: usize, payload_len: usize) -> Self {
        let mut this = Self {
            aead: T::default(),
            key: random::vec(T::KEY_LEN),
            nonce: random::vec(T::NONCE_LEN),
            aad: random::vec(aad_len),
            plaintext: random::vec(payload_len),
            ciphertext: vec![0u8; payload_len],
            tag: vec![0u8; T::TAG_LEN],
        };
        assert!(this.key_init());
        assert!(this.encrypt());
        assert!(this.decrypt());
        this
    }
    #[inline(always)]
    pub fn cipher_init(&mut self) -> bool {
        self.aead.cipher_init() != 0
    }
    #[inline(always)]
    pub fn key_init(&mut self) -> bool {
        self.aead.key_init(&self.key) != 0
    }
    #[inline(always)]
    pub fn encrypt_init(&mut self) -> bool {
        self.aead.encrypt_init(&self.nonce) != 0
    }
    #[inline(always)]
    pub fn decrypt_init(&mut self) -> bool {
        self.aead.decrypt_init(&self.nonce) != 0
    }
    #[inline(always)]
    pub fn encrypt(&mut self) -> bool {
        self.aead.encrypt(
            &self.nonce,
            &self.aad,
            &self.plaintext,
            &mut self.ciphertext,
            &mut self.tag,
        ) != 0
    }
    #[inline(always)]
    pub fn decrypt(&mut self) -> bool {
        self.aead.decrypt(
            &self.nonce,
            &self.aad,
            &self.ciphertext,
            &mut self.tag,
            &mut self.plaintext,
        ) != 0
    }
}
