// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod aes256gcm;
mod aes256gcmdndk;
mod aes256gcmsiv;

pub struct Vtable<T> {
    pub _ty: core::marker::PhantomData<T>,
    pub key_len: usize,
    pub nonce_len: usize,
    pub tag_len: usize,
    pub init: unsafe extern "C" fn(this: *mut T, key: *const u8, key_len: usize) -> i32,
    pub encrypt: unsafe extern "C" fn(
        this: *const T,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32,
    pub decrypt: unsafe extern "C" fn(
        this: *const T,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        ciphertext: *const u8,
        ciphertext_len: usize,
        tag: *const u8,
        tag_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32,
}

pub struct Data<T> {
    aead: T,
    vtable: Vtable<T>,
    key: Vec<u8>,
    nonce: Vec<u8>,
    aad: Vec<u8>,
    plaintext: Vec<u8>,
    ciphertext: Vec<u8>,
    tag: Vec<u8>,
}
impl<T> Data<T> {
    pub fn new(vtable: Vtable<T>, aad_len: usize, payload_len: usize) -> Self {
        let key = random::vec(vtable.key_len);
        let nonce = random::vec(vtable.nonce_len);
        let aad = random::vec(aad_len);
        let plaintext = random::vec(payload_len);
        let ciphertext = vec![0u8; payload_len];
        let tag = vec![0u8; vtable.tag_len];

        let mut aead = core::mem::MaybeUninit::<T>::uninit();
        assert_ne!(
            unsafe { (vtable.init)(aead.as_mut_ptr(), key.as_ptr(), key.len()) },
            0
        );
        let aead = unsafe { aead.assume_init_read() };
        let mut this = Self {
            aead,
            vtable,
            key,
            nonce,
            aad,
            plaintext,
            ciphertext,
            tag,
        };
        assert!(this.init());
        assert!(this.encrypt());
        assert!(this.decrypt());
        this
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        0 != unsafe { (self.vtable.init)(&mut self.aead, self.key.as_ptr(), self.key.len()) }
    }
    #[inline(always)]
    pub fn aad(&mut self) -> bool {
        0 != unsafe {
            (self.vtable.encrypt)(
                &self.aead,
                self.nonce.as_ptr(),
                self.nonce.len(),
                self.aad.as_ptr(),
                self.aad.len(),
                self.plaintext.as_ptr(),
                self.plaintext.len(),
                self.ciphertext.as_mut_ptr(),
                self.ciphertext.len(),
                self.tag.as_mut_ptr(),
                self.tag.len(),
            )
        }
    }
    #[inline(always)]
    pub fn encrypt(&mut self) -> bool {
        0 != unsafe {
            (self.vtable.encrypt)(
                &self.aead,
                self.nonce.as_ptr(),
                self.nonce.len(),
                self.aad.as_ptr(),
                self.aad.len(),
                self.plaintext.as_ptr(),
                self.plaintext.len(),
                self.ciphertext.as_mut_ptr(),
                self.ciphertext.len(),
                self.tag.as_mut_ptr(),
                self.tag.len(),
            )
        }
    }
    #[inline(always)]
    pub fn decrypt(&mut self) -> bool {
        0 != unsafe {
            (self.vtable.decrypt)(
                &self.aead,
                self.nonce.as_ptr(),
                self.nonce.len(),
                self.aad.as_ptr(),
                self.aad.len(),
                self.ciphertext.as_ptr(),
                self.ciphertext.len(),
                self.tag.as_ptr(),
                self.tag.len(),
                self.plaintext.as_mut_ptr(),
                self.plaintext.len(),
            )
        }
    }
}
