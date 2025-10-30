// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use bindings::Descriptor;
use proc_macro2::TokenStream;
use quote::quote;
use syn::Type;

use crate::parser::func_token;

pub fn profile_binding(ty: &Type, descriptor: &Descriptor) -> TokenStream {
    let fn_init = func_token(descriptor, "init");
    let fn_sign = func_token(descriptor, "sign");
    let fn_verify = func_token(descriptor, "verify");
    let fn_is_supported = func_token(descriptor, "is_supported");
    quote!(
        #fn_init(
            this: &mut #ty,
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
            this: &#ty,
            message: *const u8,
            message_len: usize,
            tag: *mut u8,
            tag_len: usize,
        ) -> i32 {
            let message = unsafe { crate::ffi::reader::Reader::new(message, message_len) };
            let tag = crate::ffi::writer::Writer::new(tag, tag_len);
            match this.sign(message, tag) {
                true => 1,
                false => 0,
            }
        }
        #fn_verify(
            this: &#ty,
            message: *const u8,
            message_len: usize,
            tag: *const u8,
            tag_len: usize,
        ) -> i32 {
            let message = unsafe { crate::ffi::reader::Reader::new(message, message_len) };
            let tag = unsafe { crate::ffi::reader::Reader::new(tag, tag_len) };
            match this.verify(message, tag) {
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
        let ty = syn::parse2::<Type>(quote!(PolyvalMac)).unwrap();
        let descriptor = [
            ("prefix", "haberdashery"),
            ("algorithm", "polyvalmac"),
            ("profile", "skylake"),
        ]
        .as_slice()
        .into();
        pretty_assertions::assert_eq!(
            profile_binding(&ty, &descriptor).pretty(),
            stringify!(
                #[unsafe(no_mangle)]
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
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_polyvalmac_skylake_sign(
                    this: &PolyvalMac,
                    message: *const u8,
                    message_len: usize,
                    tag: *mut u8,
                    tag_len: usize,
                ) -> i32 {
                    let message = unsafe { crate::ffi::reader::Reader::new(message, message_len) };
                    let tag = crate::ffi::writer::Writer::new(tag, tag_len);
                    match this.sign(message, tag) {
                        true => 1,
                        false => 0,
                    }
                }
                #[unsafe(no_mangle)]
                #[cfg(any(test, feature = "skylake"))]
                fn haberdashery_polyvalmac_skylake_verify(
                    this: &PolyvalMac,
                    message: *const u8,
                    message_len: usize,
                    tag: *const u8,
                    tag_len: usize,
                ) -> i32 {
                    let message = unsafe { crate::ffi::reader::Reader::new(message, message_len) };
                    let tag = unsafe { crate::ffi::reader::Reader::new(tag, tag_len) };
                    match this.verify(message, tag) {
                        true => 1,
                        false => 0,
                    }
                }
                #[unsafe(no_mangle)]
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
