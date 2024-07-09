// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::clmulfoil::*;
use crate::intrinsics::m128i::M128i;

#[inline]
pub fn vaesenc_vpclmulqdq_128<const N: usize>(
    aes_key: M128i,
    aes_data: &mut [M128i; N],
    auth_product: &mut ClMulFoilProduct<M128i>,
    auth_left: M128i,
    auth_right: M128i,
) {
    match N {
        4 => unsafe {
            core::arch::asm!(
                "vaesenc {key}, {inout0}, {inout0}",
                "vaesenc {key}, {inout1}, {inout1}",
                "vaesenc {key}, {inout2}, {inout2}",
                "vaesenc {key}, {inout3}, {inout3}",
                "vpclmulqdq $0x10, {left}, {right}, {tmp}",
                "vpxor {tmp}, {mid}, {mid}",
                "vpclmulqdq $0x00, {left}, {right}, {tmp}",
                "vpxor {tmp}, {lo}, {lo}",
                "vpclmulqdq $0x11, {left}, {right}, {tmp}",
                "vpxor {tmp}, {hi}, {hi}",
                "vpclmulqdq $0x01, {left}, {right}, {tmp}",
                "vpxor {tmp}, {mid}, {mid}",
                inout0 = inout(xmm_reg) aes_data[0].0,
                inout1 = inout(xmm_reg) aes_data[1].0,
                inout2 = inout(xmm_reg) aes_data[2].0,
                inout3 = inout(xmm_reg) aes_data[3].0,
                key = in(xmm_reg) *aes_key,
                left = in(xmm_reg) *auth_left,
                right = in(xmm_reg) *auth_right,
                lo = inout(xmm_reg) *auth_product.lo,
                mid = inout(xmm_reg) *auth_product.mid,
                hi = inout(xmm_reg) *auth_product.hi,
                tmp = out(xmm_reg) _,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
        },
        6 => unsafe {
            core::arch::asm!(
                "vaesenc {key}, {inout0}, {inout0}",
                "vaesenc {key}, {inout1}, {inout1}",
                "vaesenc {key}, {inout2}, {inout2}",
                "vaesenc {key}, {inout3}, {inout3}",
                "vaesenc {key}, {inout4}, {inout4}",
                "vaesenc {key}, {inout5}, {inout5}",
                "vpclmulqdq $0x10, {left}, {right}, {tmp}",
                "vpxor {tmp}, {mid}, {mid}",
                "vpclmulqdq $0x00, {left}, {right}, {tmp}",
                "vpxor {tmp}, {lo}, {lo}",
                "vpclmulqdq $0x11, {left}, {right}, {tmp}",
                "vpxor {tmp}, {hi}, {hi}",
                "vpclmulqdq $0x01, {left}, {right}, {tmp}",
                "vpxor {tmp}, {mid}, {mid}",
                inout0 = inout(xmm_reg) aes_data[0].0,
                inout1 = inout(xmm_reg) aes_data[1].0,
                inout2 = inout(xmm_reg) aes_data[2].0,
                inout3 = inout(xmm_reg) aes_data[3].0,
                inout4 = inout(xmm_reg) aes_data[4].0,
                inout5 = inout(xmm_reg) aes_data[5].0,
                key = in(xmm_reg) *aes_key,
                left = in(xmm_reg) *auth_left,
                right = in(xmm_reg) *auth_right,
                lo = inout(xmm_reg) *auth_product.lo,
                mid = inout(xmm_reg) *auth_product.mid,
                hi = inout(xmm_reg) *auth_product.hi,
                tmp = out(xmm_reg) _,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
        },
        8 => unsafe {
            core::arch::asm!(
                "vaesenc {key}, {inout0}, {inout0}",
                "vaesenc {key}, {inout1}, {inout1}",
                "vaesenc {key}, {inout2}, {inout2}",
                "vaesenc {key}, {inout3}, {inout3}",
                "vaesenc {key}, {inout4}, {inout4}",
                "vaesenc {key}, {inout5}, {inout5}",
                "vaesenc {key}, {inout6}, {inout6}",
                "vaesenc {key}, {inout7}, {inout7}",
                "vpclmulqdq $0x10, {left}, {right}, {tmp}",
                "vpxor {tmp}, {mid}, {mid}",
                "vpclmulqdq $0x00, {left}, {right}, {tmp}",
                "vpxor {tmp}, {lo}, {lo}",
                "vpclmulqdq $0x11, {left}, {right}, {tmp}",
                "vpxor {tmp}, {hi}, {hi}",
                "vpclmulqdq $0x01, {left}, {right}, {tmp}",
                "vpxor {tmp}, {mid}, {mid}",
                inout0 = inout(xmm_reg) aes_data[0].0,
                inout1 = inout(xmm_reg) aes_data[1].0,
                inout2 = inout(xmm_reg) aes_data[2].0,
                inout3 = inout(xmm_reg) aes_data[3].0,
                inout4 = inout(xmm_reg) aes_data[4].0,
                inout5 = inout(xmm_reg) aes_data[5].0,
                inout6 = inout(xmm_reg) aes_data[6].0,
                inout7 = inout(xmm_reg) aes_data[7].0,
                key = in(xmm_reg) *aes_key,
                left = in(xmm_reg) *auth_left,
                right = in(xmm_reg) *auth_right,
                lo = inout(xmm_reg) *auth_product.lo,
                mid = inout(xmm_reg) *auth_product.mid,
                hi = inout(xmm_reg) *auth_product.hi,
                tmp = out(xmm_reg) _,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
        },
        _ => unimplemented!(),
    }
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
            let mut auth_product = M128i::random().clmul_foil(M128i::random());
            let auth_left = M128i::random();
            let auth_right = M128i::random();

            let aes_data_result = aes_data.map(|data| data.aesenc(aes_key));
            let auth_product_result = auth_product ^ (auth_left.clmul_foil(auth_right));
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
