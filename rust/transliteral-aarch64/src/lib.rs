// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

//! Transliterate `uint8x16_t` intrinsic bodies into inline `asm!`.
//!
//! The AArch64 counterpart of `transliteral-x86_64`. `#[assembly]` on a
//! `fn` whose body is intrinsic method calls on `intrinsics_aarch64`'s
//! `uint8x16_t` generates four items:
//! - `{name}` — dispatch: intrinsics when `pure-intrinsics` is enabled, asm otherwise
//! - `{name}_asm` — the transliterated `core::arch::asm!` body
//! - `{name}_intrinsics` — the original intrinsic body
//! - `{name}_test` — `#[cfg(test)]` differential test of asm vs intrinsics
//!
//! Supported surface (extend `mnemonic` for new intrinsics):
//! - args: `uint8x16_t` and `[uint8x16_t; N]` (in; a `mut` binding may be
//!   updated in place and returned, becoming inout), `&mut uint8x16_t` and
//!   `&mut [uint8x16_t; N]` (inout). `N` must be an integer literal; each
//!   element is its own register operand, spelled `name[i]` with a literal
//!   index
//! - returns: `()`, a `uint8x16_t`, a `[uint8x16_t; N]`, or a tuple of
//!   those. A vector is a let-bound temporary or a `mut` by-value vector
//!   argument; an array is a `mut` by-value array argument or an array
//!   literal of temporaries
//! - statements: `*arg = ...` (`&mut` vectors), `arg = ...` (`mut` by-value
//!   vectors), `arr[i] = ...` (`&mut` or `mut` by-value arrays), and
//!   `let [mut] tmp = ...`; a temporary read by its own writer becomes an
//!   `inout` operand
//! - right-hand sides: `obj.method(args...)` or `a ^ b`
//! - methods: `intrinsics_aarch64` intrinsics, one instruction each:
//!   `vaeseq_u8` (AESE), `vaesmcq_u8` (AESMC), `veor3q_u8` (EOR3),
//!   `vtrn1q_u64`/`vtrn2q_u64` (TRN1/TRN2), `vmull_high_p64` (PMULL2), and
//!   `uint8x16_t::vmull_p64(a.vgetq_lane_p64::<0>(), b.vgetq_lane_p64::<0>())`
//!   (PMULL; ACLE has only the scalar form).
//!   An AES round is two statements, `a = a.vaeseq_u8(k)` then
//!   `a = a.vaesmcq_u8()`; keep each pair adjacent so the core fuses them
//! - tied destinations (AESE reads and writes its first operand): the
//!   target must be the receiver, e.g. `*a = a.vaeseq_u8(rk)`

use std::collections::HashMap;
use std::collections::HashSet;

use proc_macro::TokenStream as ProcTokenStream;
use proc_macro2::Literal;
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

/// The instruction for one intrinsic. The template spells the destination
/// `{d:` and the inputs `{0:`, `{1:`, ... (the receiver is input 0); `tied`
/// means the destination is also input 0, so the target must be the
/// receiver.
struct Op {
    template: &'static str,
    tied: bool,
}

/// Intrinsic method name to its instruction. Extend here for new
/// intrinsics.
fn mnemonic(method: &str) -> Option<Op> {
    match method {
        "vaeseq_u8" => Some(Op {
            template: "aese {d:v}.16b, {1:v}.16b",
            tied: true,
        }),
        "vaesmcq_u8" => Some(Op {
            template: "aesmc {d:v}.16b, {0:v}.16b",
            tied: false,
        }),
        "veor3q_u8" => Some(Op {
            template: "eor3 {d:v}.16b, {0:v}.16b, {1:v}.16b, {2:v}.16b",
            tied: false,
        }),
        "vtrn1q_u64" => Some(Op {
            template: "trn1 {d:v}.2d, {0:v}.2d, {1:v}.2d",
            tied: false,
        }),
        "vtrn2q_u64" => Some(Op {
            template: "trn2 {d:v}.2d, {0:v}.2d, {1:v}.2d",
            tied: false,
        }),
        "vmull_high_p64" => Some(Op {
            template: "pmull2 {d:v}.1q, {0:v}.2d, {1:v}.2d",
            tied: false,
        }),
        _ => None,
    }
}

