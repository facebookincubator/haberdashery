// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro2::TokenStream;
use quote::quote;

pub fn metadata_token(attributes: TokenStream) -> TokenStream {
    let attributes_str = attributes.to_string();
    let entries = attributes_str.split(',');
    let mut array_len = 0usize;
    let mut array_content = TokenStream::default();
    for entry in entries.map(str::trim).filter(|s| !s.is_empty()) {
        let Some((key, value)) = entry.split_once(':') else {
            panic!("Missing colon, couldn't parse `key:value` from {entry} in {attributes_str}");
        };
        let (key, value) = (key.trim(), value.trim());
        array_content.extend(quote!((#key, #value),));
        array_len += 1;
    }
    quote!(static METADATA: [(&str, &str); #array_len] = [#array_content];)
}

pub fn benchmark(attributes: TokenStream, item: TokenStream) -> TokenStream {
    let metadata_token = metadata_token(attributes);
    let mut result = quote!(#[allow(unused)]);
    result.extend(item.clone());
    let function = syn::parse2::<syn::ItemFn>(item).unwrap();
    let ident = function.sig.ident;
    let ident_str = ident.to_string();
    match function.sig.inputs.len() {
        2 => result.extend(quote!(
            const _ : () = {
                #metadata_token
                #[linkme::distributed_slice(nano_bench::linkme::BENCHMARKS)]
                static __: nano_bench::linkme::BenchmarkLink = nano_bench::linkme::BenchmarkLink {
                    path: core::module_path!(),
                    operation: #ident_str,
                    function: #ident,
                    metadata: &METADATA,
                };
            };
        )),
        3 => result.extend(quote!(
            const _ : () = {
                #metadata_token
                #[linkme::distributed_slice(nano_bench::linkme::LENGTH_BENCHMARKS)]
                static __: nano_bench::linkme::LengthBenchmarkLink = nano_bench::linkme::LengthBenchmarkLink {
                    path: core::module_path!(),
                    operation: #ident_str,
                    function: #ident,
                    metadata: &METADATA,
                };
            };
        )),
        _ => unimplemented!(),
    }
    result
}

pub fn main(item: TokenStream) -> TokenStream {
    let mut iter = item.into_iter();
    let library_ident = iter.next().unwrap();
    let mut metadata_mod = quote!(None);
    if let Some(proc_macro2::TokenTree::Punct(punct)) = iter.next() {
        if punct.as_char() == ',' {
            if let Some(func) = iter.next() {
                metadata_mod = quote!(Some(#func));
            }
        }
    }
    quote!(
        fn main() {
            extern crate #library_ident;
            nano_bench::linkme::main(#metadata_mod);
        }
    )
}
