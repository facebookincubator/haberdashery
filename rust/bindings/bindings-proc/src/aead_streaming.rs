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
use crate::parser::func_token;
use crate::parser::Parser;

pub fn bindings(attributes: &str, item: TokenStream) -> TokenStream {
    let args = Args::new(attributes).unwrap_or_else(|e| panic!("{e}: Couldn't parse {attributes}"));
    let parser = Parser::new(&item, &args, "aead_streaming");
    let mut result = TokenStream::default();
    let state_ty = parser.self_ty();
    let key_ty = syn::parse2::<syn::Type>(
        quote!(<#state_ty as crate::ffi::aead_streaming::AeadStreaming>::Key),
    )
    .unwrap();
    let descriptors = parser.descriptors();
    descriptors.iter().for_each(|descriptor| {
        let profile = &descriptor["profile"];
        if profile == "skylakex" {
            result.extend(quote!(#[cfg(any(not(feature = "asm_gen"), feature = #profile))]));
        } else {
            result.extend(quote!(#[cfg(all(feature = "asm_gen", feature = #profile))]));
        }
        result.extend(item.clone());
        result.extend(parser.assert_size(&key_ty, "key_struct_size", profile));
        result.extend(parser.assert_alignment(&key_ty, "key_struct_alignment", profile));
        result.extend(parser.assert_size(parser.self_ty(), "state_struct_size", profile));
        result.extend(parser.assert_alignment(parser.self_ty(), "state_struct_alignment", profile));
        result.extend(profile_binding(&key_ty, state_ty, descriptor));
    });
    if let Ok(path) = std::env::var("DESCRIPTOR_DIR") {
        let path = Path::new(&path).join("aead_streaming");
        std::fs::create_dir_all(&path)
            .unwrap_or_else(|e| panic!("{e}: Couldn't create directory for {path:?}"));
        descriptors.write_files(&path);
    }
    result
}

fn profile_binding(key_ty: &Type, state_ty: &Type, descriptor: &Descriptor) -> TokenStream {
    let fn_init_key = func_token(descriptor, "init_key");
    let fn_init_state = func_token(descriptor, "init_state");
    let fn_aad_update = func_token(descriptor, "aad_update");
    let fn_encrypt_update = func_token(descriptor, "encrypt_update");
    let fn_encrypt_finalize = func_token(descriptor, "encrypt_finalize");
    let fn_decrypt_update = func_token(descriptor, "decrypt_update");
    let fn_decrypt_finalize = func_token(descriptor, "decrypt_finalize");
    let fn_is_supported = func_token(descriptor, "is_supported");

    quote!(
        #fn_init_key(
            this: &mut #key_ty,
            key: *const u8,
            key_len: usize,
        ) -> i32 {
            let key = unsafe { core::slice::from_raw_parts(key, key_len) };
            match #state_ty::init_key(this, key) {
                true => 1,
                false => 0,
            }
        }
        #fn_is_supported() -> i32 {
            match #state_ty::is_supported() {
                true => 1,
                false => 0,
            }
        }
        #fn_init_state(
            this: &mut #state_ty,
            key: &#key_ty,
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
            this: &mut #state_ty,
            key: &#key_ty,
            aad: *const u8,
            aad_len: usize,
        ) -> usize {
            let aad = unsafe { crate::ffi::reader::Reader::new(aad, aad_len) };
            this.aad_update(key, aad)
        }
        #fn_encrypt_update(
            this: &mut #state_ty,
            key: &#key_ty,
            plaintext: *const u8,
            plaintext_len: usize,
            ciphertext: *mut u8,
            ciphertext_len: usize,
        ) -> usize {
            let Some(data) = crate::ffi::reader_writer::ReaderWriter::from_ptrs(
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
            this: &mut #state_ty,
            key: &#key_ty,
            tag: *mut u8,
            tag_len: usize,
        ) -> usize {
            let tag = crate::ffi::writer::Writer::new(tag, tag_len);
            this.encrypt_finalize(key, tag)
        }
        #fn_decrypt_update(
            this: &mut #state_ty,
            key: &#key_ty,
            ciphertext: *const u8,
            ciphertext_len: usize,
            plaintext: *mut u8,
            plaintext_len: usize,
        ) -> usize {
            let Some(data) = crate::ffi::reader_writer::ReaderWriter::from_ptrs(
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
            this: &mut #state_ty,
            key: &#key_ty,
            tag: *mut u8,
            tag_len: usize,
        ) -> i32 {
            let tag = unsafe { crate::ffi::reader::Reader::new(tag, tag_len) };
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
        let key_ty = syn::parse2::<Type>(quote!(Aes256GcmKey)).unwrap();
        let state_ty = syn::parse2::<Type>(quote!(Aes256GcmState)).unwrap();
        let descriptor = [
            ("prefix", "haberdashery"),
            ("algorithm", "aes256gcm"),
            ("profile", "skylake"),
        ]
        .as_slice()
        .into();
        pretty_assertions::assert_eq!(
            stringify!(
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_init_key(
                    this: &mut Aes256GcmKey,
                    key: *const u8,
                    key_len: usize,
                ) -> i32 {
                    let key = unsafe { core::slice::from_raw_parts(key, key_len) };
                    match Aes256GcmState::init_key(this, key) {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_is_supported() -> i32 {
                    match Aes256GcmState::is_supported() {
                        true => 1,
                        false => 0,
                    }
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_init_state(
                    this: &mut Aes256GcmState,
                    key: &Aes256GcmKey,
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
                    key: &Aes256GcmKey,
                    aad: *const u8,
                    aad_len: usize,
                ) -> usize {
                    let aad = unsafe { crate::ffi::reader::Reader::new(aad, aad_len) };
                    this.aad_update(key, aad)
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_encrypt_update(
                    this: &mut Aes256GcmState,
                    key: &Aes256GcmKey,
                    plaintext: *const u8,
                    plaintext_len: usize,
                    ciphertext: *mut u8,
                    ciphertext_len: usize,
                ) -> usize {
                    let Some(data) = crate::ffi::reader_writer::ReaderWriter::from_ptrs(
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
                    key: &Aes256GcmKey,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> usize {
                    let tag = crate::ffi::writer::Writer::new(tag, tag_len);
                    this.encrypt_finalize(key, tag)
                }
                #[no_mangle]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_aes256gcm_skylake_decrypt_update(
                    this: &mut Aes256GcmState,
                    key: &Aes256GcmKey,
                    ciphertext: *const u8,
                    ciphertext_len: usize,
                    plaintext: *mut u8,
                    plaintext_len: usize,
                ) -> usize {
                    let Some(data) = crate::ffi::reader_writer::ReaderWriter::from_ptrs(
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
                    key: &Aes256GcmKey,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> i32 {
                    let tag = unsafe { crate::ffi::reader::Reader::new(tag, tag_len) };
                    match this.decrypt_finalize(key, tag) {
                        true => 1,
                        false => 0,
                    }
                }
            )
            .pretty(),
            profile_binding(&key_ty, &state_ty, &descriptor).pretty(),
        );
    }
}
