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

pub fn sealed_trait(trait_str: &str, profile: &str, struct_ident: &Ident) -> TokenStream {
    let sealed_ident = format_ident!("{trait_str}Sealed");
    let trait_ident = format_ident!("{trait_str}");
    quote!(
        #[cfg(feature = #profile)]
        trait #sealed_ident: #trait_ident {
            fn _static_assert_size(self) -> Self::BaseImpl;
        }
        #[cfg(feature = #profile)]
        impl #sealed_ident for #struct_ident {
            #[inline(always)]
            fn _static_assert_size(self) -> Self::BaseImpl {
                unsafe { core::mem::transmute(self) }
            }
        }
    )
}
#[cfg(test)]
mod tests {
    use syn::ItemStruct;

    use super::*;
    use crate::pretty::Pretty;

    #[test]
    fn test_sealed_trait() {
        let struct_ident = syn::parse2::<ItemStruct>(quote!(
            pub struct Aes256Gcm([__m128i; 21]);
        ))
        .unwrap()
        .ident;
        pretty_assertions::assert_eq!(
            sealed_trait("Aead", "skylake", &struct_ident).pretty(),
            stringify!(
                #[cfg(feature = "skylake")]
                trait AeadSealed: Aead {
                    fn _static_assert_size(self) -> Self::BaseImpl;
                }
                #[cfg(feature = "skylake")]
                impl AeadSealed for Aes256Gcm {
                    #[inline(always)]
                    fn _static_assert_size(self) -> Self::BaseImpl {
                        unsafe { core::mem::transmute(self) }
                    }
                }
            )
            .pretty()
        );
    }
}
