// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

//! Transliterate `__m512i` intrinsic bodies into inline `asm!`.
//!
//! `#[assembly]` on an `unsafe fn` whose body is intrinsic method calls
//! generates four items:
//! - `{name}` — dispatch: intrinsics when `pure-intrinsics` is enabled, asm otherwise
//! - `{name}_asm` — the transliterated `core::arch::asm!` body
//! - `{name}_intrinsics` — the original intrinsic body
//! - `{name}_test` — `#[cfg(test)]` differential test of asm vs intrinsics
//!
//! Supported surface (extend `mnemonic` for new intrinsics):
//! - args: `__m512i` (in) and `&mut __m512i` (inout)
//! - returns: `()`, a single `__m512i`, or a trailing tuple of them;
//!   returns come from let-bound temporaries, never arguments
//! - statements: `*arg = ...` (inout args only) and `let [mut] tmp = ...`;
//!   a temporary read by its own writer becomes an `inout` operand
//! - right-hand sides: `obj.method(args...)` or `a ^ b`; one immediate
//!   allowed as `method::<0x10>(args...)` for const-generic intrinsics
//! - methods: `_mm512_aesenc_epi128`, `_mm512_clmulepi64_epi128`,
//!   `_mm512_shuffle_epi32`, `_mm512_ternarylogic_epi64` (immediates required)
//! - tied destinations (`vpternlogq` aliases dst with its last input):
//!   the target must be the last argument, with no separate position

use proc_macro::TokenStream as ProcTokenStream;
use proc_macro2::TokenStream;
use quote::format_ident;
use quote::quote;
use syn::Expr;
use syn::FnArg;
use syn::ItemFn;
use syn::Pat;
use syn::ReturnType;
use syn::Stmt;
use syn::Type;
use syn::UnOp;

#[proc_macro_attribute]
pub fn assembly(_attr: ProcTokenStream, item: ProcTokenStream) -> ProcTokenStream {
    match assembly_internal(item.into()) {
        Ok(expanded) => expanded.into(),
        Err(err) => err.to_compile_error().into(),
    }
}

/// Intrinsic method name (+ immediate, when the intrinsic takes one) to an
/// AT&T template head, the immediate to spell (if any), whether the template
/// lists the receiver (`self`, the intrinsic's first parameter) before the
/// remaining arguments, and whether the destination aliases the last input
/// (`vpternlogq` reads and writes its third operand, so the template has no
/// separate destination position).
/// AT&T reverses Intel operand order, so multi-input templates list the
/// arguments before the receiver (`vaesenc` spells `key` first, `vpclmulqdq`
/// spells the second source first). Extend here for new intrinsics.
fn mnemonic(method: &str, imm: Option<i32>) -> Option<(String, Option<i32>, bool, bool)> {
    match (method, imm) {
        ("_mm512_aesenc_epi128", None) => Some(("vaesenc".to_string(), None, false, false)),
        // Keep the assembler alias spellings for the lane-selecting
        // immediates so generated code matches hand-written asm textually.
        ("_mm512_clmulepi64_epi128", Some(0x00)) => {
            Some(("vpclmullqlqdq".to_string(), None, false, false))
        }
        ("_mm512_clmulepi64_epi128", Some(0x11)) => {
            Some(("vpclmulhqhqdq".to_string(), None, false, false))
        }
        ("_mm512_clmulepi64_epi128", Some(n)) => {
            Some(("vpclmulqdq".to_string(), Some(n), false, false))
        }
        ("_mm512_shuffle_epi32", Some(n)) => Some(("vpshufd".to_string(), Some(n), true, false)),
        ("_mm512_ternarylogic_epi64", Some(n)) => {
            Some(("vpternlogq".to_string(), Some(n), true, true))
        }
        _ => None,
    }
}

