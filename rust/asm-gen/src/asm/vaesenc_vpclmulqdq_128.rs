// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::arch::x86_64::__m128i;

use intrinsics::__m128i::*;

use crate::clmul::clmul128foil::*;
use crate::intrinsics::m128i::M128i;
use crate::ops::ArrayOps;

#[inline]
pub fn vaesenc_vpclmulqdq_128<const N: usize>(
    aes_key: M128i,
    aes_data: &mut [M128i; N],
    auth_product: &mut ClMul128FoilProduct,
    auth_left: M128i,
    auth_right: M128i,
) {
    (*aes_data, *auth_product) = match N {
        4 => unsafe {
            #[transliteral::assembly]
            unsafe fn vaesenc_vpclmulqdq_128(
                aes_data: &mut [__m128i; 4],
                aes_key: __m128i,
                auth_left: __m128i,
                auth_right: __m128i,
                auth_product: &mut [__m128i; 3],
            ) {
                aes_data[0] = aes_data[0]._mm_aesenc_si128(aes_key);
                aes_data[1] = aes_data[1]._mm_aesenc_si128(aes_key);
                aes_data[2] = aes_data[2]._mm_aesenc_si128(aes_key);
                aes_data[3] = aes_data[3]._mm_aesenc_si128(aes_key);
                let mut tmp = auth_right._mm_clmulepi64_si128::<0x10>(auth_left);
                auth_product[1] = auth_product[1]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x00>(auth_left);
                auth_product[0] = auth_product[0]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x11>(auth_left);
                auth_product[2] = auth_product[2]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x01>(auth_left);
                auth_product[1] = auth_product[1]._mm_xor_si128(tmp);
            }
            let mut aes_data = aes_data.ops().map_into_generic();
            let mut auth_product = (*auth_product).into();
            vaesenc_vpclmulqdq_128(
                &mut aes_data,
                aes_key.into(),
                auth_left.into(),
                auth_right.into(),
                &mut auth_product,
            );
            (aes_data.ops().map_into_generic(), auth_product.into())
        },
        6 => unsafe {
            #[transliteral::assembly]
            unsafe fn vaesenc_vpclmulqdq_128(
                aes_data: &mut [__m128i; 6],
                aes_key: __m128i,
                auth_left: __m128i,
                auth_right: __m128i,
                auth_product: &mut [__m128i; 3],
            ) {
                aes_data[0] = aes_data[0]._mm_aesenc_si128(aes_key);
                aes_data[1] = aes_data[1]._mm_aesenc_si128(aes_key);
                aes_data[2] = aes_data[2]._mm_aesenc_si128(aes_key);
                aes_data[3] = aes_data[3]._mm_aesenc_si128(aes_key);
                aes_data[4] = aes_data[4]._mm_aesenc_si128(aes_key);
                aes_data[5] = aes_data[5]._mm_aesenc_si128(aes_key);
                let mut tmp = auth_right._mm_clmulepi64_si128::<0x10>(auth_left);
                auth_product[1] = auth_product[1]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x00>(auth_left);
                auth_product[0] = auth_product[0]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x11>(auth_left);
                auth_product[2] = auth_product[2]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x01>(auth_left);
                auth_product[1] = auth_product[1]._mm_xor_si128(tmp);
            }
            let mut aes_data = aes_data.ops().map_into_generic();
            let mut auth_product = (*auth_product).into();
            vaesenc_vpclmulqdq_128(
                &mut aes_data,
                aes_key.into(),
                auth_left.into(),
                auth_right.into(),
                &mut auth_product,
            );
            (aes_data.ops().map_into_generic(), auth_product.into())
        },
        8 => unsafe {
            #[transliteral::assembly]
            unsafe fn vaesenc_vpclmulqdq_128(
                aes_data: &mut [__m128i; 8],
                aes_key: __m128i,
                auth_left: __m128i,
                auth_right: __m128i,
                auth_product: &mut [__m128i; 3],
            ) {
                aes_data[0] = aes_data[0]._mm_aesenc_si128(aes_key);
                aes_data[1] = aes_data[1]._mm_aesenc_si128(aes_key);
                aes_data[2] = aes_data[2]._mm_aesenc_si128(aes_key);
                aes_data[3] = aes_data[3]._mm_aesenc_si128(aes_key);
                aes_data[4] = aes_data[4]._mm_aesenc_si128(aes_key);
                aes_data[5] = aes_data[5]._mm_aesenc_si128(aes_key);
                aes_data[6] = aes_data[6]._mm_aesenc_si128(aes_key);
                aes_data[7] = aes_data[7]._mm_aesenc_si128(aes_key);
                let mut tmp = auth_right._mm_clmulepi64_si128::<0x10>(auth_left);
                auth_product[1] = auth_product[1]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x00>(auth_left);
                auth_product[0] = auth_product[0]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x11>(auth_left);
                auth_product[2] = auth_product[2]._mm_xor_si128(tmp);
                tmp = auth_right._mm_clmulepi64_si128::<0x01>(auth_left);
                auth_product[1] = auth_product[1]._mm_xor_si128(tmp);
            }
            let mut aes_data = aes_data.ops().map_into_generic();
            let mut auth_product = (*auth_product).into();
            vaesenc_vpclmulqdq_128(
                &mut aes_data,
                aes_key.into(),
                auth_left.into(),
                auth_right.into(),
                &mut auth_product,
            );
            (aes_data.ops().map_into_generic(), auth_product.into())
        },
        _ => unimplemented!(),
    };
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn compare_reference_impl() {
        if !cpuid::haswell().is_supported() {
            return;
        }
        fn compare_reference_impl<const N: usize>() {
            let aes_key = M128i::random();
            let mut aes_data: [M128i; N] = random::random();
            let mut auth_product = M128i::random().clmul128foil(M128i::random());
            let auth_left = M128i::random();
            let auth_right = M128i::random();

            let aes_data_result = aes_data.map(|data| data.aesenc(aes_key));
            let auth_product_result = auth_product ^ (auth_left.clmul128foil(auth_right));
            vaesenc_vpclmulqdq_128(
                aes_key,
                &mut aes_data,
                &mut auth_product,
                auth_left,
                auth_right,
            );
            assert_eq!(aes_data, aes_data_result);
            assert_eq!(auth_product, auth_product_result);
        }
        for _i in 0..128 {
            compare_reference_impl::<4>();
            compare_reference_impl::<6>();
            compare_reference_impl::<8>();
        }
    }
}
