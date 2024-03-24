// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod sivmac;

pub struct Vtable<T> {
    pub _ty: core::marker::PhantomData<T>,
    pub key_len: usize,
    pub tag_len: usize,
    pub init: unsafe extern "C" fn(*mut T, *const u8, usize) -> i32,
    pub sign: unsafe extern "C" fn(*const T, *const u8, usize, *mut u8, usize) -> i32,
    pub verify: unsafe extern "C" fn(*const T, *const u8, usize, *const u8, usize) -> i32,
}

pub struct Data<T> {
    mac: T,
    vtable: Vtable<T>,
    key: Vec<u8>,
    message: Vec<u8>,
    tag: Vec<u8>,
}
impl<T> Data<T> {
    pub fn new(vtable: Vtable<T>, message_len: usize) -> Self {
        let mut mac = core::mem::MaybeUninit::<T>::uninit();
        let key = vec![0u8; vtable.key_len];
        let message = vec![0u8; message_len];
        let tag = vec![0u8; vtable.tag_len];
        assert_ne!(
            unsafe { (vtable.init)(mac.as_mut_ptr(), key.as_ptr(), key.len()) },
            0
        );
        let mac = unsafe { mac.assume_init_read() };
        let mut this = Self {
            mac,
            vtable,
            key,
            message,
            tag,
        };
        assert!(this.init());
        assert!(this.sign());
        assert!(this.verify());
        this
    }
    #[inline(always)]
    pub fn init(&mut self) -> bool {
        0 != unsafe { (self.vtable.init)(&mut self.mac, self.key.as_ptr(), self.key.len()) }
    }
    #[inline(always)]
    pub fn sign(&mut self) -> bool {
        0 != unsafe {
            (self.vtable.sign)(
                &self.mac,
                self.message.as_ptr(),
                self.message.len(),
                self.tag.as_mut_ptr(),
                self.tag.len(),
            )
        }
    }
    #[inline(always)]
    pub fn verify(&mut self) -> bool {
        0 != unsafe {
            (self.vtable.verify)(
                &self.mac,
                self.message.as_ptr(),
                self.message.len(),
                self.tag.as_ptr(),
                self.tag.len(),
            )
        }
    }
}
