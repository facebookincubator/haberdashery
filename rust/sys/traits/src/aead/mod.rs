// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod aes256gcm;
pub mod aes256gcmdndk;
pub mod aes256gcmsiv;

use core::marker::PhantomData;
use core::mem::MaybeUninit;
use std::path::PathBuf;

use test_vectors::AeadTestVector;

pub trait Aead: Sized {
    const KEY_LEN: usize;
    const NONCE_LEN: usize;
    const TAG_LEN: usize;

    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32;
    const FN_ENCRYPT: unsafe extern "C" fn(
        this: *const Self,
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
    ) -> i32;
    const FN_DECRYPT: unsafe extern "C" fn(
        this: *const Self,
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
    ) -> i32;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32;

    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        0 != unsafe { Self::FN_INIT(self, key.as_ptr(), key.len()) }
    }
    #[inline(always)]
    fn encrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        plaintext: &[u8],
        ciphertext: &mut [u8],
        tag: &mut [u8],
    ) -> bool {
        0 != unsafe {
            Self::FN_ENCRYPT(
                self,
                nonce.as_ptr(),
                nonce.len(),
                aad.as_ptr(),
                aad.len(),
                plaintext.as_ptr(),
                plaintext.len(),
                ciphertext.as_mut_ptr(),
                ciphertext.len(),
                tag.as_mut_ptr(),
                tag.len(),
            )
        }
    }
    #[inline(always)]
    fn decrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        ciphertext: &[u8],
        tag: &[u8],
        plaintext: &mut [u8],
    ) -> bool {
        0 != unsafe {
            Self::FN_DECRYPT(
                self,
                nonce.as_ptr(),
                nonce.len(),
                aad.as_ptr(),
                aad.len(),
                ciphertext.as_ptr(),
                ciphertext.len(),
                tag.as_ptr(),
                tag.len(),
                plaintext.as_mut_ptr(),
                plaintext.len(),
            )
        }
    }
    #[inline(always)]
    fn is_supported() -> bool {
        0 != unsafe { Self::FN_IS_SUPPORTED() }
    }
    #[inline(always)]
    fn new(key: &[u8]) -> Option<Self> {
        MaybeUninit::<Self>::uninit().init(key)
    }
    #[inline(always)]
    fn init_raw(mut this: MaybeUninit<Self>, key: &[u8]) -> Option<Self> {
        match unsafe { Self::FN_INIT(this.as_mut_ptr(), key.as_ptr(), key.len()) } {
            0 => None,
            _ => Some(unsafe { this.assume_init() }),
        }
    }
}

pub trait AeadInit<T: Aead> {
    fn init(self, key: &[u8]) -> Option<T>;
}
impl<T: Aead> AeadInit<T> for MaybeUninit<T> {
    #[inline(always)]
    fn init(self, key: &[u8]) -> Option<T> {
        T::init_raw(self, key)
    }
}

pub struct TestVectors<T: Aead> {
    path: PathBuf,
    _p: PhantomData<T>,
}
impl<T: Aead> TestVectors<T> {
    pub fn new(path: PathBuf) -> Self {
        Self {
            path,
            _p: PhantomData,
        }
    }
    pub fn verify(&self) -> std::io::Result<()> {
        if !T::is_supported() {
            return Ok(());
        }
        let bytes = std::fs::read(&self.path)?;
        let mut reader = bytes.as_slice();
        let v = AeadTestVector::from_reader(&mut reader)?;

        let aead = T::new(&v.key).unwrap();
        {
            let mut tag = vec![0u8; T::TAG_LEN];
            let mut ciphertext = vec![0u8; v.ciphertext.len()];
            assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag);
        }
        {
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
            assert_eq!(plaintext, v.plaintext);
        }

