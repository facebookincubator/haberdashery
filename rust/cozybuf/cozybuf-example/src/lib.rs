// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod eg;

#[cfg(test)]
mod tests {
    use hex::*;

    use super::eg::CozyExampleStruct;

    #[test]
    fn empty() {
        let cozy = CozyExampleStruct {
            bytes: [].into(),
            string: "".into(),
            uint32: 0,
        };
        let mut serialized = Vec::<u8>::default();
        cozy.to_writer(&mut serialized).unwrap();
        assert_eq!(serialized.to_hex(), "00_00_00_00 00_00_00_00 00_00_00_00");
        assert_eq!(
            serialized.to_hex(),
            [
                "00_00_00_00",
                cozy.bytes.to_hex().as_str(),
                "00_00_00_00",
                cozy.string.as_bytes().to_hex().as_str(),
                "00_00_00_00",
            ]
        );
        let mut serialized = serialized.as_slice();
        let other = CozyExampleStruct::from_reader(&mut serialized).unwrap();
        assert_eq!(cozy.bytes.to_hex(), other.bytes.to_hex());
    }

    #[test]
    fn values() {
        let cozy = CozyExampleStruct {
            bytes: [0xde, 0xad, 0xbe, 0xef].into(),
            string: "Hello, World!".into(),
            uint32: 42,
        };
        let mut serialized = Vec::<u8>::default();
        cozy.to_writer(&mut serialized).unwrap();
        assert_eq!(
            serialized.to_hex(),
            [
                "04_00_00_00 deadbeef",
                "0d_00_00_00 48656c6c6f2c20576f726c6421",
                "2a_00_00_00",
            ]
        );
        assert_eq!(
            serialized.to_hex(),
            [
                "04_00_00_00",
                cozy.bytes.to_hex().as_str(),
                "0d_00_00_00",
                cozy.string.as_bytes().to_hex().as_str(),
                cozy.uint32.to_le_bytes().to_hex().as_str(),
            ]
        );
        let mut serialized = serialized.as_slice();
        let other = CozyExampleStruct::from_reader(&mut serialized).unwrap();
        assert_eq!(cozy.bytes.to_hex(), other.bytes.to_hex());
    }
}
