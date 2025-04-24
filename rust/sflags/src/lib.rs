// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub mod _internal;
mod convert;
mod flag;
mod parse;
mod registry;

pub use flag::Flag;
pub use flag::reference::RefFlag;
pub use parse::Parse;
pub use registry::parse;
pub use registry::parse_exact;

#[macro_export]
macro_rules! define{
    () => {};
    (--$name:ident: Option<$ty:ty>$(;$($tail:tt)*)?) => {
        sflags::_internal_define!($name, Option<$ty>, || None);
        $(sflags::define!($($tail)*);)*
    };
    (--$name:ident: Vec<$ty:ty>$(;$($tail:tt)*)?) => {
        sflags::_internal_define!($name, Vec<$ty>, || vec![]);
        $(sflags::define!($($tail)*);)*
    };
    (--$name:ident: &str$( = $default:expr)?$(;$($tail:tt)*)?) => {
        sflags::_internal_define_ref!(
            $name, String, str
            $(, || sflags::_internal::DefaultConvert::convert($default))*
        );
        $(sflags::define!($($tail)*);)*
    };
    (--$name:ident: &[$ty:ty]$( = $default:expr)?$(;$($tail:tt)*)?) => {
        sflags::_internal_define_ref!(
            $name, Vec<$ty>, [$ty]
            $(, || sflags::_internal::DefaultConvert::convert($default))*
        );
        $(sflags::define!($($tail)*);)*
    };
    (--$name:ident: <$base_ty:ty as AsRef<$ref_ty:ty>>$( = $default:expr)?$(;$($tail:tt)*)?) => {
        sflags::_internal_define_ref!(
            $name, $base_ty, $ref_ty
            $(, || sflags::_internal::DefaultConvert::convert($default))*
        );
        $(sflags::define!($($tail)*);)*
    };
    (--$name:ident: $ty:ty$( = $default:expr)?$(;$($tail:tt)*)?) => {
        sflags::_internal_define!(
            $name, $ty
            $(, || sflags::_internal::DefaultConvert::convert($default))*
        );
        $(sflags::define!($($tail)*);)*
    };
}
#[macro_export]
macro_rules! _internal_define {
    ($name:ident, $flag_type:ty$(, $default:expr)?) => {
        sflags::_internal::paste! {
            pub static [<$name:upper>]: sflags::Flag<$flag_type>
                = sflags::Flag::<$flag_type>::new()
                $(.with_default($default))*;
            const _: () = {
                #[no_mangle]
                fn [<$name _has_duplicate_sflags_definitions>]() {}
                #[sflags::_internal::linkme::distributed_slice(
                    sflags::_internal::REGISTRY
                )]
                #[linkme(crate = sflags::_internal::linkme)]
                static __: sflags::_internal::Registration
                    = sflags::_internal::Registration::new(
                        stringify!($name),
                        &[<$name:upper>]
                    );
            };
        }
    };
}
#[macro_export]
macro_rules! _internal_define_ref {
    ($name:ident, $base_ty:ty, $ref_ty:ty$(, $default:expr)?) => {
        sflags::_internal::paste! {
            pub static [<$name:upper>]: sflags::RefFlag<$base_ty, $ref_ty>
                = sflags::RefFlag::<$base_ty, $ref_ty>::new()
                $(.with_default($default))*;
            const _: () = {
                #[no_mangle]
                fn [<$name _has_duplicate_sflags_definitions>]() {}
                #[sflags::_internal::linkme::distributed_slice(
                    sflags::_internal::REGISTRY
                )]
                #[linkme(crate = sflags::_internal::linkme)]
                static __: sflags::_internal::Registration
                    = sflags::_internal::Registration::new(
                        stringify!($name),
                        &[<$name:upper>]
                    );
            };
        }
    };
}
