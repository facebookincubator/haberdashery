// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;

use haberdashery_template_descriptor::descriptor::Descriptor;
use proc_macro2::TokenStream;
use quote::quote;
use syn::Ident;
use syn::ItemStruct;

use crate::args::Args;
use crate::function::Function;
use crate::sealed_trait::sealed_trait;

pub fn bindings(attributes: TokenStream, item: TokenStream) -> syn::Result<TokenStream> {
    let args = Args::try_from(attributes).unwrap();
    let structx = syn::parse2::<ItemStruct>(item.clone())?;
    let struct_ident = &structx.ident;

    let prefix = args.prefix();
    let algorithm = args.algorithm();

    let mut result = TokenStream::new();
    for profile in args.profiles() {
        let function = Function::new(prefix, algorithm, profile);
        result.extend(quote!(
            #[cfg(feature = #profile)]
            #[repr(C)]
        ));
        result.extend(item.clone());
        result.extend(sealed_trait("Mac", profile, struct_ident));
        result.extend(profile_binding(struct_ident, &function));
        if let Ok(path) = std::env::var("DESCRIPTOR_DIR") {
            let filename = format!("{profile}.yaml");
            let path = Path::new(&path).join(algorithm);
            let struct_members = crate::structx::members(&structx);
            let struct_name = struct_ident.to_string();
            Descriptor::new(prefix, algorithm, profile, &struct_name, struct_members)
                .write_yaml_file(&path.join(filename))
                .unwrap();
        }
    }
    Ok(result)
}

fn profile_binding(struct_ident: &Ident, function: &Function) -> TokenStream {
    let fn_init = function.make_tokens("init");
    let fn_sign = function.make_tokens("sign");
    let fn_verify = function.make_tokens("verify");
    let fn_is_supported = function.make_tokens("is_supported");
    quote!(
        #fn_init(
            this: &mut #struct_ident,
            key: *const u8,
            key_len: usize,
        ) -> i32 {
            let key = unsafe { core::slice::from_raw_parts(key, key_len) };
            match this.init(key) {
                true => 1,
                false => 0,
            }
        }
        #fn_sign(
            this: &#struct_ident,
            message: *const u8,
            message_len: usize,
            tag: *mut u8,
            tag_len: usize,
        ) -> i32 {
            let message = ffi_util::Reader::new(message, message_len);
            let tag = ffi_util::Writer::new(tag, tag_len);
            match this.sign(message, tag) {
                true => 1,
                false => 0,
            }
        }
        #fn_verify(
            this: &#struct_ident,
            message: *const u8,
            message_len: usize,
            tag: *const u8,
            tag_len: usize,
        ) -> i32 {
            let message = ffi_util::Reader::new(message, message_len);
            let tag = ffi_util::Reader::new(tag, tag_len);
            match this.verify(message, tag) {
                true => 1,
                false => 0,
            }
        }
        #fn_is_supported() -> i32 {
            match #struct_ident::is_supported() {
                true => 1,
                false => 0,
            }
        }
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::pretty::Pretty;

    #[test]
    fn test_binding() {
        let struct_ident = syn::parse2::<ItemStruct>(quote!(
            pub struct PolyvalMac([__m128i; 23]);
        ))
        .unwrap()
        .ident;
        pretty_assertions::assert_eq!(
            profile_binding(
                &struct_ident,
                &Function::new("haberdashery", "polyvalmac", "skylake"),
            )
            .pretty(),
            stringify!(
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_polyvalmac_skylake_init(
                    this: &mut PolyvalMac,
                    key: *const u8,
                    key_len: usize,
                ) -> i32 {
                    let key = unsafe { core::slice::from_raw_parts(key, key_len) };
                    match this.init(key) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_polyvalmac_skylake_sign(
                    this: &PolyvalMac,
                    message: *const u8,
                    message_len: usize,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> i32 {
                    let message = ffi_util::Reader::new(message, message_len);
                    let tag = ffi_util::Writer::new(tag, tag_len);
                    match this.sign(message, tag) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_polyvalmac_skylake_verify(
                    this: &PolyvalMac,
                    message: *const u8,
                    message_len: usize,
                    tag: *const u8,
                    tag_len: usize,
                ) -> i32 {
                    let message = ffi_util::Reader::new(message, message_len);
                    let tag = ffi_util::Reader::new(tag, tag_len);
                    match this.verify(message, tag) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_polyvalmac_skylake_is_supported() -> i32 {
                    match PolyvalMac::is_supported() {
                        true => 1,
                        false => 0,
                    }
                }
            )
            .pretty()
        );
    }
}
