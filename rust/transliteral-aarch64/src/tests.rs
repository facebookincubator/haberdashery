// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use quote::quote;

use super::*;

fn norm(ts: &TokenStream) -> String {
    ts.to_string().split_whitespace().collect::<String>()
}

fn assert_contains(out: &str, needles: &[&str]) {
    for needle in needles {
        let needle: String = needle.split_whitespace().collect();
        assert!(out.contains(&needle), "missing {needle} in:\n{out}");
    }
}

#[test]
fn aes_round_two_states() {
    let func = quote!(
        pub(crate) fn step(rk: uint8x16_t, a0: &mut uint8x16_t, a1: &mut uint8x16_t) {
            *a0 = a0.vaeseq_u8(rk);
            *a0 = a0.vaesmcq_u8();
            *a1 = a1.vaeseq_u8(rk);
            *a1 = a1.vaesmcq_u8();
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            // asm version: one instruction per statement, in order.
            "fnstep_asm",
            "\"aese {a0:v}.16b, {rk:v}.16b\", \"aesmc {a0:v}.16b, {a0:v}.16b\", \
             \"aese {a1:v}.16b, {rk:v}.16b\", \"aesmc {a1:v}.16b, {a1:v}.16b\"",
            "rk=in(vreg)rk.0",
            "a0=inout(vreg)a0.0",
            "a1=inout(vreg)a1.0",
            "options(nomem,nostack,preserves_flags)",
            // intrinsics version keeps the original statements.
            "fnstep_intrinsics",
            "*a0=a0.vaeseq_u8(rk);*a0=a0.vaesmcq_u8();",
            // dispatch preserves vis and gates on the feature.
            "pub(crate)fnstep",
            "cfg(feature=\"pure-intrinsics\")",
            "step_intrinsics(rk,a0,a1)",
            "step_asm(rk,a0,a1)",
            // differential test builds both copies and compares inouts.
            "fnstep_test",
            "cfg(test)",
            "uint8x16_t::from_bytes(",
            "assert_eq!(a0_asm.to_bytes(),a0_ref.to_bytes());",
            "assert_eq!(a1_asm.to_bytes(),a1_ref.to_bytes());",
        ],
    );
    assert!(!out.contains("att_syntax"));
    // value inputs are passed by value to both callees; inouts by &mut.
    assert!(out.contains("step_asm(rk,&muta0_asm,&muta1_asm)"));
    assert!(out.contains("step_intrinsics(rk,&muta0_ref,&muta1_ref)"));
}

#[test]
fn pmull2_return_shape() {
    let func = quote!(
        fn mul(a: uint8x16_t, b: uint8x16_t, s: &mut uint8x16_t) -> (uint8x16_t, uint8x16_t) {
            let lo = a.vmull_high_p64(b);
            let hi = b.vmull_high_p64(a);
            let x = lo ^ hi;
            *s = s.vaeseq_u8(x);
            (lo, x)
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"pmull2 {lo:v}.1q, {a:v}.2d, {b:v}.2d\"",
            "\"pmull2 {hi:v}.1q, {b:v}.2d, {a:v}.2d\"",
            "\"eor {x:v}.16b, {lo:v}.16b, {hi:v}.16b\"",
            "\"aese {s:v}.16b, {x:v}.16b\"",
            // returned temporaries get named out-places and are returned.
            "letmutlo_out:uint8x16_t=uint8x16_t::ZERO;",
            "letmuthi_out:uint8x16_t=uint8x16_t::ZERO;",
            "lo=out(vreg)lo_out.0",
            "hi=out(vreg)hi_out.0",
            "x=out(vreg)x_out.0",
            "(lo_out,x_out)",
            // differential test compares inouts and each returned value.
            "letret_asm=mul_asm(",
            "letret_ref=mul_intrinsics(",
            "assert_eq!(s_asm.to_bytes(),s_ref.to_bytes());",
            "assert_eq!(ret_asm.0.to_bytes(),ret_ref.0.to_bytes());",
            "assert_eq!(ret_asm.1.to_bytes(),ret_ref.1.to_bytes());",
        ],
    );
}

