// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;

use haberdashery_template_descriptor::constant::Constant;
use haberdashery_template_descriptor::constant::Constants;
use proc_macro2::TokenStream;
use quote::quote;

use crate::args::Args;

pub fn bindings(attributes: TokenStream, item: TokenStream) -> TokenStream {
    let args = Args::try_from(attributes).unwrap();
    let mut result = quote!(#[allow(unused)]);
    result.extend(item.clone());
    let module = syn::parse2::<syn::ItemMod>(item).unwrap();
    let Some((_, content)) = module.content else {
        unimplemented!("Attribute must be used on module");
    };

    let mut constants = vec![];
    for item in content {
        let syn::Item::Const(item) = item else {
            unimplemented!("Non-const member found");
        };
        let name = item.ident;
        let syn::Expr::Lit(value) = *item.expr else {
            unimplemented!("const is not a literal");
        };
        let syn::Lit::Int(value) = value.lit else {
            unimplemented!("const is not an integer");
        };
        constants.push(Constant::new(&name.to_string(), &value.to_string()));
    }
    if !constants.is_empty() {
        if let Ok(path) = std::env::var("DESCRIPTOR_DIR") {
            let path = Path::new(&path).join(args.algorithm());
            Constants::from(constants).write_yaml_path(&path).unwrap();
        }
    }
    result
}
