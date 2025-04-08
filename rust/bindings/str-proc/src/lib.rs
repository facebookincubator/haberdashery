// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro::Literal;
use proc_macro::Span;
use proc_macro::TokenStream;
use proc_macro::TokenTree;
use syn::LitStr;

#[proc_macro]
pub fn strip(input: TokenStream) -> TokenStream {
    let lit = syn::parse::<LitStr>(input).unwrap();
    let s = lit.value().replace("{", "").replace("}", "");
    let mut lit = Literal::string(&s);
    lit.set_span(Span::call_site());
    TokenTree::Literal(lit).into()
}
