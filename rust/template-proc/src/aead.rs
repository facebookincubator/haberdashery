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

pub fn bindings(attributes: TokenStream, item: TokenStream) -> TokenStream {
    let args = Args::try_from(attributes).unwrap();
    let structx = syn::parse2::<ItemStruct>(item.clone()).unwrap();
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
        result.extend(sealed_trait("Aead", profile, struct_ident));
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
    result
}

fn profile_binding(state_ident: &Ident, function: &Function) -> TokenStream {
    let fn_init = function.make_tokens("init");
    let fn_encrypt = function.make_tokens("encrypt");
    let fn_decrypt = function.make_tokens("decrypt");
    let fn_is_supported = function.make_tokens("is_supported");

    quote!(
        #fn_init(
            this: &mut #state_ident,
            key: *const u8,
            key_len: usize,
        ) -> i32 {
            let key = unsafe { core::slice::from_raw_parts(key, key_len) };
            match this.init(key) {
                true => 1,
                false => 0,
            }
        }
        #fn_encrypt(
            this: &#state_ident,
            nonce: *const u8,
            nonce_len: usize,
            aad: *const u8,
            aad_len: usize,
            plaintext: *const u8,
            plaintext_len: usize,
            ciphertext: *mut u8,
            ciphertext_len: usize,
            tag: *mut u8,
            tag_len: usize,
        ) -> i32 {
            let nonce = unsafe { core::slice::from_raw_parts(nonce, nonce_len) };
            let aad = ffi_util::Reader::new(aad, aad_len);
            let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                plaintext,
                plaintext_len,
                ciphertext,
                ciphertext_len,
            ) else {
                return 0;
            };
            let tag = ffi_util::Writer::new(tag, tag_len);
            match this.encrypt(nonce, aad, data, tag) {
                true => 1,
                false => 0,
            }
        }
        #fn_decrypt(
            this: &#state_ident,
            nonce: *const u8,
            nonce_len: usize,
            aad: *const u8,
            aad_len: usize,
            ciphertext: *const u8,
            ciphertext_len: usize,
            tag: *const u8,
            tag_len: usize,
            plaintext: *mut u8,
            plaintext_len: usize,
        ) -> i32 {
            let nonce = unsafe { core::slice::from_raw_parts(nonce, nonce_len) };
            let aad = ffi_util::Reader::new(aad, aad_len);
            let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                ciphertext,
                ciphertext_len,
                plaintext,
                plaintext_len,
            ) else {
                return 0;
            };
            let tag = ffi_util::Reader::new(tag, tag_len);
            match this.decrypt(nonce, aad, data, tag) {
                true => 1,
                false => 0,
            }
        }
        #fn_is_supported() -> i32 {
            match #state_ident::is_supported() {
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
    fn test_profile_binding() {
        let struct_ident = syn::parse2::<ItemStruct>(quote!(
            pub struct Aes256Gcm([__m128i; 21]);
        ))
        .unwrap()
        .ident;
        pretty_assertions::assert_eq!(
            profile_binding(
                &struct_ident,
                &Function::new("haberdashery", "aes256gcm", "skylake"),
            )
            .pretty(),
            stringify!(
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_init(
                    this: &mut Aes256Gcm,
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
                fn haberdashery_aes256gcm_skylake_encrypt(
                    this: &Aes256Gcm,
                    nonce: *const u8,
                    nonce_len: usize,
                    aad: *const u8,
                    aad_len: usize,
                    plaintext: *const u8,
                    plaintext_len: usize,
                    ciphertext: *mut u8,
                    ciphertext_len: usize,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> i32 {
                    let nonce = unsafe { core::slice::from_raw_parts(nonce, nonce_len) };
                    let aad = ffi_util::Reader::new(aad, aad_len);
                    let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                        plaintext,
                        plaintext_len,
                        ciphertext,
                        ciphertext_len,
                    ) else {
                        return 0;
                    };
                    let tag = ffi_util::Writer::new(tag, tag_len);
                    match this.encrypt(nonce, aad, data, tag) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_decrypt(
                    this: &Aes256Gcm,
                    nonce: *const u8,
                    nonce_len: usize,
                    aad: *const u8,
                    aad_len: usize,
                    ciphertext: *const u8,
                    ciphertext_len: usize,
                    tag: *const u8,
                    tag_len: usize,
                    plaintext: *mut u8,
                    plaintext_len: usize,
                ) -> i32 {
                    let nonce = unsafe { core::slice::from_raw_parts(nonce, nonce_len) };
                    let aad = ffi_util::Reader::new(aad, aad_len);
                    let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                        ciphertext,
                        ciphertext_len,
                        plaintext,
                        plaintext_len,
                    ) else {
                        return 0;
                    };
                    let tag = ffi_util::Reader::new(tag, tag_len);
                    match this.decrypt(nonce, aad, data, tag) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_is_supported() -> i32 {
                    match Aes256Gcm::is_supported() {
                        true => 1,
                        false => 0,
                    }
                }
            )
            .pretty()
        );
    }
}
