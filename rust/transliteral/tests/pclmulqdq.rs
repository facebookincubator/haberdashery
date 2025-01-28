// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;

use intrinsics::__m128i::*;

#[test]
fn pclmulqdq() {
    #[transliteral::assembly]
    unsafe fn pclmulqdq(lhs: __m128i, rhs: __m128i, output: &mut [__m128i; 4]) {
        output[0] = lhs._mm_clmulepi64_si128::<0x00>(rhs);
        output[1] = lhs._mm_clmulepi64_si128::<0x01>(rhs);
        output[2] = lhs._mm_clmulepi64_si128::<0x10>(rhs);
        output[3] = lhs._mm_clmulepi64_si128::<0x11>(rhs);
    }
    unsafe {
        for _i in 0..128 {
            let lhs = random::__m128i();
            let rhs = random::__m128i();
            assert_eq!(
                {
                    let mut output: [__m128i; 4] = random::random();
                    pclmulqdq(lhs, rhs, &mut output);
                    core::mem::transmute::<_, [u8; 64]>(output)
                },
                {
                    let mut output: [__m128i; 4] = random::random();
                    pclmulqdq_ref(lhs, rhs, &mut output);
                    core::mem::transmute::<_, [u8; 64]>(output)
                }
            );
        }
    }
}
