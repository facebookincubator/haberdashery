// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod descriptor;

use proc_macro::TokenStream;

#[proc_macro_attribute]
pub fn descriptor(_attributes: TokenStream, item: TokenStream) -> TokenStream {
    descriptor::descriptor(item.into()).into()
}

#[proc_macro]
pub fn main(item: TokenStream) -> TokenStream {
    descriptor::main(item.into()).into()
}
