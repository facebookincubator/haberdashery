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

#[test]
fn aes_round_two_states() {
    let func = quote!(
        pub(crate) unsafe fn step(rk: __m512i, a0: &mut __m512i, a1: &mut __m512i) {
            *a0 = a0._mm512_aesenc_epi128(rk);
            *a1 = a1._mm512_aesenc_epi128(rk);
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    // asm version: templates + operands in signature order.
    for needle in [
        "fnstep_asm",
        "\"vaesenc{rk},{a0},{a0}\"",
        "\"vaesenc{rk},{a1},{a1}\"",
        "rk=in(zmm_reg)rk.0",
        "a0=inout(zmm_reg)a0.0",
        "a1=inout(zmm_reg)a1.0",
        "options(att_syntax,nomem,nostack)",
        // intrinsics version keeps the original statements.
        "fnstep_intrinsics",
        // dispatch preserves vis and gates on the feature.
        "pub(crate)unsafefnstep",
        "cfg(feature=\"pure-intrinsics\")",
        "step_intrinsics(rk,a0,a1)",
        "step_asm(rk,a0,a1)",
        // differential test builds both copies and compares inouts.
        "fnstep_test",
        "cfg(test)",
        "target_support_x86::is_supported()",
        "__m512i::from(",
        "assert_eq!(a0_asm,a0_ref);",
        "assert_eq!(a1_asm,a1_ref);",
    ] {
        let needle: String = needle.split_whitespace().collect();
        assert!(out.contains(&needle), "missing {needle} in:\n{out}");
    }
    // value inputs are passed by value to both callees; inouts by &mut.
    assert!(out.contains("step_asm(rk,&muta0_asm,&muta1_asm)"));
    assert!(out.contains("step_intrinsics(rk,&muta0_ref,&muta1_ref)"));
}

#[test]
fn rejects_non_unit_return() {
    let func = quote!(
        unsafe fn f(a: __m512i) -> __m512i {
            a
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_unknown_intrinsic() {
    let func = quote!(
        unsafe fn f(a: &mut __m512i, b: __m512i) {
            *a = a._mm512_add_epi32(b);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_non_m512i_arg() {
    let func = quote!(
        unsafe fn f(a: &mut __m512i, n: u32) {
            *a = a._mm512_aesenc_epi128(a);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn foil_return_shape() {
    let func = quote!(
        unsafe fn foil(
            rk: __m512i,
            data: __m512i,
            hash_key: __m512i,
            a0: &mut __m512i,
        ) -> (__m512i, __m512i) {
            *a0 = a0._mm512_aesenc_epi128(rk);
            let mid = hash_key._mm512_clmulepi64_epi128::<0x10>(data);
            let lo = hash_key._mm512_clmulepi64_epi128::<0x00>(data);
            let hi = hash_key._mm512_clmulepi64_epi128::<0x11>(data);
            let tmp = hash_key._mm512_clmulepi64_epi128::<0x01>(data);
            let m = mid ^ tmp;
            (lo, m)
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    for needle in [
        // immediates: alias spellings for $0x00/$0x11, `$N` otherwise.
        "\"vaesenc{rk},{a0},{a0}\"",
        "\"vpclmulqdq$16,{data},{hash_key},{mid}\"",
        "\"vpclmullqlqdq{data},{hash_key},{lo}\"",
        "\"vpclmulhqhqdq{data},{hash_key},{hi}\"",
        "\"vpclmulqdq$1,{data},{hash_key},{tmp}\"",
        "\"vpxorq{mid},{tmp},{m}\"",
        // returned temporaries get named out-places and are returned.
        "letmutlo_out:__m512i=__m512i::ZERO;",
        "letmutm_out:__m512i=__m512i::ZERO;",
        "letmutmid_out:__m512i=__m512i::ZERO;",
        "lo=out(zmm_reg)lo_out.0",
        "m=out(zmm_reg)m_out.0",
        "mid=out(zmm_reg)mid_out.0",
        "(lo_out,m_out)",
        // dispatch keeps the tuple return type.
        "unsafefnfoil(rk:__m512i,data:__m512i,hash_key:__m512i,a0:&mut__m512i,)->(__m512i,__m512i)",
        // differential test compares inouts and returns.
        "let(lo_asm,m_asm)=foil_asm(",
        "let(lo_ref,m_ref)=foil_intrinsics(",
        "assert_eq!(a0_asm,a0_ref);",
        "assert_eq!(lo_asm,lo_ref);",
        "assert_eq!(m_asm,m_ref);",
    ] {
        let needle: String = needle.split_whitespace().collect();
        assert!(out.contains(&needle), "missing {needle} in:\n{out}");
    }
}

#[test]
fn temp_read_write_uses_inout() {
    // A temporary read by its own writer becomes an `inout` operand.
    let func = quote!(
        unsafe fn f(rk: __m512i, a: __m512i) {
            let m = a._mm512_aesenc_epi128(rk);
            m = m._mm512_aesenc_epi128(rk);
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    for needle in [
        "\"vaesenc{rk},{a},{m}\"",
        "\"vaesenc{rk},{m},{m}\"",
        "m=inout(zmm_reg)m_out.0",
        "letmutm_out:__m512i=__m512i::ZERO;",
    ] {
        let needle: String = needle.split_whitespace().collect();
        assert!(out.contains(&needle), "missing {needle} in:\n{out}");
    }
}

#[test]
fn single_return_shape() {
    let func = quote!(
        unsafe fn red(glo: __m512i, ghi: __m512i, t2: __m512i) -> __m512i {
            let mut result = glo._mm512_shuffle_epi32::<0x4e>();
            result = t2._mm512_ternarylogic_epi64::<0x96>(ghi, result);
            result
        }
    );
    let out = norm(&assembly_internal(func).expect("expand"));
    for needle in [
        // shuffle spells its hex immediate decimal; ternlog ties dst to
        // its last input, so the template has no separate position.
        "\"vpshufd$78,{glo},{result}\"",
        "\"vpternlogq$150,{t2},{ghi},{result}\"",
        "result=inout(zmm_reg)result_out.0",
        "letmutresult_out:__m512i=__m512i::ZERO;",
        // single returns hand back the bare binding on both sides.
        "fnred_asm(glo:__m512i,ghi:__m512i,t2:__m512i)->__m512i",
        "}result_out}",
        "letresult_asm=red_asm(",
        "letresult_ref=red_intrinsics(",
        "assert_eq!(result_asm,result_ref);",
    ] {
        let needle: String = needle.split_whitespace().collect();
        assert!(out.contains(&needle), "missing {needle} in:\n{out}");
    }
}

#[test]
fn rejects_ternlog_detached_target() {
    // A tied destination must be the last argument.
    let func = quote!(
        unsafe fn f(a: __m512i, b: __m512i, c: __m512i) -> (__m512i,) {
            let x = a._mm512_ternarylogic_epi64::<0x96>(b, c);
            (x,)
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_plain_arg_assign() {
    // inout args only accept `*a = ...`, never `a = ...`.
    let func = quote!(
        unsafe fn f(rk: __m512i, a: &mut __m512i) {
            a = a._mm512_aesenc_epi128(rk);
        }
    );
    assert!(assembly_internal(func).is_err());
}

#[test]
fn rejects_returning_arg() {
    // returns must come from temporaries, never from arguments.
    let func = quote!(
        unsafe fn f(rk: __m512i, a: __m512i) -> (__m512i,) {
            let m = a._mm512_aesenc_epi128(rk);
            (rk,)
        }
    );
    assert!(assembly_internal(func).is_err());
}