        let aead = MaybeUninit::<T>::uninit().init(&v.key).unwrap();
        {
            let mut tag = vec![0u8; T::TAG_LEN];
            let mut ciphertext = vec![0u8; v.ciphertext.len()];
            assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag);
        }
        {
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
            assert_eq!(plaintext, v.plaintext);
        }

        let aead = T::init_raw(MaybeUninit::uninit(), &v.key).unwrap();
        {
            let mut tag = vec![0u8; T::TAG_LEN];
            let mut ciphertext = vec![0u8; v.ciphertext.len()];
            assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag);
        }
        {
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
            assert_eq!(plaintext, v.plaintext);
        }

        let mut aead = aead;
        while let Ok(v) = AeadTestVector::from_reader(&mut reader) {
            aead.init(&v.key);
            {
                let mut tag = vec![0u8; T::TAG_LEN];
                let mut ciphertext = vec![0u8; v.ciphertext.len()];
                assert!(aead.encrypt(&v.nonce, &v.aad, &v.plaintext, &mut ciphertext, &mut tag));
                assert_eq!(ciphertext, v.ciphertext);
                assert_eq!(tag, v.tag);
            }
            {
                let mut plaintext = vec![0u8; v.plaintext.len()];
                assert!(aead.decrypt(&v.nonce, &v.aad, &v.ciphertext, &v.tag, &mut plaintext));
                assert_eq!(plaintext, v.plaintext);
            }
        }
        assert!(reader.is_empty());
        Ok(())
    }
    pub fn generate(&self) -> std::io::Result<()> {
        let mut out = Vec::<u8>::default();

        let empty = vec![0u8; 0];
        let mut empty_mut = vec![0u8; 0];
        const SMALL_LIMIT: usize = 64;
        for i in 0..SMALL_LIMIT {
            {
                let key = random::vec(T::KEY_LEN);
                let nonce = random::vec(T::NONCE_LEN);
                let mut plaintext = random::vec(i);
                let mut ciphertext = vec![0; i];
                let mut tag = vec![0u8; T::TAG_LEN];
                let aead = MaybeUninit::<T>::uninit().init(&key).unwrap();
                assert!(aead.encrypt(&nonce, &empty, &plaintext, &mut ciphertext, &mut tag));
                assert!(aead.decrypt(&nonce, &empty, &ciphertext, &tag, &mut plaintext));
                AeadTestVector {
                    key,
                    nonce,
                    aad: empty.clone(),
                    plaintext,
                    ciphertext,
                    tag,
                }
                .to_writer(&mut out)?;
            }
            {
                let key = random::vec(T::KEY_LEN);
                let nonce = random::vec(T::NONCE_LEN);
                let aad = random::vec(i);
                let mut tag = vec![0u8; T::TAG_LEN];
                let aead = MaybeUninit::<T>::uninit().init(&key).unwrap();
                assert!(aead.encrypt(&nonce, &aad, &empty, &mut empty_mut, &mut tag));
                assert!(aead.decrypt(&nonce, &aad, &empty, &tag, &mut empty_mut));
                let vector = AeadTestVector {
                    key,
                    nonce,
                    aad,
                    plaintext: empty.clone(),
                    ciphertext: empty.clone(),
                    tag,
                };
                vector.to_writer(&mut out)?;
            }
        }
        const LARGE_LIMIT: usize = 256;
        const LARGE_COUNT: usize = 32;
        for _ in 0..LARGE_COUNT {
            // Choose a random length in [LARGE_LIMIT..2 * LARGE_LIMIT)
            let aad_len = LARGE_LIMIT
                + (usize::from_le_bytes(random::array::<{ core::mem::size_of::<usize>() }>())
                    % LARGE_LIMIT);
            // Choose a random length in [LARGE_LIMIT..2 * LARGE_LIMIT)
            let crypt_len = LARGE_LIMIT
                + (usize::from_le_bytes(random::array::<{ core::mem::size_of::<usize>() }>())
                    % LARGE_LIMIT);
            let key = random::vec(T::KEY_LEN);
            let nonce = random::vec(T::NONCE_LEN);
            let aad = random::vec(aad_len);
            let mut plaintext = random::vec(crypt_len);
            let mut ciphertext = vec![0; crypt_len];
            let mut tag = vec![0u8; T::TAG_LEN];
            let aead = MaybeUninit::<T>::uninit().init(&key).unwrap();
            assert!(aead.encrypt(&nonce, &aad, &plaintext, &mut ciphertext, &mut tag));
            assert!(aead.decrypt(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
            AeadTestVector {
                key,
                nonce,
                aad,
                plaintext,
                ciphertext,
                tag,
            }
            .to_writer(&mut out)?;
        }
        std::fs::write(&self.path, &out)
    }
}

pub struct BenchmarkContext<T: Aead> {
    aead: T,
    data: AeadTestVector,
}
impl<T> BenchmarkContext<T>
where
    T: Aead,
    MaybeUninit<T>: AeadInit<T>,
{
    pub fn new_init() -> Option<Self> {
        Self::new(0, 0)
    }
    pub fn new_aad(aad_len: usize) -> Option<Self> {
        Self::new(aad_len, 0)
    }
    pub fn new_crypt(crypt_len: usize) -> Option<Self> {
        Self::new(0, crypt_len)
    }
    fn new(aad_len: usize, crypt_len: usize) -> Option<Self> {
        if !T::is_supported() {
            return None;
        }
        let key = random::vec(T::KEY_LEN);
        let nonce = random::vec(T::NONCE_LEN);
        let aad = random::vec(aad_len);
        let mut plaintext = random::vec(crypt_len);
        let mut ciphertext = vec![0; crypt_len];
        let mut tag = vec![0u8; T::TAG_LEN];
        let aead = T::new(&key).unwrap();
        assert!(aead.encrypt(&nonce, &aad, &plaintext, &mut ciphertext, &mut tag));
        assert!(aead.decrypt(&nonce, &aad, &ciphertext, &tag, &mut plaintext));
        Some(Self {
            aead,
            data: AeadTestVector {
                key,
                nonce,
                aad,
                plaintext,
                ciphertext,
                tag,
            },
        })
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        self.aead.init(&self.data.key)
    }
    #[inline(always)]
    pub fn encrypt(&mut self) -> bool {
        self.aead.encrypt(
            &self.data.nonce,
            &self.data.aad,
            &self.data.plaintext,
            &mut self.data.ciphertext,
            &mut self.data.tag,
        )
    }
    #[inline(always)]
    pub fn decrypt(&mut self) -> bool {
        self.aead.decrypt(
            &self.data.nonce,
            &self.data.aad,
            &self.data.plaintext,
            &mut self.data.ciphertext,
            &mut self.data.tag,
        )
    }
}
