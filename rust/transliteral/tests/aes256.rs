// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;

use intrinsics::__m128i::*;

#[test]
fn aesenc() {
    #[transliteral::assembly]
    unsafe fn aesenc(key: __m128i, data: &mut __m128i) {
        *data = data._mm_aesenc_si128(key);
    }
    unsafe {
        for _i in 0..128 {
            let key = random::__m128i();
            let data = random::__m128i();
            assert_eq!(
                {
                    let mut data = data;
                    aesenc(key, &mut data);
                    core::mem::transmute::<_, [u8; 16]>(data)
                },
                {
                    let mut data = data;
                    aesenc_ref(key, &mut data);
                    core::mem::transmute::<_, [u8; 16]>(data)
                }
            );
        }
    }
}

#[test]
fn aesenclast() {
    #[transliteral::assembly]
    unsafe fn aesenclast(key: __m128i, data: &mut __m128i) {
        *data = data._mm_aesenclast_si128(key);
    }
    unsafe {
        for _i in 0..128 {
            let key = random::__m128i();
            let data = random::__m128i();
            assert_eq!(
                {
                    let mut data = data;
                    aesenclast(key, &mut data);
                    core::mem::transmute::<_, [u8; 16]>(data)
                },
                {
                    let mut data = data;
                    aesenclast_ref(key, &mut data);
                    core::mem::transmute::<_, [u8; 16]>(data)
                }
            );
        }
    }
}
#[test]
fn aes256() {
    #[transliteral::assembly]
    unsafe fn aes256(key: [__m128i; 15], inout: &mut __m128i) {
        *inout = inout._mm_xor_si128(key[0]);
        *inout = inout._mm_aesenc_si128(key[1]);
        *inout = inout._mm_aesenc_si128(key[2]);
        *inout = inout._mm_aesenc_si128(key[3]);
        *inout = inout._mm_aesenc_si128(key[4]);
        *inout = inout._mm_aesenc_si128(key[5]);
        *inout = inout._mm_aesenc_si128(key[6]);
        *inout = inout._mm_aesenc_si128(key[7]);
        *inout = inout._mm_aesenc_si128(key[8]);
        *inout = inout._mm_aesenc_si128(key[9]);
        *inout = inout._mm_aesenc_si128(key[10]);
        *inout = inout._mm_aesenc_si128(key[11]);
        *inout = inout._mm_aesenc_si128(key[12]);
        *inout = inout._mm_aesenc_si128(key[13]);
        *inout = inout._mm_aesenc_si128(key[14]);
    }

    unsafe {
        for _i in 0..128 {
            let key: [__m128i; 15] = random::random();
            let data = random::__m128i();
            assert_eq!(
                {
                    let mut data = data;
                    aes256(key, &mut data);
                    core::mem::transmute::<_, [u8; 16]>(data)
                },
                {
                    let mut data = data;
                    aes256_ref(key, &mut data);
                    core::mem::transmute::<_, [u8; 16]>(data)
                }
            );
        }
    }
}
#[test]
fn aesenc_4lane() {
    #[transliteral::assembly]
    unsafe fn aesenc_4lane(key: __m128i, data: &mut [__m128i; 4]) {
        data[0] = data[0]._mm_aesenc_si128(key);
        data[1] = data[1]._mm_aesenc_si128(key);
        data[2] = data[2]._mm_aesenc_si128(key);
        data[3] = data[3]._mm_aesenc_si128(key);
    }

    unsafe {
        for _i in 0..128 {
            let key = random::__m128i();
            let data: [__m128i; 4] = random::random();
            assert_eq!(
                {
                    let mut data = data;
                    aesenc_4lane(key, &mut data);
                    core::mem::transmute::<_, [u8; 64]>(data)
                },
                {
                    let mut data = data;
                    aesenc_4lane_ref(key, &mut data);
                    core::mem::transmute::<_, [u8; 64]>(data)
                }
            );
        }
    }
}
