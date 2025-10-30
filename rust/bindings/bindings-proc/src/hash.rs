// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;

use bindings::Descriptor;
use proc_macro2::TokenStream;
use quote::quote;
use syn::Type;

use crate::args::Args;
use crate::parser::Parser;
use crate::parser::func_token;

pub fn bindings(attributes: &str, item: TokenStream) -> TokenStream {
    let args = Args::new(attributes).unwrap_or_else(|e| panic!("{e}: Couldn't parse {attributes}"));
    let parser = Parser::new(&item, &args, "hash");
    let mut result = TokenStream::default();
    let descriptors = parser.descriptors();
    descriptors.iter().for_each(|descriptor| {
        let profile = &descriptor["profile"];
        if profile == "skylakex" {
            result.extend(quote!(#[cfg(any(not(feature = "asm_gen"), feature = #profile))]));
        } else {
            result.extend(quote!(#[cfg(all(feature = "asm_gen", feature = #profile))]));
        }
        result.extend(item.clone());
        result.extend(parser.assert_size(parser.self_ty(), "struct_size", profile));
        result.extend(parser.assert_alignment(parser.self_ty(), "struct_alignment", profile));
        result.extend(profile_binding(parser.self_ty(), descriptor));
    });
    if let Ok(path) = std::env::var("DESCRIPTOR_DIR") {
        let path = Path::new(&path).join("hash");
        std::fs::create_dir_all(&path)
            .unwrap_or_else(|e| panic!("{e}: Couldn't create directory for {path:?}"));
        descriptors.write_files(&path);
    }
    result
}

pub fn profile_binding(ty: &Type, descriptor: &Descriptor) -> TokenStream {
    let fn_init = func_token(descriptor, "init");
    let fn_update = func_token(descriptor, "update");
    let fn_finalize = func_token(descriptor, "finalize");
    let fn_digest = func_token(descriptor, "digest");
    let fn_is_supported = func_token(descriptor, "is_supported");
    quote!(
        #fn_init(
            this: &mut #ty,
        ) -> i32 {
            match this.init() {
                true => 1,
                false => 0,
            }
        }
        #fn_update(
            this: &mut #ty,
            message: *const u8,
            message_len: usize,
        ) -> i32 {
            let message = unsafe { crate::ffi::reader::Reader::new(message, message_len) };
            match this.update(message) {
                true => 1,
                false => 0,
            }
        }
        #fn_finalize(
            this: &mut #ty,
        ) -> i32 {
            match this.finalize() {
                true => 1,
                false => 0,
            }
        }
        #fn_digest(
            this: &#ty,
            digest: *mut u8,
            digest_len: usize,
        ) -> i32 {
            let digest = unsafe { crate::ffi::writer::Writer::new(digest, digest_len) };
            match this.digest(digest) {
                true => 1,
                false => 0,
            }
        }
        #fn_is_supported() -> i32 {
            match #ty::is_supported() {
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
        let ty = syn::parse2::<Type>(quote!(Sha256)).unwrap();
        let descriptor = [
            ("prefix", "haberdashery"),
            ("algorithm", "sha256"),
            ("profile", "skylake"),
        ]
        .as_slice()
        .into();
        pretty_assertions::assert_eq!(
            profile_binding(&ty, &descriptor).pretty(),
            stringify!(
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_sha256_skylake_init(this: &mut Sha256) -> i32 {
                    match this.init() {
                        true => 1,
                        false => 0,
                    }
                }
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_sha256_skylake_update(
                    this: &mut Sha256,
                    message: *const u8,
                    message_len: usize,
                ) -> i32 {
                    let message = unsafe { crate::ffi::reader::Reader::new(message, message_len) };
                    match this.update(message) {
                        true => 1,
                        false => 0,
                    }
                }
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_sha256_skylake_finalize(this: &mut Sha256) -> i32 {
                    match this.finalize() {
                        true => 1,
                        false => 0,
                    }
                }
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_sha256_skylake_digest(
                    this: &Sha256,
                    digest: *mut u8,
                    digest_len: usize,
                ) -> i32 {
                    let digest = unsafe { crate::ffi::writer::Writer::new(digest, digest_len) };
                    match this.digest(digest) {
                        true => 1,
                        false => 0,
                    }
                }
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_sha256_skylake_is_supported() -> i32 {
                    match Sha256::is_supported() {
                        true => 1,
                        false => 0,
                    }
                }
            )
            .pretty()
        );
    }
}