#[test]
fn single_return_and_temp_inout() {
    // A temporary read by its own writer becomes an `inout` operand.
    let func = quote!(
        fn f(rk: uint8x16_t, a: uint8x16_t) -> uint8x16_t {
            let mut m = a ^ rk;
            m = m.vaeseq_u8(rk);
            m = m.vaesmcq_u8();
            m
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"eor {m:v}.16b, {a:v}.16b, {rk:v}.16b\"",
            "\"aese {m:v}.16b, {rk:v}.16b\", \"aesmc {m:v}.16b, {m:v}.16b\"",
            "m=inout(vreg)m_out.0",
            "fnf_asm(rk:uint8x16_t,a:uint8x16_t)->uint8x16_t",
            "}m_out}",
            "letret_asm=f_asm(",
            "assert_eq!(ret_asm.to_bytes(),ret_ref.to_bytes());",
        ],
    );
}

#[test]
fn array_updated_in_place_and_returned() {
    let func = quote!(
        fn round3(mut blocks: [uint8x16_t; 3], rk: uint8x16_t) -> [uint8x16_t; 3] {
            blocks[0] = blocks[0].vaeseq_u8(rk);
            blocks[0] = blocks[0].vaesmcq_u8();
            blocks[2] = blocks[2].vaeseq_u8(rk);
            blocks[2] = blocks[2].vaesmcq_u8();
            blocks
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"aese {blocks_0:v}.16b, {rk:v}.16b\", \"aesmc {blocks_0:v}.16b, {blocks_0:v}.16b\"",
            "\"aese {blocks_2:v}.16b, {rk:v}.16b\", \"aesmc {blocks_2:v}.16b, {blocks_2:v}.16b\"",
            // written elements are inout; the untouched one stays in.
            "blocks_0=inout(vreg)blocks[0].0,blocks_1=in(vreg)blocks[1].0,\
             blocks_2=inout(vreg)blocks[2].0,rk=in(vreg)rk.0",
            // the asm version returns the updated local copy.
            "fnround3_asm(mutblocks:[uint8x16_t;3],rk:uint8x16_t)->[uint8x16_t;3]",
            "}blocks}",
            // the dispatch forwards without a `mut` binding.
            "fnround3(blocks:[uint8x16_t;3],rk:uint8x16_t)->[uint8x16_t;3]",
            // differential test passes the array by value and compares it.
            "letblocks:[uint8x16_t;3]=[uint8x16_t::from_bytes(",
            "letret_asm=round3_asm(blocks,rk);",
            "assert_eq!(ret_asm.map(|v|v.to_bytes()),ret_ref.map(|v|v.to_bytes()));",
        ],
    );
}

#[test]
fn mut_ref_array_and_array_literal_return() {
    let func = quote!(
        fn f(h: uint8x16_t, acc: &mut [uint8x16_t; 2]) -> ([uint8x16_t; 2], uint8x16_t) {
            let lo = acc[0].vmull_high_p64(h);
            let hi = acc[1].vmull_high_p64(h);
            acc[0] = lo ^ hi;
            let x = acc[0] ^ acc[1];
            ([lo, hi], x)
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"pmull2 {lo:v}.1q, {acc_0:v}.2d, {h:v}.2d\"",
            "\"pmull2 {hi:v}.1q, {acc_1:v}.2d, {h:v}.2d\"",
            "\"eor {acc_0:v}.16b, {lo:v}.16b, {hi:v}.16b\"",
            "\"eor {x:v}.16b, {acc_0:v}.16b, {acc_1:v}.16b\"",
            // &mut array elements are always inout.
            "acc_0=inout(vreg)acc[0].0,acc_1=inout(vreg)acc[1].0",
            "([lo_out,hi_out],x_out)",
            "letmutacc_asm:[uint8x16_t;2]=[",
            "letmutacc_ref:[uint8x16_t;2]=acc_asm;",
            "assert_eq!(acc_asm.map(|v|v.to_bytes()),acc_ref.map(|v|v.to_bytes()));",
            "assert_eq!(ret_asm.0.map(|v|v.to_bytes()),ret_ref.0.map(|v|v.to_bytes()));",
            "assert_eq!(ret_asm.1.to_bytes(),ret_ref.1.to_bytes());",
        ],
    );
}

