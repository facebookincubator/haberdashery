// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::fmt::Display;
use core::fmt::Formatter;

pub trait BytesConvert {
    fn bytes(self) -> Self;
    fn kb(self) -> Self;
    fn mb(self) -> Self;
}
impl BytesConvert for i32 {
    fn bytes(self) -> Self {
        self
    }
    fn kb(self) -> Self {
        self << 10
    }
    fn mb(self) -> Self {
        self << 20
    }
}
impl BytesConvert for u32 {
    fn bytes(self) -> Self {
        self
    }
    fn kb(self) -> Self {
        self << 10
    }
    fn mb(self) -> Self {
        self << 20
    }
}
impl BytesConvert for i64 {
    fn bytes(self) -> Self {
        self
    }
    fn kb(self) -> Self {
        self << 10
    }
    fn mb(self) -> Self {
        self << 20
    }
}
impl BytesConvert for u64 {
    fn bytes(self) -> Self {
        self
    }
    fn kb(self) -> Self {
        self << 10
    }
    fn mb(self) -> Self {
        self << 20
    }
}
impl BytesConvert for usize {
    fn bytes(self) -> Self {
        self
    }
    fn kb(self) -> Self {
        self << 10
    }
    fn mb(self) -> Self {
        self << 20
    }
}

#[derive(Debug, PartialEq)]
pub enum ByteParseError {
    UnitsError,
    IntError,
}
#[derive(Debug)]
pub struct Bytes(usize);
impl TryFrom<&String> for Bytes {
    type Error = ByteParseError;
    fn try_from(s: &String) -> Result<Bytes, Self::Error> {
        s.as_str().try_into()
    }
}
impl TryFrom<&str> for Bytes {
    type Error = ByteParseError;
    fn try_from(s: &str) -> Result<Self, Self::Error> {
        if let Ok(s) = s.parse::<usize>() {
            return Ok(Self(s));
        }
        if let Some(s) = s.strip_suffix("kb") {
            let s = s.parse::<usize>().map_err(|_| ByteParseError::IntError)?;
            Ok(Self(s.kb()))
        } else if let Some(s) = s.strip_suffix("mb") {
            let s = s.parse::<usize>().map_err(|_| ByteParseError::IntError)?;
            Ok(Self(s.mb()))
        } else if let Some(s) = s.strip_suffix('b') {
            let s = s.parse::<usize>().map_err(|_| ByteParseError::IntError)?;
            Ok(Self(s.bytes()))
        } else {
            Err(ByteParseError::UnitsError)
        }
    }
}
impl From<usize> for Bytes {
    fn from(v: usize) -> Self {
        Self(v)
    }
}
impl From<Bytes> for usize {
    fn from(v: Bytes) -> Self {
        v.0
    }
}
impl From<u64> for Bytes {
    fn from(v: u64) -> Self {
        Self(v as usize)
    }
}
impl Display for Bytes {
    fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result {
        let value = self.0 as f64;
        if value < 1024.0 {
            return write!(f, "{}b", value);
        }
        let value = value / 1024.0;
        if value < 1024.0 {
            return write!(f, "{}kb", value);
        }
        let value = value / 1024.0;
        write!(f, "{}mb", value)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    trait To: Sized {
        fn to<T: From<Self>>(self) -> T {
            self.into()
        }
    }
    impl To for Bytes {}

    #[test]
    fn parse() {
        assert_eq!(Bytes::try_from("42b").unwrap().to::<usize>(), 42);
        assert_eq!(Bytes::try_from("42kb").unwrap().to::<usize>(), 42 * 1024);
        assert_eq!(
            Bytes::try_from("42mb").unwrap().to::<usize>(),
            42 * 1024 * 1024
        );
        assert_eq!(
            Bytes::try_from("banana").unwrap_err(),
            ByteParseError::UnitsError
        );
        assert_eq!(
            Bytes::try_from("thirty kb").unwrap_err(),
            ByteParseError::IntError
        );
    }
}
