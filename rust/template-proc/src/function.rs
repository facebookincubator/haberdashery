// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro2::TokenStream;
use quote::format_ident;
use quote::quote;
use syn::Ident;

pub struct Function {
    prefix: String,
    algorithm: String,
    profile: String,
}
impl Function {
    pub fn new(prefix: &str, algorithm: &str, profile: &str) -> Self {
        Self {
            prefix: prefix.to_string(),
            algorithm: algorithm.to_string(),
            profile: profile.to_string(),
        }
    }
    pub fn make_tokens(&self, name: &str) -> TokenStream {
        let profile = &self.profile;
        let name = self.ident(name);
        quote!(
            #[no_mangle]
            #[cfg(any(test, feature = #profile))]
            fn #name
        )
    }
    fn ident(&self, name: &str) -> Ident {
        let prefix = &self.prefix;
        let algorithm = &self.algorithm;
        let profile = &self.profile;
        format_ident!("{prefix}_{algorithm}_{profile}_{name}")
    }
}
