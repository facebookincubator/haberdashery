// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ffi::c_int;
use core::ptr::null_mut;

use openssl_sys::*;

use crate::ctx::Ctx;
use crate::ctx::Free;

const OUT_LEN: usize = 32;
const PUBLIC_KEY_LEN: usize = 32;
const PRIVATE_KEY_LEN: usize = 32;
const NULL_ENGINE: *mut ENGINE = null_mut();

pub struct PkeyCtx(Ctx<EVP_PKEY_CTX>);
impl PkeyCtx {
    #[inline(always)]
    pub fn from_nid(nid: c_int) -> Option<Self> {
        Ctx::new(unsafe { EVP_PKEY_CTX_new_id(nid, NULL_ENGINE) }).map(Self)
    }
    #[inline(always)]
    pub fn from_pkey(pkey: &mut Pkey) -> Option<Self> {
        Ctx::new(unsafe { EVP_PKEY_CTX_new(pkey.0.as_mut_ptr(), NULL_ENGINE) }).map(Self)
    }
    #[inline(always)]
    pub fn keygen_init(&mut self) -> bool {
        (unsafe { EVP_PKEY_keygen_init(self.0.as_mut_ptr()) }) > 0
    }
    #[inline(always)]
    pub fn keygen(&mut self) -> Option<Pkey> {
        let mut ptr = null_mut();
        (unsafe { EVP_PKEY_keygen(self.0.as_mut_ptr(), &mut ptr) } > 0)
            .then(|| Ctx::new(ptr).map(Pkey))
            .flatten()
    }
    #[inline(always)]
    pub fn derive_init(&mut self) -> bool {
        (unsafe { EVP_PKEY_derive_init(self.0.as_mut_ptr()) }) > 0
    }
    #[inline(always)]
    pub fn derive_set_peer(&mut self, peer: &mut Pkey) -> bool {
        (unsafe { EVP_PKEY_derive_set_peer(self.0.as_mut_ptr(), peer.0.as_mut_ptr()) }) > 0
    }
    #[inline(always)]
    pub fn derive_len(&mut self) -> Option<usize> {
        let mut out_len = 0;
        let key = null_mut(); // setting to null gives the length
        (unsafe { EVP_PKEY_derive(self.0.as_mut_ptr(), key, &mut out_len) } > 0).then(|| out_len)
    }
    #[inline(always)]
    pub fn derive(&mut self) -> Option<[u8; OUT_LEN]> {
        let mut out = [0u8; OUT_LEN];
        let mut out_len = out.len();
        (unsafe { EVP_PKEY_derive(self.0.as_mut_ptr(), out.as_mut_ptr(), &mut out_len) } > 0
            && out_len == out.len())
        .then(|| out)
    }
}
pub struct Pkey(Ctx<EVP_PKEY>);
impl Pkey {
    #[inline(always)]
    pub fn from_nid(nid: c_int) -> Option<Self> {
        Self::from_ctx(&mut PkeyCtx::from_nid(nid)?)
    }
    #[inline(always)]
    pub fn from_ctx(ctx: &mut PkeyCtx) -> Option<Self> {
        ctx.keygen_init().then(|| ctx.keygen()).flatten()
    }
    #[inline(always)]
    pub fn public_key_bytes(&self) -> Option<[u8; PUBLIC_KEY_LEN]> {
        let mut out = [0u8; PUBLIC_KEY_LEN];
        let mut out_len = out.len();
        (unsafe { EVP_PKEY_get_raw_public_key(self.0.as_ptr(), out.as_mut_ptr(), &mut out_len) }
            > 0
            && out_len == out.len())
        .then(|| out)
    }
    #[inline(always)]
    pub fn from_public_key_bytes(nid: c_int, bytes: &[u8]) -> Option<Self> {
        Ctx::new(unsafe {
            EVP_PKEY_new_raw_public_key(nid, NULL_ENGINE, bytes.as_ptr(), bytes.len())
        })
        .map(Self)
    }
    #[inline(always)]
    pub fn private_key_bytes(&self) -> Option<[u8; PUBLIC_KEY_LEN]> {
        let mut out = [0u8; PRIVATE_KEY_LEN];
        let mut out_len = out.len();
        (unsafe { EVP_PKEY_get_raw_private_key(self.0.as_ptr(), out.as_mut_ptr(), &mut out_len) }
            > 0
            && out_len == out.len())
        .then(|| out)
    }
    #[inline(always)]
    pub fn from_private_key_bytes(nid: c_int, bytes: &[u8]) -> Option<Self> {
        Ctx::new(unsafe {
            EVP_PKEY_new_raw_private_key(nid, NULL_ENGINE, bytes.as_ptr(), bytes.len())
        })
        .map(Self)
    }
    #[inline(always)]
    pub fn ecdh(&mut self, peer: &mut Self) -> Option<[u8; OUT_LEN]> {
        let mut ctx = PkeyCtx::from_pkey(self)?;
        (ctx.derive_init() && ctx.derive_set_peer(peer))
            .then(|| {
                debug_assert_eq!(ctx.derive_len()?, OUT_LEN);
                ctx.derive()
            })
            .flatten()
    }
}
impl Free for EVP_PKEY_CTX {
    #[inline(always)]
    unsafe fn free(v: *mut Self) {
        unsafe { EVP_PKEY_CTX_free(v) }
    }
}
impl Free for EVP_PKEY {
    #[inline(always)]
    unsafe fn free(v: *mut Self) {
        unsafe { EVP_PKEY_free(v) };
    }
}

