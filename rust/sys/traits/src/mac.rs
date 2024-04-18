// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod sivmac;

use core::marker::PhantomData;
use core::mem::transmute;
use core::mem::MaybeUninit;
use std::path::PathBuf;

use test_vectors::MacTestVector;

pub trait Mac: Sized {
    const KEY_LEN: usize;
    const TAG_LEN: usize;

    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32;
    const FN_SIGN: unsafe extern "C" fn(
        this: *const Self,
        message: *const u8,
        message_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32;

    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        0 != unsafe { Self::FN_INIT(self, key.as_ptr(), key.len()) }
    }
    #[inline(always)]
    fn sign(&self, message: &[u8], tag: &mut [u8]) -> bool {
        0 != unsafe {
            Self::FN_SIGN(
                self,
                message.as_ptr(),
                message.len(),
                tag.as_mut_ptr(),
                tag.len(),
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
    #[inline(always)]
    fn sign_raw<'a>(&self, message: &[u8], tag: &'a mut [MaybeUninit<u8>]) -> Option<&'a mut [u8]> {
        match unsafe {
            Self::FN_SIGN(
                self,
                message.as_ptr(),
                message.len(),
                tag.as_mut_ptr() as *mut u8,
                tag.len(),
            )
        } {
            0 => None,
            _ => Some(unsafe { transmute(tag) }),
        }
    }
}

pub trait MacInit<T: Mac> {
    fn init(self, key: &[u8]) -> Option<T>;
}
impl<T: Mac> MacInit<T> for MaybeUninit<T> {
    #[inline(always)]
    fn init(self, key: &[u8]) -> Option<T> {
        T::init_raw(self, key)
    }
}

pub struct TestVectors<T: Mac> {
    path: PathBuf,
    _p: PhantomData<T>,
}
impl<T: Mac> TestVectors<T> {
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
        let v = MacTestVector::from_reader(&mut reader)?;

        let mac = T::new(&v.key).unwrap();
        let mut tag = vec![0u8; T::TAG_LEN];
        assert!(mac.sign(&v.message, &mut tag));
        assert_eq!(tag, v.tag);

        let mac = MaybeUninit::<T>::uninit().init(&v.key).unwrap();
        let mut tag = vec![0u8; T::TAG_LEN];
        assert!(mac.sign(&v.message, &mut tag));
        assert_eq!(tag, v.tag);

        let mac = T::init_raw(MaybeUninit::uninit(), &v.key).unwrap();
        let mut tag = vec![0u8; T::TAG_LEN];
        assert!(mac.sign(&v.message, &mut tag));
        assert_eq!(tag, v.tag);

        let mut tag = vec![MaybeUninit::<u8>::uninit(); T::TAG_LEN];
        let tag = mac.sign_raw(&v.message, &mut tag).unwrap();
        assert_eq!(tag, v.tag);

        let mut mac = mac;
        while let Ok(v) = MacTestVector::from_reader(&mut reader) {
            mac.init(&v.key);
            {
                let mut tag = vec![0u8; T::TAG_LEN];
                assert!(mac.sign(&v.message, &mut tag));
                assert_eq!(tag, v.tag);
            }
            {
                let mut tag = vec![MaybeUninit::<u8>::uninit(); T::TAG_LEN];
                let tag = mac.sign_raw(&v.message, &mut tag).unwrap();
                assert_eq!(tag, v.tag);
            }
        }
        Ok(())
    }
    pub fn generate(&self) -> std::io::Result<()> {
        let mut out = Vec::<u8>::default();
        const SMALL_LIMIT: usize = 64;
        for i in 0..SMALL_LIMIT {
            let key = random::vec(T::KEY_LEN);
            let message = random::vec(i);
            let mut tag = vec![0u8; T::TAG_LEN];
            let mac = MaybeUninit::<T>::uninit().init(&key).unwrap();
            assert!(mac.sign(&message, &mut tag));
            MacTestVector { key, message, tag }.to_writer(&mut out)?;
        }
        const LARGE_LIMIT: usize = 256;
        const LARGE_COUNT: usize = 32;
        for _ in 0..LARGE_COUNT {
            // Choose a random length in [LARGE_LIMIT..2 * LARGE_LIMIT)
            let len = LARGE_LIMIT
                + (usize::from_le_bytes(random::array::<{ core::mem::size_of::<usize>() }>())
                    % LARGE_LIMIT);
            let key = random::vec(T::KEY_LEN);
            let message = random::vec(len);
            let mut tag = vec![0u8; T::TAG_LEN];
            let mac = MaybeUninit::<T>::uninit().init(&key).unwrap();
            assert!(mac.sign(&message, &mut tag));
            MacTestVector { key, message, tag }.to_writer(&mut out)?;
        }
        std::fs::write(&self.path, &out)
    }
}

pub struct BenchmarkContext<T: Mac> {
    mac: T,
    data: MacTestVector,
}
impl<T> BenchmarkContext<T>
where
    T: Mac,
    MaybeUninit<T>: MacInit<T>,
{
    pub fn new(len: usize) -> Option<Self> {
        if !T::is_supported() {
            return None;
        }
        let key = random::vec(T::KEY_LEN);
        let message = random::vec(len);
        let mut tag = vec![0u8; T::TAG_LEN];
        let mac = T::new(&key).unwrap();
        assert!(mac.sign(&message, &mut tag));
        Some(Self {
            mac,
            data: MacTestVector { key, message, tag },
        })
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        self.mac.init(&self.data.key)
    }
    #[inline(always)]
    pub fn sign(&mut self) -> bool {
        self.mac.sign(&self.data.message, &mut self.data.tag)
    }
}