#[test]
fn rejects_array_misuse() {
    let cases = [
        // length must be a literal, not a named constant.
        quote!(
            fn f(mut b: [uint8x16_t; LANES], rk: uint8x16_t) {
                b[0] = b[0].vaeseq_u8(rk);
            }
        ),
        // index must be a literal.
        quote!(
            fn f(mut b: [uint8x16_t; 2], rk: uint8x16_t) {
                b[i] = b[i].vaeseq_u8(rk);
            }
        ),
        // index out of bounds.
        quote!(
            fn f(mut b: [uint8x16_t; 2], rk: uint8x16_t) {
                b[2] = b[2].vaeseq_u8(rk);
            }
        ),
        // by-value array without `mut` is read-only.
        quote!(
            fn f(b: [uint8x16_t; 2], rk: uint8x16_t) {
                b[0] = b[0].vaeseq_u8(rk);
            }
        ),
        // a whole array is not an operand.
        quote!(
            fn f(b: [uint8x16_t; 2], rk: uint8x16_t) -> uint8x16_t {
                let x = b ^ rk;
                x
            }
        ),
        // returned array must be a by-value argument of the same length.
        quote!(
            fn f(mut b: [uint8x16_t; 2], rk: uint8x16_t) -> [uint8x16_t; 3] {
                b[0] = b[0].vaeseq_u8(rk);
                b
            }
        ),
        // &mut arrays are not returned.
        quote!(
            fn f(b: &mut [uint8x16_t; 2], rk: uint8x16_t) -> [uint8x16_t; 2] {
                b[0] = b[0].vaeseq_u8(rk);
                b
            }
        ),
        // element operand names must not collide with other names.
        quote!(
            fn f(mut b: [uint8x16_t; 1], b_0: uint8x16_t) {
                b[0] = b[0].vaeseq_u8(b_0);
            }
        ),
    ];
    for func in cases {
        let source = func.to_string();
        assert!(assembly_internal(func).is_err(), "accepted: {source}");
    }
}

#[test]
fn aesmc_writes_a_separate_register() {
    // Only AESE is tied; AESMC may write a fresh temporary.
    let func = quote!(
        fn f(rk: uint8x16_t, a: &mut uint8x16_t) -> uint8x16_t {
            *a = a.vaeseq_u8(rk);
            let m = a.vaesmcq_u8();
            m
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"aese {a:v}.16b, {rk:v}.16b\", \"aesmc {m:v}.16b, {a:v}.16b\"",
            "m=out(vreg)m_out.0",
        ],
    );
}

#[test]
fn mut_vector_updated_in_place_and_returned() {
    // A `mut` by-value vector argument written by the body becomes inout
    // and may be returned, e.g. a 2x2 transpose of 64-bit lanes.
    let func = quote!(
        fn transpose(mut low: uint8x16_t, high: uint8x16_t) -> (uint8x16_t, uint8x16_t) {
            let lanes0 = high.vtrn1q_u64(low);
            low = high.vtrn2q_u64(low);
            (low, lanes0)
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"trn1 {lanes0:v}.2d, {high:v}.2d, {low:v}.2d\", \
             \"trn2 {low:v}.2d, {high:v}.2d, {low:v}.2d\"",
            // the written argument is inout; the temporary is a plain
            // (not late) out, so it never shares a register with an input.
            "low=inout(vreg)low.0,high=in(vreg)high.0,lanes0=out(vreg)lanes0_out.0",
            "(low,lanes0_out)",
            // the dispatch forwards without the `mut` binding.
            "fntranspose(low:uint8x16_t,high:uint8x16_t)->(uint8x16_t,uint8x16_t)",
        ],
    );
}