/// `uint8x16_t::vmull_p64(a.vgetq_lane_p64::<0>(), b.vgetq_lane_p64::<0>())`:
/// ACLE has only the scalar form of the low-half polynomial multiply, and
/// this lane-extract pattern is exactly one PMULL.
const PMULL: Op = Op {
    template: "pmull {d:v}.1q, {0:v}.1d, {1:v}.1d",
    tied: false,
};

const XOR: Op = Op {
    template: "eor {d:v}.16b, {0:v}.16b, {1:v}.16b",
    tied: false,
};

/// `op`'s template with the destination and inputs replaced by operand
/// names.
fn render(op: &Op, target: &str, inputs: &[String]) -> String {
    let mut line = op.template.replace("{d:", &format!("{{{target}:"));
    for (index, input) in inputs.iter().enumerate() {
        line = line.replace(&format!("{{{index}:"), &format!("{{{input}:"));
    }
    line
}

fn is_vector(ty: &Type) -> bool {
    match ty {
        Type::Path(p) => {
            p.qself.is_none()
                && p.path.segments.len() == 1
                && p.path.segments[0].ident == "uint8x16_t"
                && p.path.segments[0].arguments.is_none()
        }
        _ => false,
    }
}

/// An integer literal, e.g. an array length or index.
fn literal_usize(expr: &Expr, what: &str) -> syn::Result<usize> {
    match expr {
        Expr::Lit(lit) => match &lit.lit {
            syn::Lit::Int(n) => n.base10_parse::<usize>(),
            _ => Err(syn::Error::new_spanned(
                expr,
                format!("transliteral: {what} must be an integer literal"),
            )),
        },
        _ => Err(syn::Error::new_spanned(
            expr,
            format!("transliteral: {what} must be an integer literal"),
        )),
    }
}

/// A vector (`None`) or fixed-length vector array (`Some(len)`) type.
fn value_shape(ty: &Type) -> syn::Result<Option<Option<usize>>> {
    if is_vector(ty) {
        return Ok(Some(None));
    }
    if let Type::Array(array) = ty
        && is_vector(&array.elem)
    {
        return Ok(Some(Some(literal_usize(&array.len, "array length")?)));
    }
    Ok(None)
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

#[derive(Clone, Copy, PartialEq)]
enum ArgKind {
    /// `uint8x16_t`; `mutable` when the binding is `mut`
    Vector { mutable: bool },
    /// `&mut uint8x16_t`
    VectorMut,
    /// `[uint8x16_t; N]`; `mutable` when the binding is `mut`
    Array { len: usize, mutable: bool },
    /// `&mut [uint8x16_t; N]`
    ArrayMut { len: usize },
}

struct Arg {
    name: syn::Ident,
    kind: ArgKind,
}

/// One register operand: an argument, an array element, or a temporary.
struct Slot {
    /// `asm!` operand name, e.g. `a0` or `blocks_3`.
    operand: String,
    /// Place the operand binds to, e.g. `a0.0` or `blocks[3].0`.
    place: TokenStream,
    /// An argument or element the body may write.
    writable: bool,
    /// Written by the body, so a by-value element needs `inout`.
    written: bool,
    /// Always `inout` (`&mut` arguments and their elements).
    always_inout: bool,
}

/// A return element: a vector or a fixed-length array of them.
#[derive(Clone, Copy)]
enum RetShape {
    Vector,
    Array(usize),
}

struct Analysis<'a> {
    args: &'a [Arg],
    slots: Vec<Slot>,
    /// Slot index by key (`a0`, `blocks[3]`, or a temporary's name).
    by_key: HashMap<String, usize>,
    operands: HashSet<String>,
}

