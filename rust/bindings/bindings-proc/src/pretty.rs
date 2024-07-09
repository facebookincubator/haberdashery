// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

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