#[test]
fn rejects_assigning_immutable_vector_arg() {
    let func = quote!(
        fn f(low: uint8x16_t, high: uint8x16_t) -> uint8x16_t {
            low = high.vtrn2q_u64(low);
            low
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_tied_detached_target() {
    // AESE overwrites its receiver, so the target must be the receiver.
    let func = quote!(
        fn f(rk: uint8x16_t, a: uint8x16_t) -> uint8x16_t {
            let m = a.vaeseq_u8(rk);
            m
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_unknown_intrinsic() {
    let func = quote!(
        fn f(a: &mut uint8x16_t, b: uint8x16_t) {
            *a = a.vaddq_u32(b);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_immediate() {
    let func = quote!(
        fn f(a: &mut uint8x16_t, b: uint8x16_t) {
            *a = a.vmull_high_p64::<1>(b);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_non_vector_arg() {
    let func = quote!(
        fn f(a: &mut uint8x16_t, n: u32) {
            *a = a.vaeseq_u8(a);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_plain_arg_assign() {
    // inout args only accept `*a = ...`, never `a = ...`.
    let func = quote!(
        fn f(rk: uint8x16_t, a: &mut uint8x16_t) {
            a = a.vaeseq_u8(rk);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_returning_arg() {
    // returns must come from temporaries, never from arguments.
    let func = quote!(
        fn f(rk: uint8x16_t, a: uint8x16_t) -> (uint8x16_t,) {
            let m = a ^ rk;
            (rk,)
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn pmull_pattern_and_eor3() {
    let func = quote!(
        fn term(
            lhs: uint8x16_t,
            rhs: uint8x16_t,
            swap: uint8x16_t,
            mut mid: uint8x16_t,
        ) -> (uint8x16_t, uint8x16_t) {
            let lo = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), rhs.vgetq_lane_p64::<0>());
            let tmp0 = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), swap.vgetq_lane_p64::<0>());
            let tmp1 = lhs.vmull_high_p64(swap);
            mid = mid.veor3q_u8(tmp0, tmp1);
            (lo, mid)
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    assert_contains(
        &out,
        &[
            "\"pmull {lo:v}.1q, {lhs:v}.1d, {rhs:v}.1d\"",
            "\"pmull {tmp0:v}.1q, {lhs:v}.1d, {swap:v}.1d\"",
            "\"pmull2 {tmp1:v}.1q, {lhs:v}.2d, {swap:v}.2d\"",
            "\"eor3 {mid:v}.16b, {mid:v}.16b, {tmp0:v}.16b, {tmp1:v}.16b\"",
            "mid=inout(vreg)mid.0",
            "(lo_out,mid)",
        ],
    );
}

#[test]
fn rejects_pmull_pattern_variants() {
    let cases = [
        // lane 1 is not a PMULL
        quote!(
            fn f(a: uint8x16_t, b: uint8x16_t) -> uint8x16_t {
                let lo = uint8x16_t::vmull_p64(a.vgetq_lane_p64::<1>(), b.vgetq_lane_p64::<0>());
                lo
            }
        ),
        // other associated functions are not recognized
        quote!(
            fn f(a: uint8x16_t, b: uint8x16_t) -> uint8x16_t {
                let lo = uint8x16_t::vaddq_u32(a, b);
                lo
            }
        ),
    ];
    for func in cases {
        let source = func.to_string();
        assert!(assembly_internal(func).is_err(), "accepted: {source}");
    }
}