impl Analysis<'_> {
    /// Inputs of `uint8x16_t::vmull_p64(a.vgetq_lane_p64::<0>(), b.vgetq_lane_p64::<0>())`.
    fn pmull_inputs(&self, call: &syn::ExprCall) -> syn::Result<Vec<String>> {
        let error = || {
            syn::Error::new_spanned(
                call,
                "transliteral: expected uint8x16_t::vmull_p64(a.vgetq_lane_p64::<0>(), \
                 b.vgetq_lane_p64::<0>())",
            )
        };
        let Expr::Path(func) = &*call.func else {
            return Err(error());
        };
        let segments: Vec<String> = func
            .path
            .segments
            .iter()
            .map(|s| s.ident.to_string())
            .collect();
        if segments != ["uint8x16_t", "vmull_p64"] || call.args.len() != 2 {
            return Err(error());
        }
        call.args
            .iter()
            .map(|arg| match arg {
                Expr::MethodCall(m)
                    if m.method == "vgetq_lane_p64"
                        && m.args.is_empty()
                        && m.turbofish.as_ref().is_some_and(|t| {
                            t.args.len() == 1
                                && matches!(
                                    t.args.first(),
                                    Some(syn::GenericArgument::Const(Expr::Lit(lit)))
                                        if matches!(&lit.lit, syn::Lit::Int(n) if n.base10_digits() == "0")
                                )
                        }) =>
                {
                    self.place_key(&m.receiver)
                }
                _ => Err(error()),
            })
            .collect()
    }

    fn arg(&self, name: &syn::Ident) -> Option<&Arg> {
        self.args.iter().find(|a| a.name == *name)
    }

    fn add_slot(&mut self, key: String, slot: Slot, span: &dyn quote::ToTokens) -> syn::Result<()> {
        if !self.operands.insert(slot.operand.clone()) {
            return Err(syn::Error::new_spanned(
                span,
                format!(
                    "transliteral: operand name `{}` is used twice",
                    slot.operand
                ),
            ));
        }
        self.by_key.insert(key, self.slots.len());
        self.slots.push(slot);
        Ok(())
    }

    /// Key of a readable or writable vector place: `name` or `name[i]`.
    fn place_key(&self, expr: &Expr) -> syn::Result<String> {
        if let Expr::Index(index) = expr {
            let name = ident_of(&index.expr)?;
            let len = match self.arg(&name).map(|a| a.kind) {
                Some(ArgKind::Array { len, .. } | ArgKind::ArrayMut { len }) => len,
                _ => {
                    return Err(syn::Error::new_spanned(
                        &index.expr,
                        "transliteral: only array arguments can be indexed",
                    ));
                }
            };
            let element = literal_usize(&index.index, "array index")?;
            if element >= len {
                return Err(syn::Error::new_spanned(
                    &index.index,
                    format!("transliteral: index {element} is out of bounds for length {len}"),
                ));
            }
            return Ok(format!("{name}[{element}]"));
        }
        let name = ident_of(expr)?;
        if matches!(
            self.arg(&name).map(|a| a.kind),
            Some(ArgKind::Array { .. } | ArgKind::ArrayMut { .. })
        ) {
            return Err(syn::Error::new_spanned(
                expr,
                "transliteral: index array arguments with a literal, e.g. `blocks[0]`",
            ));
        }
        Ok(name.to_string())
    }
}

