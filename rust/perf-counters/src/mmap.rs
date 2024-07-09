// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub struct Mmap<T>(*mut T);
impl<T> Mmap<T> {
    pub fn new(fd: i32) -> Self {
        let ptr = unsafe {
            nix::libc::mmap(
                core::ptr::null_mut(),
                core::mem::size_of::<T>(),
                nix::libc::PROT_READ,
                nix::libc::MAP_SHARED,
                fd,
                0,
            )
        };
        assert!(!ptr.is_null());
        Self(ptr as *mut T)
    }
}
impl<T> core::ops::Deref for Mmap<T> {
    type Target = T;
    fn deref(&self) -> &Self::Target {
        unsafe { &*self.0 }
    }
}
impl<T> Drop for Mmap<T> {
    fn drop(&mut self) {
        unsafe { nix::libc::munmap(self.0 as *mut nix::libc::c_void, core::mem::size_of::<T>()) };
        self.0 = core::ptr::null_mut();
    }
}
