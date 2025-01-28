// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::wrapper::evp_pkey::EvpPkey;
use crate::wrapper::evp_pkey_ctx::EvpPkeyCtx;

const OUT_LEN: usize = 32;
const PUBLIC_KEY_LEN: usize = 32;
const PRIVATE_KEY_LEN: usize = 32;
const CURVE25519_NID: i32 = openssl_sys::NID_X25519;

pub struct Curve25519Private(EvpPkey);
impl Curve25519Private {
    #[inline]
    pub fn generate() -> Option<Self> {
        let mut ctx = EvpPkeyCtx::from_nid(CURVE25519_NID)?;
        if !ctx.keygen_init() {
            return None;
        }
        ctx.keygen().map(Self)
    }
    #[inline]
    pub fn public(&self) -> Curve25519Public {
        Curve25519Public(self.0.clone())
    }
    #[inline]
    pub fn serialize(&self) -> [u8; PRIVATE_KEY_LEN] {
        let mut out = [0u8; PRIVATE_KEY_LEN];
        self.0.private_key_bytes(&mut out).unwrap();
        out
    }
    #[inline]
    pub fn deserialize(bytes: &[u8]) -> Option<Self> {
        EvpPkey::from_private_key_bytes(CURVE25519_NID, bytes).map(Self)
    }
    #[inline]
    pub fn ecdh(&self, peer: &Curve25519Public) -> Option<[u8; OUT_LEN]> {
        let mut ctx = EvpPkeyCtx::from_pkey(&self.0)?;
        if !ctx.derive_init() {
            return None;
        }
        if !ctx.derive_set_peer(&peer.0) {
            return None;
        }
        let mut out = [0u8; OUT_LEN];
        ctx.derive(&mut out)?;
        Some(out)
    }
}
pub struct Curve25519Public(EvpPkey);
impl Curve25519Public {
    #[inline]
    pub fn serialize(&self) -> [u8; PUBLIC_KEY_LEN] {
        let mut out = [0u8; PUBLIC_KEY_LEN];
        self.0.public_key_bytes(&mut out).unwrap();
        out
    }
    #[inline]
    pub fn deserialize(bytes: &[u8]) -> Option<Self> {
        EvpPkey::from_public_key_bytes(CURVE25519_NID, bytes).map(Self)
    }
}
impl From<Curve25519Private> for Curve25519Public {
    fn from(curve: Curve25519Private) -> Self {
        Self(curve.0)
    }
}

#[perf_caliper::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn keygen(iters: u64, measure: &mut dyn perf_caliper::Measure) {
    measure.start();
    for _ in 0..iters {
        Curve25519Private::generate();
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn ecdh(iters: u64, measure: &mut dyn perf_caliper::Measure) {
    let private = Curve25519Private::generate().unwrap();
    let public = Curve25519Private::generate().unwrap().public();
    measure.start();
    for _ in 0..iters {
        private.ecdh(&public);
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn derive_init(iters: u64, measure: &mut dyn perf_caliper::Measure) {
    let private = Curve25519Private::generate().unwrap();
    let mut ctx = EvpPkeyCtx::from_pkey(&private.0).unwrap();
    assert!(ctx.derive_init());
    measure.start();
    for _ in 0..iters {
        ctx.derive_init();
    }
    measure.stop();
}

#[perf_caliper::benchmark(
    library:openssl,
    primitive:ecdh,
    algorithm:curve25519,
)]
fn ecdh_raw(iters: u64, measure: &mut dyn perf_caliper::Measure) {
    let private = Curve25519Private::generate().unwrap();
    let public = Curve25519Private::generate().unwrap().public();
    let mut out = [0u8; OUT_LEN];
    let mut ctx = EvpPkeyCtx::from_pkey(&private.0).unwrap();
    assert!(ctx.derive_init());
    assert!(ctx.derive_set_peer(&public.0));
    ctx.derive(&mut out).unwrap();
    measure.start();
    for _ in 0..iters {
        ctx.derive(&mut out).unwrap();
    }
    measure.stop();
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn symmetric() {
        let a_private = Curve25519Private::generate().unwrap();
        let b_private = Curve25519Private::generate().unwrap();

        let a_public = a_private.public();
        let b_public = b_private.public();

        let secret = a_private.ecdh(&b_public).unwrap();
        assert_eq!(secret, b_private.ecdh(&a_public).unwrap());
        assert_ne!(secret, [0u8; OUT_LEN]);
    }

    #[test]
    fn rfc() {
        let a_private = Curve25519Private::deserialize(
            &hex::decode("77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a")
                .unwrap(),
        )
        .unwrap();
        let b_private = Curve25519Private::deserialize(
            &hex::decode("5dab087e624a8a4b79e17f8b83800ee66f3bb1292618b6fd1c2f8b27ff88e0eb")
                .unwrap(),
        )
        .unwrap();

        let a_public = Curve25519Public::deserialize(
            &hex::decode("8520f0098930a754748b7ddcb43ef75a0dbf3a0d26381af4eba4a98eaa9b4e6a")
                .unwrap(),
        )
        .unwrap();
        let b_public = Curve25519Public::deserialize(
            &hex::decode("de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f")
                .unwrap(),
        )
        .unwrap();
        let secret = a_private.ecdh(&b_public).unwrap();
        assert_eq!(secret, b_private.ecdh(&a_public).unwrap());
        assert_eq!(
            secret.as_slice(),
            &hex::decode("4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742")
                .unwrap(),
        );
    }
}
