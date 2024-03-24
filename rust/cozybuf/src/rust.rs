// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro2::Span;
use proc_macro2::TokenStream;
use quote::quote;

use crate::Descriptor;
use crate::Field;
use crate::Type;

impl<const N: usize> Descriptor<N> {
    pub fn rust(&self) -> String {
        let name = syn::Ident::new(self.name, Span::call_site());
        let fields = self.fields.iter().map(Field::rust_struct);
        let struct_tokens = quote!(
            #![allow(dead_code,unused)]
            pub struct #name {
                #( #fields )*
            }
        );
        let serialize_steps = self.fields.iter().map(Field::rust_serialize);
        let serialize_tokens = quote!(
            impl #name {
                pub fn to_writer(&self, w: &mut dyn std::io::Write) -> std::io::Result<()> {
                    #( #serialize_steps )*
                    Ok(())
                }
            }
        );
        let deserialize_steps = self.fields.iter().map(Field::rust_deserialize_step);
        let deserialize_init = self.fields.iter().map(Field::rust_deserialize_init);
        let deserialize_tokens = quote!(
            impl #name {
                pub fn from_reader(r: &mut dyn std::io::Read) -> std::io::Result<Self> {
                    #( #deserialize_steps )*
                    Ok(Self {
                        #( #deserialize_init )*
                    })
                }
            }
        );

        let tokens = quote!(
            #struct_tokens
            #serialize_tokens
            #deserialize_tokens
        );
        let file = syn::parse2::<syn::File>(tokens).unwrap();
        prettyplease::unparse(&file)
    }
}
impl Field {
    fn rust_struct(&self) -> TokenStream {
        let name = syn::Ident::new(self.name, Span::call_site());
        match self.ty {
            Type::String => quote!(pub #name: String,),
            Type::Bytes => quote!(pub #name: Vec<u8>,),
            Type::U32 => quote!(pub #name: u32,),
        }
    }
    fn rust_serialize(&self) -> TokenStream {
        let name = syn::Ident::new(self.name, Span::call_site());
        match self.ty {
            Type::String => quote!(
                w.write_all(&(self.#name.len() as u32).to_le_bytes())?;
                w.write_all(self.#name.as_bytes())?;
            ),
            Type::Bytes => quote!(
                w.write_all(&(self.#name.len() as u32).to_le_bytes())?;
                w.write_all(&self.#name)?;
            ),
            Type::U32 => quote!(
                w.write_all(&self.#name.to_le_bytes())?;
            ),
        }
    }
    fn rust_deserialize_step(&self) -> TokenStream {
        let name = syn::Ident::new(self.name, Span::call_site());
        match self.ty {
            Type::String => quote!(
                let #name: String = {
                    let mut len = [0u8; core::mem::size_of::<u32>()];
                    r.read_exact(&mut len)?;
                    let len = u32::from_le_bytes(len) as usize;
                    let mut #name = vec![0u8; len];
                    r.read_exact(&mut #name)?;
                    String::from_utf8(#name).map_err(|_| std::io::Error::new(std::io::ErrorKind::InvalidData, "utf8 parse error"))?
                };
            ),
            Type::Bytes => quote!(
                let #name: Vec<u8> = {
                    let mut len = [0u8; core::mem::size_of::<u32>()];
                    r.read_exact(&mut len)?;
                    let len = u32::from_le_bytes(len) as usize;
                    let mut #name = vec![0u8; len];
                    r.read_exact(&mut #name)?;
                    #name
                };
            ),
            Type::U32 => quote!(
                let #name: u32 = {
                    let mut #name = [0u8; core::mem::size_of::<u32>()];
                    r.read_exact(&mut #name)?;
                    u32::from_le_bytes(#name)
                };
            ),
        }
    }
    fn rust_deserialize_init(&self) -> TokenStream {
        let name = syn::Ident::new(self.name, Span::call_site());
        match self.ty {
            Type::String => quote!(#name,),
            Type::Bytes => quote!(#name,),
            Type::U32 => quote!(#name,),
        }
    }
}

#[cfg(test)]
mod tests {
    use crate::*;

    #[test]
    fn descriptor() {
        let descriptor = Descriptor {
            name: "CozyTestStruct",
            fields: [
                Field {
                    name: "bytes",
                    ty: Type::Bytes,
                },
                Field {
                    name: "string",
                    ty: Type::String,
                },
                Field {
                    name: "uint32",
                    ty: Type::U32,
                },
            ],
        };
        pretty_assertions::assert_eq!(
            descriptor.rust(),
            r#"
#![allow(dead_code, unused)]
pub struct CozyTestStruct {
    pub bytes: Vec<u8>,
    pub string: String,
    pub uint32: u32,
}
impl CozyTestStruct {
    pub fn to_writer(&self, w: &mut dyn std::io::Write) -> std::io::Result<()> {
        w.write_all(&(self.bytes.len() as u32).to_le_bytes())?;
        w.write_all(&self.bytes)?;
        w.write_all(&(self.string.len() as u32).to_le_bytes())?;
        w.write_all(self.string.as_bytes())?;
        w.write_all(&self.uint32.to_le_bytes())?;
        Ok(())
    }
}
impl CozyTestStruct {
    pub fn from_reader(r: &mut dyn std::io::Read) -> std::io::Result<Self> {
        let bytes: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut bytes = vec![0u8; len];
            r.read_exact(&mut bytes)?;
            bytes
        };
        let string: String = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut string = vec![0u8; len];
            r.read_exact(&mut string)?;
            String::from_utf8(string)
                .map_err(|_| std::io::Error::new(
                    std::io::ErrorKind::InvalidData,
                    "utf8 parse error",
                ))?
        };
        let uint32: u32 = {
            let mut uint32 = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut uint32)?;
            u32::from_le_bytes(uint32)
        };
        Ok(Self { bytes, string, uint32 })
    }
}
"#
            .trim_start()
        );
    }
}
