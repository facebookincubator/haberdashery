// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::fmt::Write;

use r#gen::Intrinsic;
use r#gen::Type;

const TYPES: &[Type] = &[
    Type::M128i,
    Type::M256i,
    Type::M512i,
    Type::U8,
    Type::U16,
    Type::U32,
    Type::U64,
    Type::I8,
    Type::I16,
    Type::I32,
    Type::I64,
];

fn main() {
    let mut intrinsics: Vec<Intrinsic> = r#gen::xml::intrinsics()
        .iter()
        .filter_map(r#gen::Intrinsic::new)
        .collect();
    intrinsics.sort();
    intrinsics.dedup();
    let mut mods = vec![];
    for &ty in TYPES {
        let Some(source) = generate_ty_source(&intrinsics, ty) else {
            println!("Skipping {ty}.rs, empty");
            continue;
        };
        std::fs::write(format!("../src/{ty}.rs"), source).unwrap();
        println!("Wrote {ty}.rs");
        mods.push(format!("pub mod {ty};"));
    }
    let lib = [
        "// @",
        r##"generated
#![cfg_attr(not(test), no_std)]
#![cfg_attr(feature = "stdsimd", feature(stdsimd))]
#![cfg_attr(not(feature = "stdsimd"), feature(stdarch_x86_avx512))]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]
#[cfg(not(target_arch = "x86_64"))]
compile_error!("only x86_64 is supported, try: cargo build --target=x86_64-unknown-linux-gnu");
"##,
        &mods.join("\n"),
    ]
    .concat();
    std::fs::write("../src/lib.rs", lib).unwrap();
}

fn generate_ty_source(intrinsics: &[Intrinsic], ty: Type) -> Option<String> {
    let mut sigs = vec![];
    let mut defs = vec![];
    for intrinsic in intrinsics.iter().filter(|i| i.match_type(ty)) {
        let sig = intrinsic.signature(ty);
        let call = intrinsic.call(ty);
        let def = format!(
            r#"    {sig} {{
        {call}
    }}"#
        );
        sigs.push(sig);
        defs.push(def);
    }
    if sigs.is_empty() {
        return None;
    }
    let mut output = "// @".to_string();
    let w = &mut output;
    writeln!(w, "generated").unwrap();
    writeln!(w, "use core::arch::x86_64::*;").unwrap();
    writeln!(w, "pub trait {ty}Intrinsic: Sized {{").unwrap();
    for sig in sigs {
        writeln!(w, "    {sig};").unwrap();
    }
    writeln!(w, "}}").unwrap();
    writeln!(w, "impl {ty}Intrinsic for {ty} {{").unwrap();
    for def in defs {
        writeln!(w, "    #[inline(always)]").unwrap();
        writeln!(w, "{def}").unwrap();
    }
    writeln!(w, "}}").unwrap();
    Some(output)
}
