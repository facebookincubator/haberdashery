// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use haberdashery_template_descriptor::descriptor::StructMember;
use syn::ItemStruct;

pub fn members(item: &ItemStruct) -> Vec<StructMember> {
    let syn::Fields::Unnamed(fields) = &item.fields else {
        unimplemented!("Structs with named fields are not supported");
    };
    let mut fields = fields.unnamed.iter();
    let Some(field) = fields.next() else {
        unimplemented!("Empty struct not supported");
    };
    if fields.next().is_some() {
        unimplemented!("Structs with multiple fields are not supported");
    }
    let syn::Type::Array(type_array) = &field.ty else {
        unimplemented!("Only structs with arrays are supported");
    };
    let syn::Type::Path(path) = type_array.elem.as_ref() else {
        unimplemented!("Only path-type struct members are supported");
    };
    let Some(segment) = &path.path.segments.last() else {
        unimplemented!("Empty path segment");
    };
    let ident = &segment.ident;
    let syn::Expr::Lit(len) = &type_array.len else {
        unimplemented!("Only literal array lengths are supported");
    };
    let syn::Lit::Int(len) = &len.lit else {
        unimplemented!("Only integer array lengths are supported");
    };

    vec![StructMember::new(
        "value",
        &ident.to_string(),
        &len.to_string(),
    )]
}
