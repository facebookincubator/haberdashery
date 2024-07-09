// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub trait Parse {
    fn parse(s: &str) -> Self;
}
impl<T: Parse> Parse for Option<T> {
    fn parse(s: &str) -> Self {
        Some(T::parse(s))
    }
}
impl<T: Parse> Parse for Vec<T> {
    fn parse(s: &str) -> Self {
        s.split(',').map(str::trim).map(T::parse).collect()
    }
}
impl Parse for String {
    fn parse(s: &str) -> Self {
        s.into()
    }
}
impl Parse for std::path::PathBuf {
    fn parse(s: &str) -> Self {
        s.into()
    }
}
impl Parse for i8 {
    fn parse(s: &str) -> Self {
        s.parse::<i8>().expect("Couldn't parse i8")
    }
}
impl Parse for i16 {
    fn parse(s: &str) -> Self {
        s.parse::<i16>().expect("Couldn't parse i16")
    }
}
impl Parse for i32 {
    fn parse(s: &str) -> Self {
        s.parse::<i32>().expect("Couldn't parse i32")
    }
}
impl Parse for i64 {
    fn parse(s: &str) -> Self {
        s.parse::<i64>().expect("Couldn't parse i64")
    }
}
impl Parse for i128 {
    fn parse(s: &str) -> Self {
        s.parse::<i128>().expect("Couldn't parse i128")
    }
}
impl Parse for u8 {
    fn parse(s: &str) -> Self {
        s.parse::<u8>().expect("Couldn't parse u8")
    }
}
impl Parse for u16 {
    fn parse(s: &str) -> Self {
        s.parse::<u16>().expect("Couldn't parse u16")
    }
}
impl Parse for u32 {
    fn parse(s: &str) -> Self {
        s.parse::<u32>().expect("Couldn't parse u32")
    }
}
impl Parse for u64 {
    fn parse(s: &str) -> Self {
        s.parse::<u64>().expect("Couldn't parse u64")
    }
}
impl Parse for u128 {
    fn parse(s: &str) -> Self {
        s.parse::<u128>().expect("Couldn't parse u128")
    }
}
impl Parse for f32 {
    fn parse(s: &str) -> Self {
        s.parse::<f32>().expect("Couldn't parse f32")
    }
}
impl Parse for f64 {
    fn parse(s: &str) -> Self {
        s.parse::<f64>().expect("Couldn't parse f64")
    }
}
impl Parse for isize {
    fn parse(s: &str) -> Self {
        s.parse::<isize>().expect("Couldn't parse isize")
    }
}
impl Parse for usize {
    fn parse(s: &str) -> Self {
        s.parse::<usize>().expect("Couldn't parse usize")
    }
}
impl Parse for bool {
    fn parse(s: &str) -> Self {
        s.parse::<bool>().expect("Couldn't parse bool")
    }
}