fn assembly_internal(item: TokenStream) -> syn::Result<TokenStream> {
    let func: ItemFn = syn::parse2(item)?;

    // Returns: (), one value, or a tuple of values, where a value is a
    // uint8x16_t or [uint8x16_t; N].
    let mut shapes: Vec<RetShape> = Vec::new();
    let mut single = false;
    let shape_error = |span: &dyn quote::ToTokens| {
        syn::Error::new_spanned(
            span,
            "transliteral: return type must be (), uint8x16_t, [uint8x16_t; N], or a tuple of them",
        )
    };
    if let ReturnType::Type(_, ty) = &func.sig.output {
        let to_shape = |ty: &Type| -> syn::Result<RetShape> {
            match value_shape(ty)? {
                Some(None) => Ok(RetShape::Vector),
                Some(Some(len)) => Ok(RetShape::Array(len)),
                None => Err(shape_error(ty)),
            }
        };
        if let Type::Tuple(t) = &**ty {
            for elem in &t.elems {
                shapes.push(to_shape(elem)?);
            }
        } else {
            shapes.push(to_shape(ty)?);
            single = true;
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
        let (name, mutable) = match &*typed.pat {
            Pat::Ident(p) if p.by_ref.is_none() && p.subpat.is_none() => {
                (p.ident.clone(), p.mutability.is_some())
            }
            _ => {
                return Err(syn::Error::new_spanned(
                    &typed.pat,
                    "transliteral: arguments must be plain identifiers",
                ));
            }
        };
        let arg_error = || {
            syn::Error::new_spanned(
                &typed.ty,
                "transliteral: arguments must be uint8x16_t, &mut uint8x16_t, \
                 [uint8x16_t; N], or &mut [uint8x16_t; N]",
            )
        };
        let kind = match &*typed.ty {
            Type::Reference(r) if r.mutability.is_some() => match value_shape(&r.elem)? {
                Some(None) => ArgKind::VectorMut,
                Some(Some(len)) => ArgKind::ArrayMut { len },
                None => return Err(arg_error()),
            },
            ty => match value_shape(ty)? {
                Some(None) => ArgKind::Vector { mutable },
                Some(Some(len)) => ArgKind::Array { len, mutable },
                None => return Err(arg_error()),
            },
        };
        args.push(Arg { name, kind });
    }

    let mut analysis = Analysis {
        args: &args,
        slots: Vec::new(),
        by_key: HashMap::new(),
        operands: HashSet::new(),
    };
    for arg in &args {
        let n = &arg.name;
        match arg.kind {
            ArgKind::Vector { .. } | ArgKind::VectorMut => {
                let always_inout = arg.kind == ArgKind::VectorMut;
                let slot = Slot {
                    operand: n.to_string(),
                    place: quote!(#n.0),
                    writable: always_inout || arg.kind == ArgKind::Vector { mutable: true },
                    written: false,
                    always_inout,
                };
                analysis.add_slot(n.to_string(), slot, n)?;
            }
            ArgKind::Array { len, mutable } => {
                for element in 0..len {
                    let index = Literal::usize_unsuffixed(element);
                    let slot = Slot {
                        operand: format!("{n}_{element}"),
                        place: quote!(#n[#index].0),
                        writable: mutable,
                        written: false,
                        always_inout: false,
                    };
                    analysis.add_slot(format!("{n}[{element}]"), slot, n)?;
                }
            }
            ArgKind::ArrayMut { len } => {
                for element in 0..len {
                    let index = Literal::usize_unsuffixed(element);
                    let slot = Slot {
                        operand: format!("{n}_{element}"),
                        place: quote!(#n[#index].0),
                        writable: true,
                        written: false,
                        always_inout: true,
                    };
                    analysis.add_slot(format!("{n}[{element}]"), slot, n)?;
                }
            }
        }
    }
    let arg_slots = analysis.slots.len();

    // Readable from the start (args) or once written by an earlier template.
    let mut readable: HashSet<String> = analysis.by_key.keys().cloned().collect();
    let mut templates: Vec<String> = Vec::new();
    let mut temps: Vec<syn::Ident> = Vec::new();
    // Temps read by the instruction that writes them need `inout` operands.
    let mut inout_temps: HashSet<String> = HashSet::new();

    // A non-unit return takes its values from a trailing expression, which
    // is not a template.
    let mut stmts: Vec<&Stmt> = func.block.stmts.iter().collect();
    let mut tail: Vec<Expr> = Vec::new();
    if !shapes.is_empty() {
        let tail_expr = match stmts.pop() {
            Some(Stmt::Expr(e, None)) => e,
            Some(other) => {
                return Err(syn::Error::new_spanned(
                    other,
                    "transliteral: expected a trailing return expression",
                ));
            }
            None => {
                return Err(syn::Error::new_spanned(
                    &func.sig.output,
                    "transliteral: expected a trailing return expression",
                ));
            }
        };
        if single {
            tail.push(tail_expr.clone());
        } else {
            let Expr::Tuple(t) = tail_expr else {
                return Err(syn::Error::new_spanned(
                    tail_expr,
                    "transliteral: expected a trailing tuple",
                ));
            };
            if t.elems.len() != shapes.len() {
                return Err(syn::Error::new_spanned(
                    tail_expr,
                    "transliteral: returned tuple arity must match the return type",
                ));
            }
            tail.extend(t.elems.iter().cloned());
        }
    }

    for stmt in stmts {
        // `target` is the written place's key; `new_temp` is set for `let`.
        let (target, new_temp, rhs) = match stmt {
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
                if analysis.by_key.contains_key(&name.to_string()) || analysis.arg(&name).is_some()
                {
                    return Err(syn::Error::new_spanned(
                        stmt,
                        "transliteral: redefinition; assign or pick a fresh name",
                    ));
                }
                (name.to_string(), Some(name), init)
            }
            Stmt::Expr(Expr::Assign(assign), _) => {
                let key = match &*assign.left {
                    Expr::Unary(u) if matches!(u.op, UnOp::Deref(_)) => {
                        let name = ident_of(&u.expr)?;
                        if analysis.arg(&name).map(|a| a.kind) != Some(ArgKind::VectorMut) {
                            return Err(syn::Error::new_spanned(
                                stmt,
                                "transliteral: can only assign through *inout-arg",
                            ));
                        }
                        name.to_string()
                    }
                    Expr::Index(_) => analysis.place_key(&assign.left)?,
                    Expr::Path(_) => {
                        let name = ident_of(&assign.left)?;
                        match analysis.arg(&name).map(|a| a.kind) {
                            None | Some(ArgKind::Vector { mutable: true }) => {}
                            Some(_) => {
                                return Err(syn::Error::new_spanned(
                                    stmt,
                                    "transliteral: can only assign through *inout-arg or to a \
                                     `mut` by-value argument",
                                ));
                            }
                        }
                        name.to_string()
                    }
                    _ => {
                        return Err(syn::Error::new_spanned(
                            &assign.left,
                            "transliteral: can only assign to a variable, *place, or array element",
                        ));
                    }
                };
                match analysis.by_key.get(&key) {
                    None => {
                        return Err(syn::Error::new_spanned(
                            stmt,
                            "transliteral: assignment to unknown place",
                        ));
                    }
                    Some(&index) if index < arg_slots && !analysis.slots[index].writable => {
                        return Err(syn::Error::new_spanned(
                            stmt,
                            "transliteral: array element is not writable; take the array \
                             as `mut` or `&mut`",
                        ));
                    }
                    Some(_) => {}
                }
                (key, None, (*assign.right).clone())
            }
            Stmt::Expr(expr, _) => {
                return Err(syn::Error::new_spanned(
                    expr,
                    "transliteral: only assignments are supported",
                ));
            }
            _ => {
                return Err(syn::Error::new_spanned(
                    stmt,
                    "transliteral: unsupported statement",
                ));
            }
        };

        let (op, inputs) = match rhs {
            Expr::Binary(b) if matches!(b.op, syn::BinOp::BitXor(_)) => (
                XOR,
                vec![analysis.place_key(&b.left)?, analysis.place_key(&b.right)?],
            ),
            Expr::MethodCall(m) => {
                if let Some(turbofish) = &m.turbofish {
                    return Err(syn::Error::new_spanned(
                        turbofish,
                        "transliteral: no supported intrinsic takes an immediate",
                    ));
                }
                let Some(op) = mnemonic(&m.method.to_string()) else {
                    return Err(syn::Error::new_spanned(
                        &m.method,
                        "transliteral: unsupported intrinsic (supported: vaeseq_u8, vaesmcq_u8, veor3q_u8, vtrn1q_u64, vtrn2q_u64, vmull_high_p64, uint8x16_t::vmull_p64 of lane 0s)",
                    ));
                };
                let mut inputs = vec![analysis.place_key(&m.receiver)?];
                for arg in &m.args {
                    inputs.push(analysis.place_key(arg)?);
                }
                (op, inputs)
            }
            Expr::Call(c) => (PMULL, analysis.pmull_inputs(&c)?),
            ref other => {
                return Err(syn::Error::new_spanned(
                    other,
                    "transliteral: right-hand side must be an intrinsic method call, \
                     uint8x16_t::vmull_p64 of lane 0s, or a ^ b",
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
        // Destination aliases the receiver (AESE reads and writes its first
        // operand), so the target must be that receiver.
        if op.tied && inputs[0] != target {
            return Err(syn::Error::new_spanned(
                stmt,
                "transliteral: tied-destination target must be the receiver",
            ));
        }

        if let Some(name) = new_temp {
            let slot = Slot {
                operand: target.clone(),
                place: {
                    let binding = format_ident!("{}_out", name);
                    quote!(#binding.0)
                },
                writable: true,
                written: true,
                always_inout: false,
            };
            analysis.add_slot(target.clone(), slot, &name)?;
            temps.push(name);
        } else {
            let index = analysis.by_key[&target];
            // A temporary read by the instruction that writes it (in-place
            // update) needs an `inout` operand; pure writes stay `out`.
            if index >= arg_slots && inputs.iter().any(|i| *i == target) {
                inout_temps.insert(target.clone());
            }
            analysis.slots[index].written = true;
        }

        let operand_of = |key: &String| analysis.slots[analysis.by_key[key]].operand.clone();
        let input_operands: Vec<String> = inputs.iter().map(operand_of).collect();
        templates.push(render(&op, &operand_of(&target), &input_operands));
        readable.insert(target);
    }

    // Returns never name an `out` place bound to an argument (it would
    // alias the input operand). A vector return is a temporary or a `mut`
    // by-value vector argument, an array return a `mut` by-value array argument
    // (both updated in place through `inout`, so returning the local copy
    // is sound) or an array literal of temporaries.
    let temp_out = |expr: &Expr| -> syn::Result<TokenStream> {
        let name = ident_of(expr)?;
        if !temps.iter().any(|t| *t == name) {
            return Err(syn::Error::new_spanned(
                expr,
                "transliteral: can only return temporaries",
            ));
        }
        let binding = format_ident!("{}_out", name);
        Ok(quote!(#binding))
    };
    let mut ret_values: Vec<TokenStream> = Vec::new();
    for (shape, expr) in shapes.iter().zip(&tail) {
        let value = match (*shape, expr) {
            (RetShape::Vector, expr) => {
                let name = ident_of(expr)?;
                if analysis.arg(&name).map(|a| a.kind) == Some(ArgKind::Vector { mutable: true }) {
                    quote!(#name)
                } else {
                    temp_out(expr)?
                }
            }
            (RetShape::Array(len), Expr::Array(array)) => {
                if array.elems.len() != len {
                    return Err(syn::Error::new_spanned(
                        expr,
                        format!("transliteral: expected {len} array elements"),
                    ));
                }
                let elems = array
                    .elems
                    .iter()
                    .map(temp_out)
                    .collect::<syn::Result<Vec<_>>>()?;
                quote!([#(#elems),*])
            }
            (RetShape::Array(len), expr) => {
                let name = ident_of(expr)?;
                if !matches!(
                    analysis.arg(&name).map(|a| a.kind),
                    Some(ArgKind::Array { len: arg_len, mutable: true }) if arg_len == len
                ) {
                    return Err(syn::Error::new_spanned(
                        expr,
                        format!(
                            "transliteral: an array return must be a `mut` by-value \
                             [uint8x16_t; {len}] argument or an array literal of temporaries"
                        ),
                    ));
                }
                quote!(#name)
            }
        };
        ret_values.push(value);
    }

    let vis = &func.vis;
    let attrs = &func.attrs;
    let name = &func.sig.ident;
    let asm_ident = format_ident!("{}_asm", name);
    let intrinsics_ident = format_ident!("{}_intrinsics", name);
    let test_ident = format_ident!("{}_test", name);

    // Operands in signature order (elements in index order), then
    // temporaries in definition order.
    let mut operands: Vec<TokenStream> = Vec::new();
    for (index, slot) in analysis.slots.iter().enumerate() {
        let operand = format_ident!("{}", slot.operand);
        let place = &slot.place;
        let class = if index < arg_slots {
            if slot.always_inout || slot.written {
                quote!(inout)
            } else {
                quote!(in)
            }
        } else if inout_temps.contains(&slot.operand) {
            quote!(inout)
        } else {
            // Every temporary gets a named `out` place. Anonymous
            // `out ... _` tells rustc the value is discarded, but later
            // template lines may still read the register — LLVM then
            // allocates garbage for it.
            quote!(out)
        };
        operands.push(quote!(#operand = #class(vreg) #place));
    }
    // Fully initialized so the field projection is a mutation, not a
    // partial init; the zeroing is a dead store (overwritten before any
    // read). Never-read bindings are covered by the fn's `#[allow(unused)]`.
    let out_decls: Vec<TokenStream> = temps
        .iter()
        .map(|temp| {
            let binding = format_ident!("{}_out", temp);
            quote!(let mut #binding: uint8x16_t = uint8x16_t::ZERO;)
        })
        .collect();
    let ret_tail = if single {
        ret_values[0].clone()
    } else {
        quote!((#(#ret_values),*))
    };

    let mut asm_sig = func.sig.clone();
    asm_sig.ident = asm_ident.clone();
    let mut ref_sig = func.sig.clone();
    ref_sig.ident = intrinsics_ident.clone();
    // The dispatch only forwards its arguments, so `mut` bindings (by-value
    // arrays updated in place) would be unused there.
    let mut orig_sig = func.sig.clone();
    for input in &mut orig_sig.inputs {
        if let FnArg::Typed(typed) = input
            && let Pat::Ident(p) = &mut *typed.pat
        {
            p.mutability = None;
        }
    }
    let orig_stmts = &func.block.stmts;
    let fwd: Vec<&syn::Ident> = args.iter().map(|a| &a.name).collect();

    // Differential test: deterministic inputs per slot, asm vs intrinsics.
    // uint8x16_t has no PartialEq, so values compare as bytes.
    let mut next_slot = 0usize;
    let mut vector_input = || {
        let vals: Vec<u8> = (0..16).map(|k| (next_slot * 16 + k) as u8).collect();
        next_slot += 1;
        quote!(uint8x16_t::from_bytes([#(#vals),*]))
    };
    let mut test_inputs: Vec<TokenStream> = Vec::new();
    let mut asm_call_args: Vec<TokenStream> = Vec::new();
    let mut ref_call_args: Vec<TokenStream> = Vec::new();
    let mut asserts: Vec<TokenStream> = Vec::new();
    for arg in &args {
        let n = &arg.name;
        let n_asm = format_ident!("{}_asm", n);
        let n_ref = format_ident!("{}_ref", n);
        match arg.kind {
            ArgKind::Vector { .. } => {
                let value = vector_input();
                test_inputs.push(quote!(let #n: uint8x16_t = #value;));
                asm_call_args.push(quote!(#n));
                ref_call_args.push(quote!(#n));
            }
            ArgKind::Array { len, .. } => {
                let values: Vec<TokenStream> = (0..len).map(|_| vector_input()).collect();
                let len = Literal::usize_unsuffixed(len);
                test_inputs.push(quote!(let #n: [uint8x16_t; #len] = [#(#values),*];));
                asm_call_args.push(quote!(#n));
                ref_call_args.push(quote!(#n));
            }
            ArgKind::VectorMut => {
                let value = vector_input();
                test_inputs.push(quote!(let mut #n_asm: uint8x16_t = #value;));
                test_inputs.push(quote!(let mut #n_ref: uint8x16_t = #value;));
                asm_call_args.push(quote!(&mut #n_asm));
                ref_call_args.push(quote!(&mut #n_ref));
                asserts.push(quote!(assert_eq!(#n_asm.to_bytes(), #n_ref.to_bytes());));
            }
            ArgKind::ArrayMut { len } => {
                let values: Vec<TokenStream> = (0..len).map(|_| vector_input()).collect();
                let len = Literal::usize_unsuffixed(len);
                test_inputs.push(quote!(let mut #n_asm: [uint8x16_t; #len] = [#(#values),*];));
                test_inputs.push(quote!(let mut #n_ref: [uint8x16_t; #len] = #n_asm;));
                asm_call_args.push(quote!(&mut #n_asm));
                ref_call_args.push(quote!(&mut #n_ref));
                asserts.push(quote!(
                    assert_eq!(#n_asm.map(|v| v.to_bytes()), #n_ref.map(|v| v.to_bytes()));
                ));
            }
        }
    }
    let (ret_bind_asm, ret_bind_ref) = if shapes.is_empty() {
        (quote!(_), quote!(_))
    } else {
        (quote!(ret_asm), quote!(ret_ref))
    };
    for (index, shape) in shapes.iter().enumerate() {
        let (value_asm, value_ref) = if single {
            (quote!(ret_asm), quote!(ret_ref))
        } else {
            let field = syn::Index::from(index);
            (quote!(ret_asm.#field), quote!(ret_ref.#field))
        };
        asserts.push(match shape {
            RetShape::Vector => quote!(assert_eq!(#value_asm.to_bytes(), #value_ref.to_bytes());),
            RetShape::Array(_) => quote!(
                assert_eq!(#value_asm.map(|v| v.to_bytes()), #value_ref.map(|v| v.to_bytes()));
            ),
        });
    }

    Ok(quote!(
        #[allow(unused)]
        #vis #asm_sig {
            #(#out_decls)*
            unsafe {
                core::arch::asm!(
                    #(#templates,)*
                    #(#operands,)*
                    options(nomem, nostack, preserves_flags),
                )
            }
            #ret_tail
        }

        #[allow(unused)]
        #vis #ref_sig {
            #(#orig_stmts)*
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
            unsafe {
                #(#test_inputs)*
                let #ret_bind_asm = #asm_ident(#(#asm_call_args),*);
                let #ret_bind_ref = #intrinsics_ident(#(#ref_call_args),*);
                #(#asserts)*
            }
        }
    ))
}

#[cfg(test)]
mod tests;
