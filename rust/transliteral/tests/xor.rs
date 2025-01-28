// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;

use intrinsics::__m128i::*;

#[test]
fn xor() {
    #[transliteral::assembly]
    unsafe fn xor(lhs: &mut __m128i, rhs: __m128i) {
        *lhs = lhs._mm_xor_si128(rhs);
    }
    unsafe {
        for _i in 0..128 {
            let lhs = random::__m128i();
            let rhs = random::__m128i();
            assert_eq!(
                {
                    let mut lhs = lhs;
                    xor(&mut lhs, rhs);
                    core::mem::transmute::<_, [u8; 16]>(lhs)
                },
                {
                    let mut lhs = lhs;
                    xor_ref(&mut lhs, rhs);
                    core::mem::transmute::<_, [u8; 16]>(lhs)
                }
            );
        }
    }
}

#[test]
fn xor_array() {
    #[transliteral::assembly]
    unsafe fn xor(lhs: &mut [__m128i; 3], rhs: [__m128i; 3]) {
        lhs[0] = lhs[0]._mm_xor_si128(rhs[0]);
        lhs[1] = lhs[1]._mm_xor_si128(rhs[1]);
        lhs[2] = lhs[2]._mm_xor_si128(rhs[2]);
    }
    unsafe {
        for _i in 0..128 {
            let lhs: [__m128i; 3] = random::random();
            let rhs: [__m128i; 3] = random::random();
            assert_eq!(
                {
                    let mut lhs = lhs;
                    xor(&mut lhs, rhs);
                    core::mem::transmute::<_, [u8; 48]>(lhs)
                },
                {
                    let mut lhs = lhs;
                    xor_ref(&mut lhs, rhs);
                    core::mem::transmute::<_, [u8; 48]>(lhs)
                }
            );
        }
    }
}