/// A single integer-literal turbofish argument, e.g. `::<0x10>`.
fn immediate(call: &syn::ExprMethodCall) -> syn::Result<Option<i32>> {
    let Some(turbofish) = &call.turbofish else {
        return Ok(None);
    };
    let mut args = turbofish.args.iter();
    match (args.next(), args.next()) {
        (Some(syn::GenericArgument::Const(syn::Expr::Lit(lit))), None) => match &lit.lit {
            syn::Lit::Int(n) => n.base10_parse::<i32>().map(Some).map_err(|e| {
                syn::Error::new_spanned(n, format!("transliteral: bad immediate: {e}"))
            }),
            _ => Err(syn::Error::new_spanned(
                &lit.lit,
                "transliteral: immediate must be an integer literal",
            )),
        },
        _ => Err(syn::Error::new_spanned(
            turbofish,
            "transliteral: expected exactly one integer-literal immediate",
        )),
    }
}

fn is_m512i(ty: &Type) -> bool {
    match ty {
        Type::Path(p) => {
            p.qself.is_none()
                && p.path.segments.len() == 1
                && p.path.segments[0].ident == "__m512i"
                && p.path.segments[0].arguments.is_none()
        }
        _ => false,
    }
}

/// Single-identifier path expression, e.g. `rk`.
fn ident_of(expr: &Expr) -> syn::Result<syn::Ident> {
    match expr {
        Expr::Path(p)
            if p.qself.is_none()
                && p.path.segments.len() == 1
                && p.path.segments[0].arguments.is_none() =>
        {
            Ok(p.path.segments[0].ident.clone())
        }
        _ => Err(syn::Error::new_spanned(
            expr,
            "transliteral: expected a plain variable",
        )),
    }
}

struct Arg {
    name: syn::Ident,
    inout: bool,
}

