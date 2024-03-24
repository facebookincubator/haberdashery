// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro2::TokenStream;
use quote::quote;
use syn::ItemStruct;

pub fn get_fields(item: &ItemStruct) -> impl ExactSizeIterator<Item = TokenStream> + '_ {
    let syn::Fields::Named(fields) = &item.fields else {
        unimplemented!();
    };
    fields.named.iter().map(|field| {
        let name = field.ident.as_ref().unwrap().to_string();
        let ty = &field.ty;
        let ty = match quote!(#ty).to_string().as_str() {
            "Vec < u8 >" => quote!(cozybuf::Type::Bytes),
            "String" => quote!(cozybuf::Type::String),
            "u32" => quote!(cozybuf::Type::U32),
            x => unimplemented!("Type {x:?} not suported"),
        };
        quote!(cozybuf::Field {
            name: #name,
            ty: #ty,
        },)
    })
}

pub fn descriptor(item: TokenStream) -> TokenStream {
    let mut result = quote!(#[allow(unused)]);
    result.extend(item.clone());
    let item = syn::parse2::<syn::Item>(item).unwrap();
    let syn::Item::Struct(item) = item else {
        unimplemented!();
    };
    let fields = get_fields(&item);
    let len = fields.len();
    let fields = quote!( [ #( #fields )* ] );

    let name = item.ident;
    let name_str = name.to_string();
    result.extend(quote!(
        #[allow(unused)]
        impl #name {
            const DESCRIPTOR: cozybuf::Descriptor<#len> = cozybuf::Descriptor {
                name: #name_str,
                fields: #fields,
            };
        }
    ));
    result
}

pub fn rust(item: &TokenStream) -> TokenStream {
    let item = item.to_string();
    let structs = item.split(',').map(|name| {
        let ident = syn::Ident::new(name, proc_macro2::Span::call_site());
        quote!(
            println!();
            print!("{}", #ident::DESCRIPTOR.rust());
        )
    });
    quote!(
        print!("// @{}generated", "");
        #( #structs )*
    )
}
pub fn cpp20_impl(item: &TokenStream) -> TokenStream {
    let item = item.to_string();
    let structs = item.split(',').map(|name| {
        let ident = syn::Ident::new(name, proc_macro2::Span::call_site());
        quote!(
            println!();
            print!("{}", #ident::DESCRIPTOR.cpp20_impl());
        )
    });
    quote!(
        print!("// @{}generated", "");
        #( #structs )*
    )
}
pub fn cpp20_header(item: &TokenStream) -> TokenStream {
    let item = item.to_string();
    let structs = item.split(',').map(|name| {
        let ident = syn::Ident::new(name, proc_macro2::Span::call_site());
        quote!(
            println!();
            print!("{}", #ident::DESCRIPTOR.cpp20_header());
        )
    });
    quote!(
        print!("// @{}generated", "");
        #( #structs )*
    )
}

pub fn main(item: TokenStream) -> TokenStream {
    let rust = rust(&item);
    let cpp20_impl = cpp20_impl(&item);
    let cpp20_header = cpp20_header(&item);
    quote!(
        fn main() {
            let Some(lang) = std::env::args().nth(1) else {
                unimplemented!("No language specified");
            };
            match lang.as_str() {
                "rust" => {
                    #rust
                }
                "cpp20_impl" => {
                    #cpp20_impl
                }
                "cpp20_header" => {
                    #cpp20_header
                }
                _ => unimplemented!("{lang} not supported"),
            }
        }
    )
}
