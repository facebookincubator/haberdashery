// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod rust_docs;
pub mod xml;

use core::fmt::Display;
use core::fmt::Formatter;

pub struct Intrinsic {
    name: String,
    args: Args,
    generics: Generics,
    output: Output,
}
impl PartialEq for Intrinsic {
    fn eq(&self, rhs: &Self) -> bool {
        self.name == rhs.name
    }
}
impl Eq for Intrinsic {}
impl PartialOrd for Intrinsic {
    fn partial_cmp(&self, rhs: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(rhs))
    }
}
impl Ord for Intrinsic {
    fn cmp(&self, rhs: &Self) -> std::cmp::Ordering {
        self.name.cmp(&rhs.name)
    }
}
impl Intrinsic {
    // These are intrinsics that are deprecated, unstable or with some other issues
    // https://github.com/rust-lang/stdarch/issues/559
    const EXCEPTIONS: &'static [&'static str] = &["_mm_getcsr", "_xbegin", "_rdtsc", "_xtest"];
    pub fn new(intrinsic: &xml::Intrinsic) -> Option<Self> {
        if !rust_docs::has_function(intrinsic.name()) {
            return None;
        }
        if Self::EXCEPTIONS.contains(&intrinsic.name()) {
            return None;
        }
        Self::new_internal(intrinsic)?.rewrite()
    }
    fn rewrite(mut self) -> Option<Self> {
        match self.name.as_str() {
            // Rust uses mut refs instead of mut pointers
            "_addcarry_u32" => self.args[3].ty.qualifiers = Some(Qualifiers::MutRef),
            "_addcarry_u64" => self.args[3].ty.qualifiers = Some(Qualifiers::MutRef),
            "_addcarryx_u32" => self.args[3].ty.qualifiers = Some(Qualifiers::MutRef),
            "_addcarryx_u64" => self.args[3].ty.qualifiers = Some(Qualifiers::MutRef),
            "_mulx_u32" => self.args[2].ty.qualifiers = Some(Qualifiers::MutRef),
            "_mulx_u64" => self.args[2].ty.qualifiers = Some(Qualifiers::MutRef),
            "_rdrand16_step" => self.args[0].ty.qualifiers = Some(Qualifiers::MutRef),
            "_rdrand32_step" => self.args[0].ty.qualifiers = Some(Qualifiers::MutRef),
            "_rdrand64_step" => self.args[0].ty.qualifiers = Some(Qualifiers::MutRef),
            "_rdseed16_step" => self.args[0].ty.qualifiers = Some(Qualifiers::MutRef),
            "_rdseed32_step" => self.args[0].ty.qualifiers = Some(Qualifiers::MutRef),
            "_rdseed64_step" => self.args[0].ty.qualifiers = Some(Qualifiers::MutRef),
            "_subborrow_u32" => self.args[3].ty.qualifiers = Some(Qualifiers::MutRef),
            "_subborrow_u64" => self.args[3].ty.qualifiers = Some(Qualifiers::MutRef),
            // Marked as deprecated in rust, we don't include them
            "_MM_GET_EXCEPTION_MASK"
            | "_MM_GET_EXCEPTION_STATE"
            | "_MM_GET_FLUSH_ZERO_MODE"
            | "_MM_GET_ROUNDING_MODE"
            | "_MM_SET_EXCEPTION_MASK"
            | "_MM_SET_EXCEPTION_STATE"
            | "_MM_SET_FLUSH_ZERO_MODE"
            | "_MM_SET_ROUNDING_MODE"
            | "_mm_setcsr" => return None,
            _ => {}
        }
        Some(self)
    }
    fn new_internal(intrinsic: &xml::Intrinsic) -> Option<Self> {
        let name = intrinsic.name();
        let mut args = vec![];
        let mut generics = vec![];
        let params = intrinsic
            .parameters()
            .iter()
            .filter(|p| p.type_() != "void");
        for param in params {
            let arg = Arg::new(param)?;
            match arg.ty.is_immediate() {
                true => generics.push(arg),
                false => args.push(arg),
            }
        }
        let output = Output(Type::new(
            intrinsic.return_type(),
            intrinsic.return_etype(),
        )?);
        Some(Self {
            name: name.to_string(),
            args: Args::new(args),
            generics: Generics(generics),
            output,
        })
    }
    pub fn match_type(&self, ty: Type) -> bool {
        (self.output.ty() == ty || self.args.match_type(ty)) && (ty.is_simd() || !self.has_simd())
    }
    fn has_simd(&self) -> bool {
        self.args.has_simd() || self.output.ty().is_simd()
    }
    pub fn name(&self) -> &str {
        &self.name
    }
    pub fn signature(&self, self_ty: Type) -> String {
        let fn_token = "unsafe fn";
        let name = self.name();
        let generic_token = self
            .generics
            .signature()
            .or_else(|| self.output.generic_token(self_ty))
            .map(|token| format!("<{token}>"))
            .unwrap_or_default();
        let args = self.args.signature(self_ty);
        let out_token = self
            .output
            .return_token(self_ty, self.generics.0.is_empty());
        format!("{fn_token} {name}{generic_token}({args}){out_token}")
    }
    pub fn call(&self, self_ty: Type) -> String {
        let name = self.name();
        let generic_token = self.generics.call();
        let args = self.args.call(self_ty);
        let return_token = self.output.call_token(self.generics.0.is_empty());
        format!("unsafe {{ {name}{generic_token}({args}) }}{return_token}")
    }
}
struct Generics(Vec<Arg>);
impl Generics {
    pub fn signature(&self) -> Option<String> {
        (!self.0.is_empty()).then(|| {
            self.0
                .iter()
                .map(|arg| format!("const {}", arg.signature(Type::Void)))
                .collect::<Vec<String>>()
                .join(", ")
        })
    }
    pub fn call(&self) -> String {
        match self.0.is_empty() {
            true => String::default(),
            false => format!(
                "::<{}>",
                self.0
                    .iter()
                    .map(Arg::name)
                    .collect::<Vec<&str>>()
                    .join(", ")
            ),
        }
    }
}
struct Args(Vec<Arg>);
impl Args {
    pub fn new(args: Vec<Arg>) -> Self {
        // Attempt to parse the args as a single array arg, otherwise take the args as is.
        Self::new_as_array(&args).unwrap_or(Self(args))
    }
    fn new_as_array(args: &[Arg]) -> Option<Self> {
        // Arrays should have at least one element
        let ty = args.first()?.ty.ty;

        for (i, arg) in args.iter().enumerate() {
            // Arrays should have their args named like e3, e2, e1, e0
            let expected_name = format!("e{}", args.len() - 1 - i);
            if arg.name != expected_name {
                return None;
            }
            // Arrays should use an unqualifid type, i.e. no pointers, etc
            if !arg.ty.is_unqualified(ty) {
                return None;
            }
        }

        // Form a single arg, having Array as the qualifier and 'e' as the name.
        let ty = QualifiedType {
            ty,
            qualifiers: Some(Qualifiers::Array(args.len())),
        };
        let arg = Arg {
            name: "e".into(),
            ty,
        };
        Some(Self(vec![arg]))
    }
    pub fn signature(&self, self_ty: Type) -> String {
        self.0
            .iter()
            .enumerate()
            .map(|(i, arg)| match i == 0 && arg.ty.is_unqualified(self_ty) {
                true => "self".to_string(),
                false => arg.signature(self_ty),
            })
            .collect::<Vec<String>>()
            .join(", ")
    }
    pub fn call(&self, self_ty: Type) -> String {
        self.0
            .iter()
            .enumerate()
            .map(|(i, arg)| match i == 0 && arg.ty.is_unqualified(self_ty) {
                true => "self".to_string(),
                false => arg.call(),
            })
            .collect::<Vec<String>>()
            .join(", ")
    }
    pub fn match_type(&self, ty: Type) -> bool {
        match self.0.first() {
            Some(arg) => arg.ty.ty == ty,
            None => false,
        }
    }
    pub fn has_simd(&self) -> bool {
        for arg in &self.0 {
            if arg.ty.is_simd() {
                return true;
            }
        }
        false
    }
}
impl core::ops::Index<usize> for Args {
    type Output = Arg;
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl core::ops::IndexMut<usize> for Args {
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}
struct Arg {
    name: String,
    ty: QualifiedType,
}
impl Arg {
    pub fn new(param: &xml::Parameter) -> Option<Self> {
        let name = param.name()?.to_string();
        let ty = QualifiedType::new(param.type_(), param.etype())?;
        Some(Self { name, ty })
    }
    pub fn name(&self) -> &str {
        &self.name
    }
    pub fn call(&self) -> String {
        let name = self.name();
        match self.ty.qualifiers {
            Some(Qualifiers::Array(n)) => {
                return (0..n)
                    .map(|i| format!("{name}[{}]", n - 1 - i))
                    .collect::<Vec<String>>()
                    .join(", ");
            }
            _ => {}
        }
        let suffix = match self.ty.qualifiers.is_none() && self.ty.is_simd() {
            true => ".into()",
            false => "",
        };
        format!("{name}{suffix}")
    }
    pub fn signature(&self, self_ty: Type) -> String {
        let name = &self.name;
        let ty = self.ty.name_or_self(self_ty);
        format!("{name}: {ty}")
    }
}
impl Display for Arg {
    fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
        write!(f, "{}", self.name)
    }
}
#[derive(Clone, Copy, PartialEq)]
pub enum Type {
    Void,
    ImmI32,
    ImmU32,
    M128i,
    M256i,
    M512i,
    I64,
    I32,
    I16,
    I8,
    U64,
    U32,
    U16,
    U8,
    F64,
    F32,
}
impl Type {
    fn new(ty: &str, ety: Option<&str>) -> Option<Self> {
        if ty == "void" {
            match ety {
                None => return Some(Self::Void),
                Some("UI8") => return Some(Self::I8),
                _ => {}
            }
        }
        if ety == Some("IMM") {
            return match ty {
                "const int" | "int" => Some(Self::ImmI32),
                "const unsigned int" | "unsigned int" => Some(Self::ImmU32),
                _ => None,
            };
        }
        match ty {
            "__m128i" => Some(Self::M128i),
            "__m256i" => Some(Self::M256i),
            "__m512i" => Some(Self::M512i),
            "__int64" | "long long" => Some(Self::I64),
            "__int32" | "int" => Some(Self::I32),
            "__int16" | "short" => Some(Self::I16),
            "__int8" | "char" => Some(Self::I8),
            "unsigned __int64" | "unsigned long long" => Some(Self::U64),
            "unsigned __int32" | "unsigned int" => Some(Self::U32),
            "unsigned __int16" | "unsigned short" => Some(Self::U16),
            "unsigned __int8" | "unsigned char" => Some(Self::U8),
            "double" => Some(Self::F64),
            "float" => Some(Self::F32),
            "__mmask64" => Some(Self::U64),
            "__mmask32" => Some(Self::U32),
            "__mmask16" => Some(Self::U16),
            "__mmask8" => Some(Self::U8),
            _ => None,
        }
    }
    fn name(self) -> &'static str {
        match self {
            Type::Void => "core::ffi::c_void",
            Type::ImmI32 => "i32",
            Type::ImmU32 => "u32",
            Type::M128i => "__m128i",
            Type::M256i => "__m256i",
            Type::M512i => "__m512i",
            Type::I64 => "i64",
            Type::I32 => "i32",
            Type::I16 => "i16",
            Type::I8 => "i8",
            Type::U64 => "u64",
            Type::U32 => "u32",
            Type::U16 => "u16",
            Type::U8 => "u8",
            Type::F64 => "f64",
            Type::F32 => "f32",
        }
    }
    fn is_simd(self) -> bool {
        [Type::M128i, Type::M256i, Type::M512i].contains(&self)
    }
}
impl Display for Type {
    fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
        write!(f, "{}", self.name())
    }
}
#[derive(Clone, Copy, PartialEq)]
pub struct QualifiedType {
    ty: Type,
    qualifiers: Option<Qualifiers>,
}
impl QualifiedType {
    fn new(ty: &str, ety: Option<&str>) -> Option<Self> {
        let (ty, qualifiers) = Qualifiers::new(ty);
        let ty = Type::new(ty, ety)?;
        Some(Self { ty, qualifiers })
    }
    fn name_or_self(self, self_ty: Type) -> String {
        let ty = match self.ty == self_ty {
            true => "Self".to_string(),
            false => self.ty.to_string(),
        };
        match (self.qualifiers, self.ty.is_simd()) {
            (Some(Qualifiers::Array(n)), _) => format!("[{ty}; {n}]"),
            (Some(qualifiers), _) => format!("{qualifiers}{ty}"),
            (None, true) => format!("impl Into<{ty}>"),
            (None, false) => ty.to_string(),
        }
    }
    fn is_unqualified(self, ty: Type) -> bool {
        self.ty == ty && self.qualifiers.is_none()
    }
    fn is_simd(self) -> bool {
        self.ty.is_simd()
    }
    fn is_immediate(self) -> bool {
        match self.ty {
            Type::ImmI32 | Type::ImmU32 => true,
            _ => false,
        }
    }
}
impl Display for QualifiedType {
    fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
        let ty = self.ty;
        match self.qualifiers {
            Some(Qualifiers::Array(n)) => write!(f, "[{ty}; {n}]"),
            Some(qualifiers) => write!(f, "{qualifiers}{ty}"),
            None => write!(f, "{ty}"),
        }
    }
}
#[derive(Clone, Copy, PartialEq)]
pub enum Qualifiers {
    ConstPtr,
    MutPtr,
    MutRef,
    Array(usize),
}
impl Qualifiers {
    fn new(ty: &str) -> (&str, Option<Self>) {
        if let Some(ty) = ty.strip_suffix('*') {
            match ty.trim().strip_suffix("const") {
                Some(ty) => (ty.trim(), Some(Qualifiers::ConstPtr)),
                None => (ty.trim(), Some(Qualifiers::MutPtr)),
            }
        } else {
            (ty, None)
        }
    }
}
impl Display for Qualifiers {
    fn fmt(&self, f: &mut Formatter) -> core::fmt::Result {
        match self {
            Qualifiers::ConstPtr => write!(f, "*const ")?,
            Qualifiers::MutPtr => write!(f, "*mut ")?,
            Qualifiers::MutRef => write!(f, "&mut ")?,
            Qualifiers::Array(n) => write!(f, "array<{n}> ")?,
        }
        Ok(())
    }
}
pub struct Output(Type);
impl Output {
    fn ty(&self) -> Type {
        self.0
    }
    fn generic_token(&self, self_ty: Type) -> Option<String> {
        let ty = match self.0 == self_ty {
            true => "Self",
            false => self.0.name(),
        };
        (self.is_simd()).then(|| format!("T: From<{ty}>"))
    }
    fn return_token(&self, self_ty: Type, convert: bool) -> String {
        let ty = self.0;
        if ty == Type::Void {
            String::default()
        } else if convert && ty.is_simd() {
            " -> T".to_string()
        } else if ty == self_ty {
            " -> Self".to_string()
        } else {
            format!(" -> {ty}")
        }
    }
    fn call_token(&self, convert: bool) -> &str {
        match convert && self.is_simd() {
            true => ".into()",
            false => "",
        }
    }
    fn is_simd(&self) -> bool {
        self.0.is_simd()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    impl Intrinsic {
        pub fn from_xml(s: &str) -> Self {
            Self::new_internal(&serde_xml_rs::from_str(s).unwrap()).unwrap()
        }
    }
    #[test]
    fn m128i_0args() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_setzero_si128" tech="SSE_ALL">
    <return etype="M128" type="__m128i" varname="dst" />
    <instruction form="xmm, xmm" name="PXOR" xed="PXOR_XMMdq_XMMdq" />
    <CPUID>SSE2</CPUID>
    <header>emmintrin.h</header>
    <category>Set</category>
    </intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_setzero_si128<T: From<Self>>() -> T"
        );
        assert_eq!(intrinsic.call(ty), "unsafe { _mm_setzero_si128() }.into()");
    }
    #[test]
    fn m256i_0args() {
        let ty = Type::M256i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm256_setzero_si256" tech="AVX_ALL">
            <return etype="M256" type="__m256i" varname="dst" />
            <parameter type="void" />
            <description>Return vector of type __m256i with all elements set to zero.</description>
            <operation>
        dst[MAX:0] := 0
            </operation>
            <instruction form="ymm, ymm, ymm" name="VPXOR" xed="VPXOR_YMMqq_YMMqq_YMMqq" />
            <CPUID>AVX</CPUID>
            <header>immintrin.h</header>
            <category>Set</category>
            </intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm256_setzero_si256<T: From<Self>>() -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm256_setzero_si256() }.into()"
        );
    }
    #[test]
    fn m128i_1args() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_broadcastb_epi8" tech="AVX_ALL">
    <return etype="UI8" type="__m128i" varname="dst" />
    <parameter etype="UI8" type="__m128i" varname="a" />
    <instruction form="xmm, xmm" name="VPBROADCASTB" xed="VPBROADCASTB_XMMdq_XMMb" />
    <CPUID>AVX2</CPUID>
    <header>immintrin.h</header>
    <category>Swizzle</category>
    </intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_broadcastb_epi8<T: From<Self>>(self) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_broadcastb_epi8(self) }.into()"
        );
    }
    #[test]
    fn m128i_2args() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_xor_si128" vexEq="TRUE" tech="SSE_ALL">
    <return etype="M128" type="__m128i" varname="dst" />
    <parameter etype="M128" type="__m128i" varname="a" />
    <parameter etype="M128" type="__m128i" varname="b" />
    <instruction form="xmm, xmm" name="PXOR" xed="PXOR_XMMdq_XMMdq" />
    <CPUID>SSE2</CPUID>
    <header>emmintrin.h</header>
    <category>Logical</category>
    </intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_xor_si128<T: From<Self>>(self, b: impl Into<Self>) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_xor_si128(self, b.into()) }.into()"
        );
    }
    #[test]
    fn m128i_3args() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_blendv_epi8" vexEq="TRUE" tech="SSE_ALL">
    <return etype="UI8" type="__m128i" varname="dst" />
    <parameter etype="UI8" type="__m128i" varname="a" />
    <parameter etype="UI8" type="__m128i" varname="b" />
    <parameter etype="UI8" type="__m128i" varname="mask" />
    <instruction form="xmm, xmm" name="PBLENDVB" xed="PBLENDVB_XMMdq_XMMdq" />
    <CPUID>SSE4.1</CPUID>
    <header>smmintrin.h</header>
    <category>Swizzle</category>
    </intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_blendv_epi8<T: From<Self>>(self, b: impl Into<Self>, mask: impl Into<Self>) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_blendv_epi8(self, b.into(), mask.into()) }.into()"
        );
    }
    #[test]
    fn m128i_constptr() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_loadu_si128" vexEq="TRUE" tech="SSE_ALL">
	<return etype="M128" type="__m128i" varname="dst" />
	<parameter etype="M128" memwidth="128" type="__m128i const*" varname="mem_addr" />
	<instruction form="xmm, m128" name="MOVDQU" xed="MOVDQU_XMMdq_MEMdq" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Load</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_loadu_si128<T: From<Self>>(mem_addr: *const Self) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_loadu_si128(mem_addr) }.into()"
        );
    }
    #[test]
    fn m128i_mutptr() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_storeu_si128" vexEq="TRUE" tech="SSE_ALL">
	<return type="void" />
	<parameter etype="M128" memwidth="128" type="__m128i*" varname="mem_addr" />
	<parameter etype="M128" type="__m128i" varname="a" />
	<instruction form="m128, xmm" name="MOVDQU" xed="MOVDQU_MEMdq_XMMdq" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Store</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_storeu_si128(mem_addr: *mut Self, a: impl Into<Self>)",
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_storeu_si128(mem_addr, a.into()) }"
        );
    }
    #[test]
    fn m128i_imm_constint() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_clmulepi64_si128" vexEq="TRUE" tech="Other">
	<return etype="M128" type="__m128i" varname="dst" />
	<parameter etype="M128" type="__m128i" varname="a" />
	<parameter etype="M128" type="__m128i" varname="b" />
	<parameter etype="IMM" immwidth="1" type="const int" varname="imm8" />
	<instruction form="xmm, xmm, imm8" name="PCLMULQDQ" xed="PCLMULQDQ_XMMdq_XMMdq_IMMb" />
	<CPUID>PCLMULQDQ</CPUID>
	<header>wmmintrin.h</header>
	<category>Application-Targeted</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_clmulepi64_si128<const imm8: i32>(self, b: impl Into<Self>) -> Self"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_clmulepi64_si128::<imm8>(self, b.into()) }"
        );
    }
    #[test]
    fn m128i_imm_int() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_shuffle_epi32" vexEq="TRUE" tech="SSE_ALL">
	<return etype="UI32" type="__m128i" varname="dst" />
	<parameter etype="UI32" type="__m128i" varname="a" />
	<parameter etype="IMM" immwidth="8" type="int" varname="imm8" />
	<instruction form="xmm, xmm, imm8" name="PSHUFD" xed="PSHUFD_XMMdq_XMMdq_IMMb" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Swizzle</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_shuffle_epi32<const imm8: i32>(self) -> Self"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_shuffle_epi32::<imm8>(self) }"
        );
    }
    #[test]
    fn m128i_i64() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_set_epi64x" sequence="TRUE" tech="SSE_ALL">
	<return etype="UI64" type="__m128i" varname="dst" />
	<parameter etype="UI64" type="__int64" varname="e1" />
	<parameter etype="UI64" type="__int64" varname="e0" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Set</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_set_epi64x<T: From<Self>>(e: [i64; 2]) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_set_epi64x(e[1], e[0]) }.into()"
        );
    }
    #[test]
    fn m128i_i32() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_set_epi32" sequence="TRUE" tech="SSE_ALL">
	<return etype="UI32" type="__m128i" varname="dst" />
	<parameter etype="UI32" type="int" varname="e3" />
	<parameter etype="UI32" type="int" varname="e2" />
	<parameter etype="UI32" type="int" varname="e1" />
	<parameter etype="UI32" type="int" varname="e0" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Set</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_set_epi32<T: From<Self>>(e: [i32; 4]) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_set_epi32(e[3], e[2], e[1], e[0]) }.into()"
        );
    }
    #[test]
    fn m128i_i16() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_set_epi16" sequence="TRUE" tech="SSE_ALL">
	<return etype="UI16" type="__m128i" varname="dst" />
	<parameter etype="UI16" type="short" varname="e7" />
	<parameter etype="UI16" type="short" varname="e6" />
	<parameter etype="UI16" type="short" varname="e5" />
	<parameter etype="UI16" type="short" varname="e4" />
	<parameter etype="UI16" type="short" varname="e3" />
	<parameter etype="UI16" type="short" varname="e2" />
	<parameter etype="UI16" type="short" varname="e1" />
	<parameter etype="UI16" type="short" varname="e0" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Set</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_set_epi16<T: From<Self>>(e: [i16; 8]) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_set_epi16(e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()"
        );
    }
    #[test]
    fn m128i_i8() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_set_epi8" sequence="TRUE" tech="SSE_ALL">
	<return etype="UI8" type="__m128i" varname="dst" />
	<parameter etype="UI8" type="char" varname="e15" />
	<parameter etype="UI8" type="char" varname="e14" />
	<parameter etype="UI8" type="char" varname="e13" />
	<parameter etype="UI8" type="char" varname="e12" />
	<parameter etype="UI8" type="char" varname="e11" />
	<parameter etype="UI8" type="char" varname="e10" />
	<parameter etype="UI8" type="char" varname="e9" />
	<parameter etype="UI8" type="char" varname="e8" />
	<parameter etype="UI8" type="char" varname="e7" />
	<parameter etype="UI8" type="char" varname="e6" />
	<parameter etype="UI8" type="char" varname="e5" />
	<parameter etype="UI8" type="char" varname="e4" />
	<parameter etype="UI8" type="char" varname="e3" />
	<parameter etype="UI8" type="char" varname="e2" />
	<parameter etype="UI8" type="char" varname="e1" />
	<parameter etype="UI8" type="char" varname="e0" />
	<CPUID>SSE2</CPUID>
	<header>emmintrin.h</header>
	<category>Set</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_set_epi8<T: From<Self>>(e: [i8; 16]) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_set_epi8(e[15], e[14], e[13], e[12], e[11], e[10], e[9], e[8], e[7], e[6], e[5], e[4], e[3], e[2], e[1], e[0]) }.into()"
        );
    }
    #[test]
    fn m128i_i8_ptr() {
        let ty = Type::M128i;
        let intrinsic = Intrinsic::from_xml(
            r#"<intrinsic name="_mm_maskz_loadu_epi8" tech="AVX-512">
	<return etype="UI8" type="__m128i" varname="dst" />
	<parameter etype="MASK" type="__mmask16" varname="k" />
	<parameter etype="UI8" memwidth="128" type="void const*" varname="mem_addr" />
	<instruction form="xmm {z}, m128" name="VMOVDQU8" xed="VMOVDQU8_XMMu8_MASKmskw_MEMu8_AVX512" />
	<CPUID>AVX512BW</CPUID>
	<CPUID>AVX512VL</CPUID>
	<header>immintrin.h</header>
	<category>Load</category>
	</intrinsic>"#,
        );
        assert!(intrinsic.match_type(ty));
        assert_eq!(
            intrinsic.signature(ty),
            "unsafe fn _mm_maskz_loadu_epi8<T: From<Self>>(k: u16, mem_addr: *const i8) -> T"
        );
        assert_eq!(
            intrinsic.call(ty),
            "unsafe { _mm_maskz_loadu_epi8(k, mem_addr) }.into()"
        );
    }
}