fn assembly_internal(item: TokenStream) -> syn::Result<TokenStream> {
    let func: ItemFn = syn::parse2(item)?;

    // Returns: () (also spelled `-> ()`), a single __m512i, or a tuple
    // of __m512i. `single` tracks the bare-ident tail of the single form.
    let mut arity = 0usize;
    let mut single = false;
    if let ReturnType::Type(_, ty) = &func.sig.output {
        if let Type::Tuple(t) = &**ty {
            for elem in &t.elems {
                if !is_m512i(elem) {
                    return Err(syn::Error::new_spanned(
                        elem,
                        "transliteral: return type must be (), __m512i, or a tuple of __m512i",
                    ));
                }
            }
            arity = t.elems.len();
        } else if is_m512i(ty) {
            arity = 1;
            single = true;
        } else {
            return Err(syn::Error::new_spanned(
                &func.sig.output,
                "transliteral: return type must be (), __m512i, or a tuple of __m512i",
            ));
        }
    }

    let mut args: Vec<Arg> = Vec::new();
    for input in &func.sig.inputs {
        let typed = match input {
            FnArg::Typed(t) => t,
            FnArg::Receiver(r) => {
                return Err(syn::Error::new_spanned(
                    r,
                    "transliteral: methods are not supported",
                ));
            }
        };
        let name = match &*typed.pat {
            Pat::Ident(p) => p.ident.clone(),
            _ => {
                return Err(syn::Error::new_spanned(
                    &typed.pat,
                    "transliteral: arguments must be plain identifiers",
                ));
            }
        };
        let inout = match &*typed.ty {
            Type::Reference(r) if r.mutability.is_some() && is_m512i(&r.elem) => true,
            t if is_m512i(t) => false,
            _ => {
                return Err(syn::Error::new_spanned(
                    &typed.ty,
                    "transliteral: arguments must be __m512i or &mut __m512i",
                ));
            }
        };
        args.push(Arg { name, inout });
    }

    use std::collections::HashSet;
    let mut known: HashSet<String> = args.iter().map(|a| a.name.to_string()).collect();
    // Readable from the start (args) or once written by an earlier template.
    let mut readable: HashSet<String> = known.clone();
    let mut templates: Vec<String> = Vec::new();
    let mut temps: Vec<syn::Ident> = Vec::new();
    // Temps read by the instruction that writes them need `inout` operands.
    let mut inout_temps: HashSet<String> = HashSet::new();

    // A non-unit return takes its values from a trailing tuple expression,
    // e.g. `(lo, hi, mid)`, which is not a template.
    let mut stmts: Vec<&Stmt> = func.block.stmts.iter().collect();
    let mut tail: Vec<syn::Ident> = Vec::new();
    if arity > 0 {
        let tail_expr = match stmts.pop() {
            Some(Stmt::Expr(e, None)) => e,
            Some(other) => {
                return Err(syn::Error::new_spanned(
                    other,
                    "transliteral: expected a trailing tuple of temporaries",
                ));
            }
            None => {
                return Err(syn::Error::new_spanned(
                    &func.sig.output,
                    "transliteral: expected a trailing tuple of temporaries",
                ));
            }
        };
        if single {
            tail.push(ident_of(tail_expr)?);
        } else {
            let Expr::Tuple(t) = tail_expr else {
                return Err(syn::Error::new_spanned(
                    tail_expr,
                    "transliteral: expected a trailing tuple of temporaries",
                ));
            };
            if t.elems.len() != arity {
                return Err(syn::Error::new_spanned(
                    tail_expr,
                    "transliteral: returned tuple arity must match the return type",
                ));
            }
            for elem in &t.elems {
                tail.push(ident_of(elem)?);
            }
        }
    }

    for stmt in stmts {
        let (target, is_let, is_deref, rhs) = match stmt {
            Stmt::Local(local) => {
                let name = match &local.pat {
                    Pat::Ident(p) => p.ident.clone(),
                    _ => {
                        return Err(syn::Error::new_spanned(
                            &local.pat,
                            "transliteral: let bindings must be plain identifiers",
                        ));
                    }
                };
                let init = match &local.init {
                    Some(init) => (*init.expr).clone(),
                    None => {
                        return Err(syn::Error::new_spanned(
                            local,
                            "transliteral: let bindings need an initializer",
                        ));
                    }
                };
                (name, true, false, init)
            }
            Stmt::Expr(expr, _) => match expr {
                Expr::Assign(assign) => {
                    let (name, deref) = match &*assign.left {
                        Expr::Unary(u) if matches!(u.op, UnOp::Deref(_)) => {
                            (ident_of(&u.expr)?, true)
                        }
                        Expr::Path(_) => (ident_of(&assign.left)?, false),
                        _ => {
                            return Err(syn::Error::new_spanned(
                                &assign.left,
                                "transliteral: can only assign to a variable or *place",
                            ));
                        }
                    };
                    (name, false, deref, (*assign.right).clone())
                }
                _ => {
                    return Err(syn::Error::new_spanned(
                        expr,
                        "transliteral: only assignments are supported",
                    ));
                }
            },
            _ => {
                return Err(syn::Error::new_spanned(
                    stmt,
                    "transliteral: unsupported statement",
                ));
            }
        };

        let (op, template_imm, tied, inputs) = match rhs {
            Expr::Binary(b) if matches!(b.op, syn::BinOp::BitXor(_)) => {
                let lhs = ident_of(&b.left)?.to_string();
                let rhs = ident_of(&b.right)?.to_string();
                ("vpxorq".to_string(), None, false, vec![lhs, rhs])
            }
            Expr::MethodCall(m) => {
                let imm = immediate(&m)?;
                let Some((op, template_imm, receiver_first, tied)) =
                    mnemonic(&m.method.to_string(), imm)
                else {
                    return Err(syn::Error::new_spanned(
                        &m.method,
                        "transliteral: unsupported intrinsic (supported: _mm512_aesenc_epi128, _mm512_clmulepi64_epi128, _mm512_shuffle_epi32, _mm512_ternarylogic_epi64)",
                    ));
                };
                let mut inputs: Vec<String> = Vec::new();
                let receiver = ident_of(&m.receiver)?.to_string();
                if receiver_first {
                    inputs.push(receiver.clone());
                }
                for arg in &m.args {
                    inputs.push(ident_of(arg)?.to_string());
                }
                if !receiver_first {
                    inputs.push(receiver);
                }
                (op, template_imm, tied, inputs)
            }
            ref other => {
                return Err(syn::Error::new_spanned(
                    other,
                    "transliteral: right-hand side must be an intrinsic method call or a ^ b",
                ));
            }
        };
        for input in &inputs {
            if !readable.contains(input) {
                return Err(syn::Error::new_spanned(
                    stmt,
                    "transliteral: unknown variable or used before it is written",
                ));
            }
        }

        let target_s = target.to_string();
        let is_arg = args.iter().any(|a| a.name == target);
        if is_arg {
            let inout = args
                .iter()
                .find(|a| a.name == target)
                .is_some_and(|a| a.inout);
            if !(inout && is_deref) {
                return Err(syn::Error::new_spanned(
                    stmt,
                    "transliteral: can only assign through *inout-arg",
                ));
            }
        } else if is_let {
            if known.contains(&target_s) {
                return Err(syn::Error::new_spanned(
                    stmt,
                    "transliteral: redefinition; assign or pick a fresh name",
                ));
            }
        } else if !known.contains(&target_s) {
            return Err(syn::Error::new_spanned(
                stmt,
                "transliteral: assignment to unknown place",
            ));
        }
        // A temporary read by the instruction that writes it (in-place
        // update) needs an `inout` operand; pure writes stay `out`.
        if !is_let && !is_arg && inputs.iter().any(|i| *i == target_s) {
            inout_temps.insert(target_s.clone());
        }

        let mut parts: Vec<String> = inputs.iter().map(|i| format!("{{{i}}}")).collect();
        if tied {
            // Destination aliases the last input (e.g. `vpternlogq` reads
            // and writes its third operand): no separate position, and the
            // target must be that input.
            if inputs.last() != Some(&target_s) {
                return Err(syn::Error::new_spanned(
                    stmt,
                    "transliteral: tied-destination target must be the last argument",
                ));
            }
        } else {
            parts.push(format!("{{{target}}}"));
        }
        match template_imm {
            Some(n) => templates.push(format!("{op} ${n}, {}", parts.join(", "))),
            None => templates.push(format!("{op} {}", parts.join(", "))),
        }

        if is_let {
            known.insert(target_s.clone());
            temps.push(target);
        }
        readable.insert(target_s);
    }

    // Returns must come from let-bound temporaries, never from arguments
    // (an argument-named `out` place would alias the input operand).
    for name in &tail {
        if !temps.iter().any(|t| t == name) {
            return Err(syn::Error::new_spanned(
                name,
                "transliteral: can only return temporaries",
            ));
        }
    }

    let vis = &func.vis;
    let attrs = &func.attrs;
    let name = &func.sig.ident;
    let asm_ident = format_ident!("{}_asm", name);
    let intrinsics_ident = format_ident!("{}_intrinsics", name);
    let test_ident = format_ident!("{}_test", name);

    let mut operands: Vec<TokenStream> = Vec::new();
    for arg in &args {
        let n = &arg.name;
        if arg.inout {
            operands.push(quote!(#n = inout(zmm_reg) #n.0));
        } else {
            operands.push(quote!(#n = in(zmm_reg) #n.0));
        }
    }
    // Every temporary gets a named `out` place. Anonymous `out ... _`
    // tells rustc the value is discarded, but later template lines may
    // still read the register — LLVM then allocates garbage for it.
    let tail_out: Vec<syn::Ident> = tail.iter().map(|t| format_ident!("{}_out", t)).collect();
    let tail_asm: Vec<syn::Ident> = tail.iter().map(|t| format_ident!("{}_asm", t)).collect();
    let tail_ref: Vec<syn::Ident> = tail.iter().map(|t| format_ident!("{}_ref", t)).collect();
    let mut out_decls: Vec<TokenStream> = Vec::new();
    for temp in &temps {
        let binding = format_ident!("{}_out", temp);
        if inout_temps.contains(&temp.to_string()) {
            operands.push(quote!(#temp = inout(zmm_reg) #binding.0));
        } else {
            operands.push(quote!(#temp = out(zmm_reg) #binding.0));
        }
        // Fully initialized so the field projection is a mutation, not a
        // partial init; the zeroing is a dead store (overwritten before any
        // read). Never-read bindings are covered by the fn's `#[allow(unused)]`.
        out_decls.push(quote!(let mut #binding: __m512i = __m512i::ZERO;));
    }
    // A single __m512i return hands back the bare binding; tuples wrap.
    let ret_tail = if single {
        let out0 = &tail_out[0];
        quote!(#out0)
    } else {
        quote!((#(#tail_out),*))
    };
    let (asm_tail_pat, ref_tail_pat) = if single {
        let asm0 = &tail_asm[0];
        let ref0 = &tail_ref[0];
        (quote!(#asm0), quote!(#ref0))
    } else {
        (quote!((#(#tail_asm),*)), quote!((#(#tail_ref),*)))
    };

    let mut asm_sig = func.sig.clone();
    asm_sig.ident = asm_ident.clone();
    let mut ref_sig = func.sig.clone();
    ref_sig.ident = intrinsics_ident.clone();
    let orig_sig = &func.sig;
    let orig_stmts = &func.block.stmts;
    let fwd: Vec<&syn::Ident> = args.iter().map(|a| &a.name).collect();

    // Differential test: deterministic inputs per arg, asm vs intrinsics.
    let mut test_inputs: Vec<TokenStream> = Vec::new();
    let mut asm_call_args: Vec<TokenStream> = Vec::new();
    let mut ref_call_args: Vec<TokenStream> = Vec::new();
    let mut asserts: Vec<TokenStream> = Vec::new();
    for (i, arg) in args.iter().enumerate() {
        let vals: Vec<i64> = (0..8).map(|k| i as i64 * 8 + k).collect();
        let n = &arg.name;
        if arg.inout {
            let n_asm = format_ident!("{}_asm", n);
            let n_ref = format_ident!("{}_ref", n);
            test_inputs.push(quote!(let mut #n_asm: __m512i = __m512i::from([#(#vals),*]);));
            test_inputs.push(quote!(let mut #n_ref: __m512i = __m512i::from([#(#vals),*]);));
            asm_call_args.push(quote!(&mut #n_asm));
            ref_call_args.push(quote!(&mut #n_ref));
            asserts.push(quote!(assert_eq!(#n_asm, #n_ref);));
        } else {
            test_inputs.push(quote!(let #n: __m512i = __m512i::from([#(#vals),*]);));
            asm_call_args.push(quote!(#n));
            ref_call_args.push(quote!(#n));
        }
    }

    Ok(quote!(
        #[allow(unused)]
        #vis #asm_sig {
            #(#out_decls)*
            unsafe {
                core::arch::asm!(
                    #(#templates,)*
                    #(#operands,)*
                    options(att_syntax, nomem, nostack),
                )
            }
            #ret_tail
        }

        #[allow(unused)]
        #vis #ref_sig {
            unsafe {
                #(#orig_stmts)*
            }
        }

        #(#attrs)*
        #vis #orig_sig {
            #[cfg(feature = "pure-intrinsics")]
            {
                #intrinsics_ident(#(#fwd),*)
            }
            #[cfg(not(feature = "pure-intrinsics"))]
            {
                #asm_ident(#(#fwd),*)
            }
        }

        #[cfg(test)]
        #[test]
        #[allow(unused)]
        fn #test_ident() {
            if !target_support_x86::is_supported() {
                return;
            }
            unsafe {
                #(#test_inputs)*
                let #asm_tail_pat = #asm_ident(#(#asm_call_args),*);
                let #ref_tail_pat = #intrinsics_ident(#(#ref_call_args),*);
                #(#asserts)*
                #(assert_eq!(#tail_asm, #tail_ref);)*
            }
        }
    ))
}

#[cfg(test)]
mod tests;