#[nano_bench::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn keygen_raw(iters: u64, measure: &mut dyn nano_bench::Measure) {
    let nid = NID_X25519;
    let mut ctx = PkeyCtx::from_nid(nid).unwrap();
    ctx.keygen_init();
    measure.start();
    for _ in 0..iters {
        ctx.keygen();
    }
    measure.stop();
}

#[nano_bench::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn keygen(iters: u64, measure: &mut dyn nano_bench::Measure) {
    let nid = NID_X25519;
    measure.start();
    for _ in 0..iters {
        Pkey::from_nid(nid).unwrap();
    }
    measure.stop();
}

#[nano_bench::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn ecdh(iters: u64, measure: &mut dyn nano_bench::Measure) {
    let nid = NID_X25519;

    let mut key_a = Pkey::from_nid(nid).unwrap();
    let mut key_b = Pkey::from_nid(nid).unwrap();
    measure.start();
    for _ in 0..iters {
        key_a.ecdh(&mut key_b).unwrap();
    }
    measure.stop();
}

#[nano_bench::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn ecdh_raw(iters: u64, measure: &mut dyn nano_bench::Measure) {
    let nid = NID_X25519;

    let mut key_a = Pkey::from_nid(nid).unwrap();
    let mut key_b = Pkey::from_nid(nid).unwrap();
    let mut ctx = PkeyCtx::from_pkey(&mut key_a).unwrap();
    ctx.derive_init();
    ctx.derive_set_peer(&mut key_b);
    measure.start();
    for _ in 0..iters {
        ctx.derive();
    }
    measure.stop();
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn symmetric() {
        let nid = NID_X25519;

        let mut key_a = Pkey::from_nid(nid).unwrap();
        let mut key_b = Pkey::from_nid(nid).unwrap();
        let secret = key_a.ecdh(&mut key_b).unwrap();
        assert_eq!(secret, key_b.ecdh(&mut key_a).unwrap());
        assert_ne!(secret, [0u8; OUT_LEN]);

        let a_pub_bytes = key_a.public_key_bytes().unwrap();
        let mut key_a = Pkey::from_public_key_bytes(nid, &a_pub_bytes).unwrap();
        assert_eq!(secret, key_b.ecdh(&mut key_a).unwrap());
    }

    #[test]
    fn rfc() {
        let nid = NID_X25519;
        let mut a_private = Pkey::from_private_key_bytes(
            nid,
            &hex::decode("77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a")
                .unwrap(),
        )
        .unwrap();
        let mut b_private = Pkey::from_private_key_bytes(
            nid,
            &hex::decode("5dab087e624a8a4b79e17f8b83800ee66f3bb1292618b6fd1c2f8b27ff88e0eb")
                .unwrap(),
        )
        .unwrap();

        let mut a_public = Pkey::from_public_key_bytes(
            nid,
            &hex::decode("8520f0098930a754748b7ddcb43ef75a0dbf3a0d26381af4eba4a98eaa9b4e6a")
                .unwrap(),
        )
        .unwrap();
        let mut b_public = Pkey::from_public_key_bytes(
            nid,
            &hex::decode("de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f")
                .unwrap(),
        )
        .unwrap();
        assert_eq!(
            a_private.ecdh(&mut b_public).unwrap().as_slice(),
            &hex::decode("4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742")
                .unwrap(),
        );
        assert_eq!(
            b_private.ecdh(&mut a_public).unwrap().as_slice(),
            &hex::decode("4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742")
                .unwrap(),
        );
    }
}
