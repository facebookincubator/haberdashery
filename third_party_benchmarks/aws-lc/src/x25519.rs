// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use aws_lc_sys::X25519;
use aws_lc_sys::X25519_public_from_private;

mod benchmarks {
    use super::*;

    #[perf_caliper::benchmark(
        library:aws-lc,
        algorithm:x25519,
        primitive:ecdh,
    )]
    fn public(iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let mut power = [0u8; 32];
        let mut point = [0u8; 32];
        measure.start();
        for _ in 0..iters {
            unsafe {
                unsafe { X25519_public_from_private(point.as_mut_ptr(), power.as_ptr()) };
            };
        }
        measure.stop();
    }

    #[perf_caliper::benchmark(
        library:aws-lc,
        algorithm:x25519,
        primitive:ecdh,
    )]
    fn ecdh(iters: u64, measure: &mut dyn perf_caliper::Measure) {
        let mut power = [0u8; 32];
        let mut point = [0u8; 32];
        let mut result = [0u8; 32];
        measure.start();
        for _ in 0..iters {
            unsafe { X25519(result.as_mut_ptr(), power.as_ptr(), point.as_ptr()) };
        }
        measure.stop();
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    // https://www.rfc-editor.org/rfc/rfc7748#section-6.1
    fn rfc7748_6_1() {
        {
            let power =
                hex::decode("0900000000000000000000000000000000000000000000000000000000000000")
                    .unwrap();
            let mut point = [0u8; 32];
            unsafe { X25519_public_from_private(point.as_mut_ptr(), power.as_ptr()) };
            assert_eq!(
                hex::encode(point),
                "422c8e7a6227d7bca1350b3e2bb7279f7897b87bb6854b783c60e80311ae3079"
            );
        }
        {
            let a_private =
                hex::decode("77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a")
                    .unwrap();
            let mut a_public = [0u8; 32];
            unsafe { X25519_public_from_private(a_public.as_mut_ptr(), a_private.as_ptr()) };
            assert_eq!(
                hex::encode(a_public),
                "8520f0098930a754748b7ddcb43ef75a0dbf3a0d26381af4eba4a98eaa9b4e6a"
            );
            let b_private =
                hex::decode("5dab087e624a8a4b79e17f8b83800ee66f3bb1292618b6fd1c2f8b27ff88e0eb")
                    .unwrap();
            let mut b_public = [0u8; 32];
            unsafe { X25519_public_from_private(b_public.as_mut_ptr(), b_private.as_ptr()) };
            assert_eq!(
                hex::encode(b_public),
                "de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f"
            );
            let mut result = [0u8; 32];
            assert_eq!(
                unsafe { X25519(result.as_mut_ptr(), a_private.as_ptr(), b_public.as_ptr(),) },
                1
            );
            assert_eq!(
                hex::encode(result),
                "4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742"
            );
            let mut result = [0u8; 32];
            assert_eq!(
                unsafe { X25519(result.as_mut_ptr(), a_private.as_ptr(), b_public.as_ptr(),) },
                1
            );
            assert_eq!(
                hex::encode(result),
                "4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742"
            );
        }
    }
}
