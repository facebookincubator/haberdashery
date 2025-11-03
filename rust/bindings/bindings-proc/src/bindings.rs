// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use bindings::Descriptor;
use bindings::Descriptors;
use proc_macro2::TokenStream;
use quote::ToTokens;
use quote::quote;

use crate::args::Args;

fn get_trait_ident(item_impl: &syn::ItemImpl) -> Option<syn::Ident> {
    let trait_path: &syn::Path = item_impl.trait_.as_ref().map(|(_, path, _)| path)?;
    trait_path.segments.last().map(|s| s.ident.clone())
}

pub fn bindings(attributes: &str, item: TokenStream) -> TokenStream {
    let mut result = TokenStream::default();
    let args = Args::new(attributes).unwrap_or_else(|e| panic!("{e}: Couldn't parse {attributes}"));
    let mut item_mod =
        syn::parse2::<syn::ItemMod>(item).unwrap_or_else(|e| panic!("{e}: Couldn't parse ItemMod"));
    let mod_content = item_mod.clone().content.unwrap().1;
    let item_impl: &syn::ItemImpl = mod_content
        .iter()
        .find_map(|item| match item {
            syn::Item::Impl(item_impl) => Some(item_impl),
            _ => None,
        })
        .unwrap();
    let trait_ident =
        get_trait_ident(item_impl).unwrap_or_else(|| panic!("impl block wasn't for a trait"));
    let primitive = trait_ident.to_string().to_lowercase();

    let mut descriptor = Descriptor::default();
    descriptor.insert("primitive", &primitive);
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
    args.extend(&mut descriptor);
    let descriptors: Vec<Descriptor> = args
        .profiles()
        .iter()
        .map(|profile| {
            descriptor.insert("profile", profile);
            descriptor.clone()
        })
        .collect();
    let descriptors: Descriptors = descriptors.into();
    let struct_size = descriptor["struct_size"]
        .parse::<usize>()
        .expect("struct_size not an int");
    let struct_align = descriptor["struct_alignment"]
        .parse::<usize>()
        .expect("struct_alignment not an int");
    let arch = &descriptor["arch"];
    let ty = &item_impl.self_ty;

    let mut more_module_items = TokenStream::default();
    more_module_items.extend(quote!(
        const _: fn() = || {
            let _ = core::mem::transmute::<[u8; #struct_size], #ty>;
        };
    ));
    more_module_items.extend(quote!(
        const _: fn() = || {
            let _ = core::mem::transmute::<[u8; #struct_align], [u8; core::mem::align_of::<#ty>()]>;
        };
    ));
    match primitive.as_str() {
        "aead" => more_module_items.extend(
            descriptors
                .iter()
                .map(|d| crate::aead::profile_binding(ty, d)),
        ),
        "hash" => more_module_items.extend(
            descriptors
                .iter()
                .map(|d| crate::hash::profile_binding(ty, d)),
        ),
        "mac" => more_module_items.extend(
            descriptors
                .iter()
                .map(|d| crate::mac::profile_binding(ty, d)),
        ),
        _ => unimplemented!("don't know how to bind to {primitive}"),
    }

    let Some((_brace, module_items)) = item_mod.content.as_mut() else {
        panic!("module has no contents");
    };

    module_items.extend(
        more_module_items
            .into_iter()
            .map(|item| syn::Item::Verbatim(item.into())),
    );
    result.extend(quote!(#[cfg(target_arch = #arch)]));
    result.extend(item_mod.to_token_stream());

    if let Ok(path) = std::env::var("DESCRIPTOR_DIR") {
        let path = std::path::Path::new(&path).join(primitive);
        std::fs::create_dir_all(&path)
            .unwrap_or_else(|e| panic!("{e}: Couldn't create directory for {path:?}"));
        descriptors.write_files(&path);
    }
    result
}
