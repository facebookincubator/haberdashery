// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro2::Span;
use proc_macro2::TokenStream;
use quote::quote;
use syn::Ident;
use syn::ItemFn;

#[proc_macro_attribute]
pub fn assembly(
    _attributes: proc_macro::TokenStream,
    item: proc_macro::TokenStream,
) -> proc_macro::TokenStream {
    assembly_internal(item.into()).into()
}

fn assembly_internal(item: TokenStream) -> TokenStream {
    let mut item_fn = syn::parse2::<ItemFn>(item.clone())
        .unwrap_or_else(|e| panic!("{e}: Couldn't parse ItemFn"));
    let sig = item_fn.sig.clone();
    let inputs = sig.inputs.clone();
    let args: Vec<QualifiedArg> = quote!(#inputs)
        .to_string()
        .split(',')
        .filter_map(QualifiedArg::new)
        .collect();
    let statements: Vec<Statement> = item_fn
        .clone()
        .block
        .stmts
        .iter()
        .map(|stmt| Statement::new(&quote!(#stmt).to_string()))
        .collect();
    let mut asm_args: Vec<Vec<TokenStream>> = args.iter().map(QualifiedArg::asm).collect();
    asm_args.push(
        statements
            .iter()
            .filter_map(Statement::temp_arg_asm)
            .collect(),
    );
    let asm_statements: Vec<String> = statements.iter().map(Statement::asm).collect();
    let mut ref_sig = sig.clone();
    ref_sig.ident = Ident::new(&format!("{}_ref", sig.ident), Span::call_site());

    let asm = quote!(
        #[allow(unused)]
        #sig {
            core::arch::asm!(
                #(#asm_statements,)*
                #(#(#asm_args,)*)*
                options(
                    att_syntax,
                    nomem,
                    nostack,
                    preserves_flags,
                    pure,
                ),
            )
        }
    );

    let mut result = TokenStream::new();
    result.extend(asm);
    item_fn.sig.ident = Ident::new(&format!("{}_ref", sig.ident), Span::call_site());

    result.extend(quote!(
        #[allow(unused)]
        #item_fn
    ));
    result
}

#[derive(Debug)]
struct QualifiedArg {
    name: String,
    qual: Qualification,
    ty: Type,
}
impl QualifiedArg {
    pub fn new(s: &str) -> Option<Self> {
        if s.trim().is_empty() {
            return None;
        }
        let (name, ty) = s.split_once(":").expect("Couldn't find :");
        let name = name.trim();
        let (ty, qual) = Qualification::new(ty.trim());
        Some(Self {
            name: name.to_string(),
            qual,
            ty: Type::new(ty.trim()),
        })
    }
    pub fn asm(&self) -> Vec<TokenStream> {
        let name = Ident::new(&self.name, Span::call_site());
        let capture = match (self.qual, self.ty) {
            (Qualification::MutRef, Type::M128i) => quote!(*#name),
            _ => quote!(#name),
        };

        let qual = Ident::new(self.qual.asm(), Span::call_site());
        match self.ty {
            Type::M128i => vec![quote!(#name = #qual(xmm_reg) #capture)],
            Type::M128iArray(len) => (0..len)
                .map(|i| {
                    let name = Ident::new(&format!("{}{i}", name), Span::call_site());
                    quote!(#name = #qual(xmm_reg) #capture[#i])
                })
                .collect(),
        }
    }
}
#[derive(Debug, Clone, Copy)]
enum Qualification {
    None,
    MutRef,
}
impl Qualification {
    pub fn new(s: &str) -> (&str, Self) {
        if let Some(name) = s.strip_prefix("& mut") {
            (name.trim(), Self::MutRef)
        } else {
            (s, Self::None)
        }
    }
    pub fn asm(&self) -> &str {
        match self {
            Self::None => "in",
            Self::MutRef => "inout",
        }
    }
}

fn extract_usize(data: &str, template: &str) -> Option<usize> {
    let (prefix, suffix) = template.split_once("{}")?;
    let i = data.strip_prefix(prefix)?.strip_suffix(suffix)?;
    i.parse().ok()
}
#[derive(Debug, Clone, Copy)]
enum Type {
    M128i,
    M128iArray(usize),
}
impl Type {
    pub fn new(s: &str) -> Self {
        if s == "__m128i" {
            Self::M128i
        } else if let Some(i) = extract_usize(s, "[__m128i ; {}]") {
            Self::M128iArray(i)
        } else if let Some(i) = extract_usize(s, "[__m128i; {}]") {
            Self::M128iArray(i)
        } else {
            unimplemented!("{s} not supported")
        }
    }
}

#[derive(Debug)]
enum Statement {
    Unknown,
    Assignment(Assignment),
}
impl Statement {
    fn new(line: &str) -> Self {
        match line.split_once('=') {
            Some((lhs, rhs)) => Self::Assignment(Assignment::new(lhs.trim(), rhs.trim())),
            None => Self::Unknown,
        }
    }
    fn temp_arg_asm(&self) -> Option<TokenStream> {
        if let Self::Assignment(assignment) = self {
            if assignment.is_temp {
                let name = Ident::new(&assignment.output.asm(), Span::call_site());
                return Some(quote!(#name = out(xmm_reg) _));
            }
        }
        None
    }
    fn asm(&self) -> String {
        match self {
            Self::Assignment(assignment) => assignment.asm(),
            _ => unimplemented!("Unsupported asm statement"),
        }
    }
}
#[derive(Debug)]
struct Assignment {
    output: Arg,
    call: Call,
    is_temp: bool,
}
impl Assignment {
    fn new(output: &str, call: &str) -> Self {
        let output = output.strip_prefix("*").unwrap_or(output).trim();
        let (output, is_temp) = if let Some(output) = output.strip_prefix("let mut ") {
            (output, true)
        } else if let Some(output) = output.strip_prefix("let ") {
            (output, true)
        } else {
            (output, false)
        };
        Self {
            output: Arg::new(output.trim()),
            call: Call::new(call),
            is_temp,
        }
    }
    fn asm(&self) -> String {
        let mut args = self.call.asm_args();
        args.push(self.output.asm());
        let args = args
            .iter()
            .map(|arg| {
                let arg = arg.strip_prefix("*").unwrap_or(arg).trim();
                format!("{{{arg}}}")
            })
            .collect::<Vec<String>>()
            .join(", ");
        match self.call.name.as_str() {
            "_mm_xor_si128" => format!("vpxor {args}"),
            "_mm_aesenc_si128" => format!("vaesenc {args}"),
            "_mm_aesenclast_si128" => format!("vaesenclast {args}"),
            "_mm_clmulepi64_si128 :: < 0x00 >" => format!("vpclmulqdq $0x00, {args}"),
            "_mm_clmulepi64_si128 :: < 0x01 >" => format!("vpclmulqdq $0x01, {args}"),
            "_mm_clmulepi64_si128 :: < 0x10 >" => format!("vpclmulqdq $0x10, {args}"),
            "_mm_clmulepi64_si128 :: < 0x11 >" => format!("vpclmulqdq $0x11, {args}"),
            x => unimplemented!("assembly for {x} is not implemented"),
        }
    }
}
#[derive(Debug)]
struct Call {
    object: Arg,
    name: String,
    args: Vec<Arg>,
}
impl Call {
    fn new(s: &str) -> Self {
        let (object, remainder) = s.split_once('.').unwrap();
        let (name, remainder) = remainder.split_once('(').unwrap();
        let args = if let Some(args) = remainder.strip_suffix(") ;") {
            args
        } else if let Some(args) = remainder.strip_suffix(");") {
            args
        } else {
            panic!("Couldn't strip ');'");
        };
        let args = args.split(',').map(|s| Arg::new(s.trim())).collect();
        Self {
            object: Arg::new(object.trim()),
            name: name.trim().to_string(),
            args,
        }
    }
    fn asm_args(&self) -> Vec<String> {
        let mut args: Vec<String> = self.args.iter().map(Arg::asm).collect();
        args.push(self.object.asm());
        args
    }
}
#[derive(Debug)]
enum Arg {
    Value(String),
    Array(String, usize),
}
impl Arg {
    fn new(s: &str) -> Self {
        Self::parse_array(s).unwrap_or(Self::Value(s.to_string()))
    }
    fn parse_array(s: &str) -> Option<Self> {
        let (value, remainder) = s.split_once("[")?;
        let (index, _) = remainder.split_once("]")?;
        let index = index.trim().parse().ok()?;
        Some(Self::Array(value.trim().to_string(), index))
    }
    fn asm(&self) -> String {
        match self {
            Self::Value(value) => value.to_string(),
            Self::Array(value, i) => format!("{value}{i}"),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    pub trait Pretty {
        fn pretty(self) -> String;
    }
    impl Pretty for proc_macro2::TokenStream {
        fn pretty(self) -> String {
            prettyplease::unparse(&syn::parse2::<syn::File>(self).unwrap())
        }
    }
    impl Pretty for &str {
        fn pretty(self) -> String {
            prettyplease::unparse(&syn::parse_file(self).unwrap())
        }
    }

    #[test]
    fn xor() {
        let func = quote!(
            unsafe fn xor(lhs: &mut __m128i, rhs: __m128i) {
                *lhs = lhs._mm_xor_si128(rhs);
            }
        );
        let assembly = assembly_internal(func).pretty();
        pretty_assertions::assert_eq!(
            assembly,
            stringify!(
                #[allow(unused)]
                unsafe fn xor(lhs: &mut __m128i, rhs: __m128i) {
                    core::arch::asm!(
                        "vpxor {rhs}, {lhs}, {lhs}",
                        lhs = inout(xmm_reg) *lhs,
                        rhs = in(xmm_reg) rhs,
                        options(att_syntax, nomem, nostack, preserves_flags, pure,),
                    )
                }
                #[allow(unused)]
                unsafe fn xor_ref(lhs: &mut __m128i, rhs: __m128i) {
                    *lhs = lhs._mm_xor_si128(rhs);
                }
            )
            .pretty()
        );
    }

    #[test]
    fn xor_array() {
        let func = quote!(
            unsafe fn xor(lhs: &mut [__m128i; 3], rhs: [__m128i; 3]) {
                lhs[0] = lhs[0]._mm_xor_si128(rhs[0]);
                lhs[1] = lhs[1]._mm_xor_si128(rhs[1]);
                lhs[2] = lhs[2]._mm_xor_si128(rhs[2]);
            }
        );
        let assembly = assembly_internal(func).pretty();
        pretty_assertions::assert_eq!(
            assembly,
            stringify!(
                #[allow(unused)]
                unsafe fn xor(lhs: &mut [__m128i; 3], rhs: [__m128i; 3]) {
                    core::arch::asm!(
                        "vpxor {rhs0}, {lhs0}, {lhs0}",
                        "vpxor {rhs1}, {lhs1}, {lhs1}",
                        "vpxor {rhs2}, {lhs2}, {lhs2}",
                        lhs0 = inout(xmm_reg) lhs[0usize],
                        lhs1 = inout(xmm_reg) lhs[1usize],
                        lhs2 = inout(xmm_reg) lhs[2usize],
                        rhs0 = in(xmm_reg) rhs[0usize],
                        rhs1 = in(xmm_reg) rhs[1usize],
                        rhs2 = in(xmm_reg) rhs[2usize],
                        options(att_syntax, nomem, nostack, preserves_flags, pure,),
                    )
                }
                #[allow(unused)]
                unsafe fn xor_ref(lhs: &mut [__m128i; 3], rhs: [__m128i; 3]) {
                    lhs[0] = lhs[0]._mm_xor_si128(rhs[0]);
                    lhs[1] = lhs[1]._mm_xor_si128(rhs[1]);
                    lhs[2] = lhs[2]._mm_xor_si128(rhs[2]);
                }
            )
            .pretty()
        );
    }

    #[test]
    fn tmp() {
        let func = quote!(
            unsafe fn xor(lhs: &mut __m128i, data: [__m128i; 3]) {
                *lhs = lhs._mm_xor_si128(data[0]);
                let tmp = data[1]._mm_xor_si128(data[2]);
                *lhs = lhs._mm_xor_si128(tmp);
            }
        );
        let assembly = assembly_internal(func).pretty();
        pretty_assertions::assert_eq!(
            assembly,
            stringify!(
                #[allow(unused)]
                unsafe fn xor(lhs: &mut __m128i, data: [__m128i; 3]) {
                    core::arch::asm!(
                        "vpxor {data0}, {lhs}, {lhs}",
                        "vpxor {data2}, {data1}, {tmp}",
                        "vpxor {tmp}, {lhs}, {lhs}",
                        lhs = inout(xmm_reg) *lhs,
                        data0 = in(xmm_reg) data[0usize],
                        data1 = in(xmm_reg) data[1usize],
                        data2 = in(xmm_reg) data[2usize],
                        tmp = out(xmm_reg) _,
                        options(att_syntax, nomem, nostack, preserves_flags, pure,),
                    )
                }
                #[allow(unused)]
                unsafe fn xor_ref(lhs: &mut __m128i, data: [__m128i; 3]) {
                    *lhs = lhs._mm_xor_si128(data[0]);
                    let tmp = data[1]._mm_xor_si128(data[2]);
                    *lhs = lhs._mm_xor_si128(tmp);
                }
            )
            .pretty()
        );
    }
}
