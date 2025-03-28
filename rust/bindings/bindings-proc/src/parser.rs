// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use bindings::Case;
use bindings::Descriptor;
use bindings::Descriptors;
use proc_macro2::TokenStream;
use quote::format_ident;
use quote::quote;
use syn::ItemImpl;
use syn::Type;

use crate::args::Args;

pub struct Parser {
    item_impl: ItemImpl,
    descriptor: Descriptor,
    descriptors: Descriptors,
}

impl Parser {
    pub fn new(item: &TokenStream, args: &Args, primitive: &str) -> Parser {
        let item_impl = syn::parse2::<ItemImpl>(item.clone())
            .unwrap_or_else(|e| panic!("{e}: Couldn't parse ItemImpl"));
        let (descriptor, descriptors) = parse_descriptor(&item_impl, args, primitive);
        Self {
            item_impl,
            descriptor,
            descriptors,
        }
    }
    pub fn self_ty(&self) -> &Type {
        &self.item_impl.self_ty
    }
    pub fn descriptor(&self) -> &Descriptor {
        &self.descriptor
    }
    pub fn descriptors(&self) -> &Descriptors {
        &self.descriptors
    }
    pub fn assert_size(&self, ty: &Type, size: &str, profile: &str) -> TokenStream {
        let size = self.descriptor()[size].parse::<usize>().unwrap();
        quote!(
            #[cfg(feature = #profile)]
            const _: fn() = || {
                let _ = core::mem::transmute::<[u8; #size], #ty>;
            };
        )
    }
    pub fn assert_alignment(&self, ty: &Type, alignment: &str, profile: &str) -> TokenStream {
        let alignment = self.descriptor()[alignment].parse::<usize>().unwrap();
        quote!(
            #[cfg(feature = #profile)]
            const _: fn() = || {
                let _ = core::mem::transmute::<[u8; #alignment], [u8; core::mem::align_of::<#ty>()]>;
            };
        )
    }
}
pub fn func_token(descriptor: &Descriptor, name: &str) -> TokenStream {
    let prefix = &descriptor["prefix"];
    let algorithm = descriptor.get_with_case("algorithm", Case::Flat);
    let profile = &descriptor["profile"];
    let ident = match descriptor.get("api") {
        Some(api) => format_ident!("{prefix}_{algorithm}_{api}_{profile}_{name}"),
        None => format_ident!("{prefix}_{algorithm}_{profile}_{name}"),
    };
    quote!(
        #[no_mangle]
        #[cfg(any(test, feature = #profile))]
        fn #ident
    )
}
fn parse_descriptor(
    item_impl: &ItemImpl,
    args: &Args,
    primitive: &str,
) -> (Descriptor, Descriptors) {
    let mut descriptor = Descriptor::default();
    descriptor.insert("prefix", args.prefix());
    descriptor.insert("algorithm", args.algorithm());
    descriptor.insert("primitive", primitive);
    descriptor.insert("arch", args.arch());
    if !args.api().is_empty() {
        descriptor.insert("api", args.api());
    }
    for item in &item_impl.items {
        let syn::ImplItem::Const(item) = item else {
            continue;
        };
        let name = &item.ident;
        let syn::Expr::Lit(value) = &item.expr else {
            unimplemented!("const is not a literal");
        };
        let syn::Lit::Int(value) = &value.lit else {
            unimplemented!("const is not an integer");
        };
        descriptor.insert(name.to_string().to_lowercase(), value.to_string());
    }
    let descriptors = args
        .profiles()
        .iter()
        .map(|profile| {
            let mut descriptor = descriptor.clone();
            descriptor.insert("profile", profile);
            descriptor
        })
        .collect::<Vec<Descriptor>>()
        .into();
    (descriptor, descriptors)
}
