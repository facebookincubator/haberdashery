// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[derive(PartialEq)]
pub struct Hex {
    hex: String,
}
impl core::fmt::Debug for Hex {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "{}", self.hex)
    }
}
impl Hex {
    pub fn as_str(&self) -> &str {
        &self.hex
    }
}
impl From<&[u8]> for Hex {
    fn from(v: &[u8]) -> Self {
        Self {
            hex: other_hex::encode(v),
        }
    }
}
impl From<&str> for Hex {
    fn from(s: &str) -> Self {
        Self {
            hex: s.replace([' ', '_'], ""),
        }
    }
}
impl From<&[&str]> for Hex {
    fn from(s: &[&str]) -> Hex {
        s.concat().as_str().into()
    }
}
impl PartialEq<&str> for Hex {
    fn eq(&self, other: &&str) -> bool {
        self.eq(&Self::from(*other))
    }
}
impl PartialEq<String> for Hex {
    fn eq(&self, other: &String) -> bool {
        self.eq(&other.as_str())
    }
}
impl PartialEq<[&str]> for Hex {
    fn eq(&self, other: &[&str]) -> bool {
        self.eq(&other.concat())
    }
}
impl<const N: usize> PartialEq<[&str; N]> for Hex {
    fn eq(&self, other: &[&str; N]) -> bool {
        Hex::from(other.as_slice()).eq(self)
    }
}
pub trait ToHex {
    fn to_hex(&self) -> Hex;
}
impl ToHex for [u8] {
    fn to_hex(&self) -> Hex {
        Hex {
            hex: other_hex::encode(self),
        }
    }
}
impl ToHex for Vec<u8> {
    fn to_hex(&self) -> Hex {
        Hex {
            hex: other_hex::encode(self),
        }
    }
}
pub trait FromHex {
    fn try_from_hex(&self) -> Option<Vec<u8>>;
}
impl FromHex for Hex {
    fn try_from_hex(&self) -> Option<Vec<u8>> {
        other_hex::decode(&self.hex).ok()
    }
}
impl FromHex for str {
    fn try_from_hex(&self) -> Option<Vec<u8>> {
        Hex::from(self).try_from_hex()
    }
}
impl FromHex for [&str] {
    fn try_from_hex(&self) -> Option<Vec<u8>> {
        self.concat().try_from_hex()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn str() {
        assert_eq!([0xde, 0xad, 0xbe, 0xef].to_hex(), "deadbeef");
        assert_eq!(
            [0xde, 0xad, 0xbe, 0xef],
            "deadbeef".try_from_hex().unwrap().as_slice()
        );
    }
    #[test]
    fn str_array() {
        assert_eq!([0xde, 0xad, 0xbe, 0xef].to_hex(), ["dead", "beef"]);
        assert_eq!(
            [0xde, 0xad, 0xbe, 0xef],
            ["dead", "beef"].try_from_hex().unwrap().as_slice()
        );
    }
    #[test]
    fn spaces() {
        assert_eq!([0xde, 0xad, 0xbe, 0xef].to_hex(), "dead beef");
        assert_eq!(
            [0xde, 0xad, 0xbe, 0xef],
            "dead beef".try_from_hex().unwrap().as_slice()
        );
    }
    #[test]
    fn underscores() {
        assert_eq!([0xde, 0xad, 0xbe, 0xef].to_hex(), "dead_beef");
        assert_eq!(
            [0xde, 0xad, 0xbe, 0xef],
            "dead_beef".try_from_hex().unwrap().as_slice()
        );
    }
    #[test]
    fn debug_fmt() {
        assert_eq!([0xde, 0xad, 0xbe, 0xef].to_hex().as_str(), "deadbeef");
        assert_eq!(
            format!("{:?}", [0xde, 0xad, 0xbe, 0xef].to_hex()),
            "deadbeef"
        );
        assert_eq!(format!("{:?}", Hex::from("dead_beef")), "deadbeef");
        assert_eq!(format!("{:?}", Hex::from("dead beef")), "deadbeef");
        assert_eq!(
            format!("{:?}", Hex::from(["dead", "beef"].as_slice())),
            "deadbeef"
        );
    }
}
