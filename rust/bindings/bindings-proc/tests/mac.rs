// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#![allow(unexpected_cfgs)]
#![allow(unused)]

pub mod ffi {
    pub mod reader {
        pub struct Reader;
        impl Reader {
            pub fn new(_: *const u8, _: usize) -> Self {
                Self
            }
        }
    }
    pub mod writer {
        pub struct Writer;
        impl Writer {
            pub fn new(_: *mut u8, _: usize) -> Self {
                Self
            }
        }
    }
    pub mod mac {
        use crate::ffi::reader::Reader;
        use crate::ffi::writer::Writer;
        pub trait Mac: Sized {
            const KEY_LEN: usize;
            const TAG_LEN: usize;
            const STRUCT_SIZE: usize;
            const STRUCT_ALIGNMENT: usize;
            fn init(&mut self, key: &[u8]) -> bool;
            fn sign(&self, message: Reader, tag: Writer) -> bool;
            fn verify(&self, message: Reader, tag: Reader) -> bool;
            fn is_supported() -> bool;
        }
    }
}

#[bindings_proc::bindings(
    algorithm: siv_mac,
    prefix: haberdashery,
    arch: x86_64,
    profile: broadwell,
    profile: skylakex,
)]
mod sivmac {
    use crate::ffi::mac::Mac;
    use crate::ffi::reader::Reader;
    use crate::ffi::writer::Writer;

    #[repr(C)]
    pub struct SivMac(pub [u8; 44]);
    impl Mac for SivMac {
        const KEY_LEN: usize = 42;
        const TAG_LEN: usize = 43;
        const STRUCT_SIZE: usize = 44;
        const STRUCT_ALIGNMENT: usize = 1;
        #[inline(always)]
        fn init(&mut self, key: &[u8]) -> bool {
            false
        }
        #[inline(always)]
        fn sign(&self, message: Reader, tag: Writer) -> bool {
            false
        }
        #[inline(always)]
        fn verify(&self, message: Reader, tag: Reader) -> bool {
            false
        }
        #[inline(always)]
        fn is_supported() -> bool {
            false
        }
    }
}

#[test]
fn mac() {
    use crate::ffi::mac::Mac;
    let mut mac = sivmac::SivMac([0u8; 44]);
    assert!(!mac.init(&[]));
}
