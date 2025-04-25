// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::*;

use intrinsics::__m128i::*;

use crate::block::Block128;

#[inline]
pub fn vaesenc<const N: usize>(data: &mut [Block128; N], key: Block128) {
    if cfg!(feature = "aes") {
        vaesenc_asm(data, key);
    } else {
        vaesenc_ref(data, key);
    }
}

#[inline]
pub fn vaesenclast<const N: usize>(data: &mut [Block128; N], key: Block128) {
    if cfg!(feature = "aes") {
        vaesenclast_asm(data, key);
    } else {
        vaesenclast_ref(data, key);
    }
}

#[inline]
fn vaesenc_ref<const N: usize>(data: &mut [Block128; N], key: Block128) {
    data.iter_mut().for_each(|data| *data = data.aesenc(key));
}

#[inline]
fn vaesenclast_ref<const N: usize>(data: &mut [Block128; N], key: Block128) {
    data.iter_mut()
        .for_each(|data| *data = data.aesenclast(key));
}

#[inline]
fn vaesenc_asm<const N: usize>(data: &mut [Block128; N], key: Block128) {
    match N {
        4 => unsafe {
            #[transliteral::assembly]
            unsafe fn aesenc(data: &mut [__m128i; 4], key: __m128i) {
                data[0] = data[0]._mm_aesenc_si128(key);
                data[1] = data[1]._mm_aesenc_si128(key);
                data[2] = data[2]._mm_aesenc_si128(key);
                data[3] = data[3]._mm_aesenc_si128(key);
            }
            *data = {
                let mut data = core::array::from_fn(|i| data[i].into());
                aesenc(&mut data, key.into());
                core::array::from_fn(|i| data[i].into())
            };
        },
        6 => unsafe {
            #[transliteral::assembly]
            unsafe fn aesenc(data: &mut [__m128i; 6], key: __m128i) {
                data[0] = data[0]._mm_aesenc_si128(key);
                data[1] = data[1]._mm_aesenc_si128(key);
                data[2] = data[2]._mm_aesenc_si128(key);
                data[3] = data[3]._mm_aesenc_si128(key);
                data[4] = data[4]._mm_aesenc_si128(key);
                data[5] = data[5]._mm_aesenc_si128(key);
            }
            *data = {
                let mut data = core::array::from_fn(|i| data[i].into());
                aesenc(&mut data, key.into());
                core::array::from_fn(|i| data[i].into())
            };
        },
        8 => unsafe {
            #[transliteral::assembly]
            unsafe fn aesenc(data: &mut [__m128i; 8], key: __m128i) {
                data[0] = data[0]._mm_aesenc_si128(key);
                data[1] = data[1]._mm_aesenc_si128(key);
                data[2] = data[2]._mm_aesenc_si128(key);
                data[3] = data[3]._mm_aesenc_si128(key);
                data[4] = data[4]._mm_aesenc_si128(key);
                data[5] = data[5]._mm_aesenc_si128(key);
                data[6] = data[6]._mm_aesenc_si128(key);
                data[7] = data[7]._mm_aesenc_si128(key);
            }
            *data = {
                let mut data = core::array::from_fn(|i| data[i].into());
                aesenc(&mut data, key.into());
                core::array::from_fn(|i| data[i].into())
            };
        },
        _ => vaesenc_ref(data, key),
    }
}

#[inline]
fn vaesenclast_asm<const N: usize>(data: &mut [Block128; N], key: Block128) {
    match N {
        4 => unsafe {
            #[transliteral::assembly]
            unsafe fn aesenclast(data: &mut [__m128i; 4], key: __m128i) {
                data[0] = data[0]._mm_aesenclast_si128(key);
                data[1] = data[1]._mm_aesenclast_si128(key);
                data[2] = data[2]._mm_aesenclast_si128(key);
                data[3] = data[3]._mm_aesenclast_si128(key);
            }
            *data = {
                let mut data = core::array::from_fn(|i| data[i].into());
                aesenclast(&mut data, key.into());
                core::array::from_fn(|i| data[i].into())
            };
        },
        6 => unsafe {
            #[transliteral::assembly]
            unsafe fn aesenclast(data: &mut [__m128i; 6], key: __m128i) {
                data[0] = data[0]._mm_aesenclast_si128(key);
                data[1] = data[1]._mm_aesenclast_si128(key);
                data[2] = data[2]._mm_aesenclast_si128(key);
                data[3] = data[3]._mm_aesenclast_si128(key);
                data[4] = data[4]._mm_aesenclast_si128(key);
                data[5] = data[5]._mm_aesenclast_si128(key);
            }
            *data = {
                let mut data = core::array::from_fn(|i| data[i].into());
                aesenclast(&mut data, key.into());
                core::array::from_fn(|i| data[i].into())
            };
        },
        8 => unsafe {
            #[transliteral::assembly]
            unsafe fn aesenclast(data: &mut [__m128i; 8], key: __m128i) {
                data[0] = data[0]._mm_aesenclast_si128(key);
                data[1] = data[1]._mm_aesenclast_si128(key);
                data[2] = data[2]._mm_aesenclast_si128(key);
                data[3] = data[3]._mm_aesenclast_si128(key);
                data[4] = data[4]._mm_aesenclast_si128(key);
                data[5] = data[5]._mm_aesenclast_si128(key);
                data[6] = data[6]._mm_aesenclast_si128(key);
                data[7] = data[7]._mm_aesenclast_si128(key);
            }
            *data = {
                let mut data = core::array::from_fn(|i| data[i].into());
                aesenclast(&mut data, key.into());
                core::array::from_fn(|i| data[i].into())
            };
        },
        _ => vaesenclast_ref(data, key),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_vaesenc() {
        fn compare<const N: usize>() {
            let key = Block128::random();
            let mut data_ref = [(); N].map(|()| Block128::random());
            let mut data_asm = data_ref.clone();
            vaesenc_ref(&mut data_ref, key);
            vaesenc_asm(&mut data_asm, key);
            assert_eq!(data_ref, data_asm);
        }
        for _i in 0..128 {
            compare::<1>();
            compare::<4>();
            compare::<6>();
            compare::<8>();
        }
    }
    #[test]
    fn test_vaesenclast() {
        fn compare<const N: usize>() {
            let key = Block128::random();
            let mut data_ref = [(); N].map(|()| Block128::random());
            let mut data_asm = data_ref.clone();
            vaesenclast_ref(&mut data_ref, key);
            vaesenclast_asm(&mut data_asm, key);
            assert_eq!(data_ref, data_asm);
        }
        for _i in 0..128 {
            compare::<1>();
            compare::<4>();
            compare::<6>();
            compare::<8>();
        }
    }
}
