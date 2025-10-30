// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod aead;
mod aead_streaming;
mod args;
mod bindings;
mod hash;
mod mac;
mod parser;
#[cfg(test)]
mod pretty;

use proc_macro::TokenStream;

#[proc_macro_attribute]
pub fn aead(attributes: TokenStream, item: TokenStream) -> TokenStream {
    aead::bindings(&attributes.to_string(), item.into()).into()
}
#[proc_macro_attribute]
pub fn aead_streaming(attributes: TokenStream, item: TokenStream) -> TokenStream {
    aead_streaming::bindings(&attributes.to_string(), item.into()).into()
}
#[proc_macro_attribute]
pub fn hash(attributes: TokenStream, item: TokenStream) -> TokenStream {
    hash::bindings(&attributes.to_string(), item.into()).into()
}
#[proc_macro_attribute]
pub fn bindings(attributes: TokenStream, item: TokenStream) -> TokenStream {
    bindings::bindings(&attributes.to_string(), item.into()).into()
}
