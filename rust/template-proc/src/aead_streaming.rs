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

pub fn key_bindings(attributes: TokenStream, item: TokenStream) -> TokenStream {
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
        result.extend(sealed_trait("AeadStreamingKey", profile, struct_ident));
        result.extend(key_profile_binding(struct_ident, &function));
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

fn key_profile_binding(key_ident: &Ident, function: &Function) -> TokenStream {
    let fn_init_key = function.make_tokens("init_key");
    let fn_is_supported = function.make_tokens("is_supported");

    quote!(
        #fn_init_key(
            this: &mut #key_ident,
            key: *const u8,
            key_len: usize,
        ) -> i32 {
            let key = unsafe { core::slice::from_raw_parts(key, key_len) };
            match this.init_key(key) {
                true => 1,
                false => 0,
            }
        }
        #fn_is_supported() -> i32 {
            match #key_ident::is_supported() {
                true => 1,
                false => 0,
            }
        }
    )
}

pub fn state_bindings(attributes: TokenStream, item: TokenStream) -> TokenStream {
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
        result.extend(sealed_trait("AeadStreamingState", profile, struct_ident));
        result.extend(state_profile_binding(struct_ident, &function));
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

fn state_profile_binding(state_ident: &Ident, function: &Function) -> TokenStream {
    let key_ident =
        quote!(<#state_ident as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key);
    let fn_init_state = function.make_tokens("init_state");
    let fn_aad_update = function.make_tokens("aad_update");
    let fn_encrypt_update = function.make_tokens("encrypt_update");
    let fn_encrypt_finalize = function.make_tokens("encrypt_finalize");
    let fn_decrypt_update = function.make_tokens("decrypt_update");
    let fn_decrypt_finalize = function.make_tokens("decrypt_finalize");

    quote!(
        #fn_init_state(
            this: &mut #state_ident,
            key: &#key_ident,
            nonce: *const u8,
            nonce_len: usize,
        ) -> i32 {
            let nonce = unsafe { core::slice::from_raw_parts(nonce, nonce_len) };
            match this.init_state(key, nonce) {
                true => 1,
                false => 0,
            }
        }
        #fn_aad_update(
            this: &mut #state_ident,
            key: &#key_ident,
            aad: *const u8,
            aad_len: usize,
        ) -> usize {
            let aad = ffi_util::Reader::new(aad, aad_len);
            this.aad_update(key, aad)
        }
        #fn_encrypt_update(
            this: &mut #state_ident,
            key: &#key_ident,
            plaintext: *const u8,
            plaintext_len: usize,
            ciphertext: *mut u8,
            ciphertext_len: usize,
        ) -> usize {
            let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                plaintext,
                plaintext_len,
                ciphertext,
                ciphertext_len,
            ) else {
                return 0;
            };
            this.encrypt_update(key, data)
        }
        #fn_encrypt_finalize(
            this: &mut #state_ident,
            key: &#key_ident,
            tag: *mut u8,
            tag_len: usize,
        ) -> usize {
            let tag = ffi_util::Writer::new(tag, tag_len);
            this.encrypt_finalize(key, tag)
        }
        #fn_decrypt_update(
            this: &mut #state_ident,
            key: &#key_ident,
            ciphertext: *const u8,
            ciphertext_len: usize,
            plaintext: *mut u8,
            plaintext_len: usize,
        ) -> usize {
            let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                ciphertext,
                ciphertext_len,
                plaintext,
                plaintext_len,
            ) else {
                return 0;
            };
            this.decrypt_update(key, data)
        }
        #fn_decrypt_finalize(
            this: &mut #state_ident,
            key: &#key_ident,
            tag: *mut u8,
            tag_len: usize,
        ) -> i32 {
            let tag = ffi_util::Reader::new(tag, tag_len);
            match this.decrypt_finalize(key, tag) {
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
    fn test_key_profile_binding() {
        let struct_ident = syn::parse2::<ItemStruct>(quote!(
            pub struct Aes256GcmKey([__m128i; 23]);
        ))
        .unwrap()
        .ident;
        pretty_assertions::assert_eq!(
            key_profile_binding(
                &struct_ident,
                &Function::new("haberdashery", "aes256gcm", "skylake"),
            )
            .pretty(),
            stringify!(
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_init_key(
                    this: &mut Aes256GcmKey,
                    key: *const u8,
                    key_len: usize,
                ) -> i32 {
                    let key = unsafe { core::slice::from_raw_parts(key, key_len) };
                    match this.init_key(key) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_is_supported() -> i32 {
                    match Aes256GcmKey::is_supported() {
                        true => 1,
                        false => 0,
                    }
                }
            )
            .pretty()
        );
    }

    #[test]
    fn test_state_profile_binding() {
        let struct_ident = syn::parse2::<ItemStruct>(quote!(
            pub struct Aes256GcmState([__m128i; 7]);
        ))
        .unwrap()
        .ident;
        pretty_assertions::assert_eq!(
            state_profile_binding(
                &struct_ident,
                &Function::new("haberdashery", "aes256gcm", "skylake"),
            )
            .pretty(),
            stringify!(
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_init_state(
                    this: &mut Aes256GcmState,
                    key: &<Aes256GcmState as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key,
                    nonce: *const u8,
                    nonce_len: usize,
                ) -> i32 {
                    let nonce = unsafe { core::slice::from_raw_parts(nonce, nonce_len) };
                    match this.init_state(key, nonce) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_aad_update(
                    this: &mut Aes256GcmState,
                    key: &<Aes256GcmState as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key,
                    aad: *const u8,
                    aad_len: usize,
                ) -> usize {
                    let aad = ffi_util::Reader::new(aad, aad_len);
                    this.aad_update(key, aad)
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_encrypt_update(
                    this: &mut Aes256GcmState,
                    key: &<Aes256GcmState as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key,
                    plaintext: *const u8,
                    plaintext_len: usize,
                    ciphertext: *mut u8,
                    ciphertext_len: usize,
                ) -> usize {
                    let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                        plaintext,
                        plaintext_len,
                        ciphertext,
                        ciphertext_len,
                    ) else {
                        return 0;
                    };
                    this.encrypt_update(key, data)
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_encrypt_finalize(
                    this: &mut Aes256GcmState,
                    key: &<Aes256GcmState as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> usize {
                    let tag = ffi_util::Writer::new(tag, tag_len);
                    this.encrypt_finalize(key, tag)
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_decrypt_update(
                    this: &mut Aes256GcmState,
                    key: &<Aes256GcmState as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key,
                    ciphertext: *const u8,
                    ciphertext_len: usize,
                    plaintext: *mut u8,
                    plaintext_len: usize,
                ) -> usize {
                    let Some(data) = ffi_util::ReaderWriter::from_ptrs(
                        ciphertext,
                        ciphertext_len,
                        plaintext,
                        plaintext_len,
                    ) else {
                        return 0;
                    };
                    this.decrypt_update(key, data)
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_decrypt_finalize(
                    this: &mut Aes256GcmState,
                    key: &<Aes256GcmState as haberdashery_asm_gen::ffi::aead::AeadStreamingState>::Key,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> i32 {
                    let tag = ffi_util::Reader::new(tag, tag_len);
                    match this.decrypt_finalize(key, tag) {
                         true => 1,
                         false => 0,
                     }
                }
            )
            .pretty()
        );
    }
}
