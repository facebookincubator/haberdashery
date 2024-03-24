// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;
use ffi_util::Writer;
use haberdashery_asm_gen::ffi::mac::Mac;
use haberdashery_asm_gen::is_supported::is_supported;
use haberdashery_asm_gen::sivmac::SivMacKey as Base;

const LANES: usize = 8;

#[haberdashery_template_proc::constants(
    algorithm: sivmac,
)]
mod constants {
    pub const KEY_LEN: usize = 32;
    pub const TAG_LEN: usize = 16;
}
#[haberdashery_template_proc::mac(
    algorithm: sivmac,
    prefix: haberdashery,
    profile: haswell,
    profile: skylake,
)]
pub struct SivMac([core::arch::x86_64::__m128i; 23]);
impl Mac for SivMac {
    type BaseImpl = Base<LANES>;
    #[inline(always)]
    fn init(&mut self, key: &[u8]) -> bool {
        self.to_base_mut().init(key)
    }
    #[inline(always)]
    fn sign(&self, message: Reader, tag: Writer) -> bool {
        self.to_base().sign(message, tag)
    }
    #[inline(always)]
    fn verify(&self, message: Reader, tag: Reader) -> bool {
        self.to_base().verify(message, tag)
    }
    #[inline(always)]
    fn is_supported() -> bool {
        is_supported()
    }
}
