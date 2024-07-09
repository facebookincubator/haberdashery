// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::intrinsics::m128i::M128i;

#[inline]
pub fn vaesenc<const N: usize>(data: &mut [M128i; N], key: M128i) {
    if cfg!(feature = "aes") {
        vaesenc_asm(data, key);
    } else {
        vaesenc_ref(data, key);
    }
}

#[inline]
pub fn vaesenclast<const N: usize>(data: &mut [M128i; N], key: M128i) {
    if cfg!(feature = "aes") {
        vaesenclast_asm(data, key);
    } else {
        vaesenclast_ref(data, key);
    }
}

#[inline]
fn vaesenc_ref<const N: usize>(data: &mut [M128i; N], key: M128i) {
    data.iter_mut().for_each(|data| *data = data.aesenc(key));
}

#[inline]
fn vaesenclast_ref<const N: usize>(data: &mut [M128i; N], key: M128i) {
    data.iter_mut()
        .for_each(|data| *data = data.aesenclast(key));
}

#[inline]
fn vaesenc_asm<const N: usize>(data: &mut [M128i; N], key: M128i) {
    match N {
        4 => unsafe {
            core::arch::asm!(
                "vaesenc {key}, {data0}, {data0}",
                "vaesenc {key}, {data1}, {data1}",
                "vaesenc {key}, {data2}, {data2}",
                "vaesenc {key}, {data3}, {data3}",
                data0 = inout(xmm_reg) data[0].0,
                data1 = inout(xmm_reg) data[1].0,
                data2 = inout(xmm_reg) data[2].0,
                data3 = inout(xmm_reg) data[3].0,
                key = in(xmm_reg) *key,
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
                "vaesenc {key}, {data0}, {data0}",
                "vaesenc {key}, {data1}, {data1}",
                "vaesenc {key}, {data2}, {data2}",
                "vaesenc {key}, {data3}, {data3}",
                "vaesenc {key}, {data4}, {data4}",
                "vaesenc {key}, {data5}, {data5}",
                data0 = inout(xmm_reg) data[0].0,
                data1 = inout(xmm_reg) data[1].0,
                data2 = inout(xmm_reg) data[2].0,
                data3 = inout(xmm_reg) data[3].0,
                data4 = inout(xmm_reg) data[4].0,
                data5 = inout(xmm_reg) data[5].0,
                key = in(xmm_reg) *key,
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
                "vaesenc {key}, {data0}, {data0}",
                "vaesenc {key}, {data1}, {data1}",
                "vaesenc {key}, {data2}, {data2}",
                "vaesenc {key}, {data3}, {data3}",
                "vaesenc {key}, {data4}, {data4}",
                "vaesenc {key}, {data5}, {data5}",
                "vaesenc {key}, {data6}, {data6}",
                "vaesenc {key}, {data7}, {data7}",
                data0 = inout(xmm_reg) data[0].0,
                data1 = inout(xmm_reg) data[1].0,
                data2 = inout(xmm_reg) data[2].0,
                data3 = inout(xmm_reg) data[3].0,
                data4 = inout(xmm_reg) data[4].0,
                data5 = inout(xmm_reg) data[5].0,
                data6 = inout(xmm_reg) data[6].0,
                data7 = inout(xmm_reg) data[7].0,
                key = in(xmm_reg) *key,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
        },
        _ => vaesenc_ref(data, key),
    }
}

#[inline]
fn vaesenclast_asm<const N: usize>(data: &mut [M128i; N], key: M128i) {
    match N {
        4 => unsafe {
            core::arch::asm!(
                "vaesenclast {key}, {data0}, {data0}",
                "vaesenclast {key}, {data1}, {data1}",
                "vaesenclast {key}, {data2}, {data2}",
                "vaesenclast {key}, {data3}, {data3}",
                data0 = inout(xmm_reg) data[0].0,
                data1 = inout(xmm_reg) data[1].0,
                data2 = inout(xmm_reg) data[2].0,
                data3 = inout(xmm_reg) data[3].0,
                key = in(xmm_reg) *key,
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
                "vaesenclast {key}, {data0}, {data0}",
                "vaesenclast {key}, {data1}, {data1}",
                "vaesenclast {key}, {data2}, {data2}",
                "vaesenclast {key}, {data3}, {data3}",
                "vaesenclast {key}, {data4}, {data4}",
                "vaesenclast {key}, {data5}, {data5}",
                data0 = inout(xmm_reg) data[0].0,
                data1 = inout(xmm_reg) data[1].0,
                data2 = inout(xmm_reg) data[2].0,
                data3 = inout(xmm_reg) data[3].0,
                data4 = inout(xmm_reg) data[4].0,
                data5 = inout(xmm_reg) data[5].0,
                key = in(xmm_reg) *key,
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
                "vaesenclast {key}, {data0}, {data0}",
                "vaesenclast {key}, {data1}, {data1}",
                "vaesenclast {key}, {data2}, {data2}",
                "vaesenclast {key}, {data3}, {data3}",
                "vaesenclast {key}, {data4}, {data4}",
                "vaesenclast {key}, {data5}, {data5}",
                "vaesenclast {key}, {data6}, {data6}",
                "vaesenclast {key}, {data7}, {data7}",
                data0 = inout(xmm_reg) data[0].0,
                data1 = inout(xmm_reg) data[1].0,
                data2 = inout(xmm_reg) data[2].0,
                data3 = inout(xmm_reg) data[3].0,
                data4 = inout(xmm_reg) data[4].0,
                data5 = inout(xmm_reg) data[5].0,
                data6 = inout(xmm_reg) data[6].0,
                data7 = inout(xmm_reg) data[7].0,
                key = in(xmm_reg) *key,
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            );
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
            let key = M128i::random();
            let mut data_ref = [(); N].map(|()| M128i::random());
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
            let key = M128i::random();
            let mut data_ref = [(); N].map(|()| M128i::random());
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
