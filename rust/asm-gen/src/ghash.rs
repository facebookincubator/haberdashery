// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::intrinsics::m128i::*;
use crate::polyval::HashInput;
use crate::polyval::PolyvalKey;
use crate::polyval::PolyvalState;

pub fn ghash_key<const N: usize>(key: M128i) -> PolyvalKey<N> {
    PolyvalKey::new(mulx_polyval(key.byte_reverse()))
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct GhashState<const N: usize>(PolyvalState<N>);
impl<const N: usize> From<PolyvalKey<N>> for GhashState<N> {
    #[inline(always)]
    fn from(key: PolyvalKey<N>) -> Self {
        Self(key.into())
    }
}
#[allow(unused)]
impl<const N: usize> GhashState<N> {
    #[inline(always)]
    pub fn new(key: PolyvalKey<N>, hash: M128i) -> Self {
        Self(PolyvalState::new(key, hash))
    }
    #[inline(always)]
    pub fn hash(&mut self, v: impl ByteReverse) -> Self {
        v.byte_reverse().hash(&mut self.0);
        *self
    }
    #[inline(always)]
    pub fn hash_lengths(&mut self, aad_len: usize, crypt_len: usize) -> Self {
        M128i::from([crypt_len as u64 * 8, aad_len as u64 * 8]).hash(&mut self.0);
        *self
    }
    #[inline(always)]
    pub fn raw(&self) -> M128i {
        self.0.result()
    }
    #[inline(always)]
    pub fn set_raw_hash(&mut self, v: M128i) {
        self.0.set_raw_hash(v);
    }
    #[inline(always)]
    pub fn keys(&self) -> [M128i; N] {
        self.0.keys()
    }
    #[inline(always)]
    pub fn result(&self) -> M128i {
        self.0.result().byte_reverse()
    }
}

pub trait ByteReverse: HashInput {
    fn byte_reverse(self) -> Self;
}
impl ByteReverse for M128i {
    #[inline(always)]
    fn byte_reverse(self) -> Self {
        self.byte_reverse()
    }
}
impl<const N: usize> ByteReverse for [M128i; N] {
    #[inline(always)]
    fn byte_reverse(mut self) -> Self {
        for block in &mut self {
            *block = block.byte_reverse();
        }
        self
    }
}
impl<const N: usize> ByteReverse for M128iArray<N> {
    #[inline(always)]
    fn byte_reverse(mut self) -> Self {
        for i in 0..N {
            self[i] = self[i].byte_reverse();
        }
        self
    }
}

#[allow(unused)]
#[inline(always)]
pub fn mulx_ghash(v: M128i) -> M128i {
    let v = v.byte_reverse();
    let remainder = v.left_bitshift64::<63>();
    let v = v.right_bitshift64::<1>() ^ remainder.shuffle32::<0b01_00_11_10>();
    let remainder = remainder.left_byteshift::<8>();
    let v = v
        ^ remainder.right_bitshift64::<1>()
        ^ remainder.right_bitshift64::<2>()
        ^ remainder.right_bitshift64::<7>();
    v.byte_reverse()
}

#[inline(always)]
pub fn mulx_polyval(v: M128i) -> M128i {
    let remainder = v.right_bitshift64::<63>();
    let v = v.left_bitshift64::<1>() ^ remainder.shuffle32::<0b01_00_11_10>();
    let remainder = remainder.shuffle32::<0b11_10_11_11>();
    v ^ remainder.left_bitshift64::<63>()
        ^ remainder.left_bitshift64::<62>()
        ^ remainder.left_bitshift64::<57>()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_mulx_ghash() {
        let v = M128i::from_hex("01000000000000000000000000000000").unwrap();
        assert_eq!(
            mulx_ghash(v).encode_hex(),
            "00800000000000000000000000000000"
        );

        let v = M128i::from_hex("9c98c04df9387ded828175a92ba652d8").unwrap();
        assert_eq!(
            mulx_ghash(v).encode_hex(),
            "4e4c6026fc9c3ef6c140bad495d3296c"
        );

        let v = M128i::from_hex("00000000000000000000000000000001").unwrap();
        assert_eq!(
            mulx_ghash(v).encode_hex(),
            "e1000000000000000000000000000000"
        );
    }

    #[test]
    fn test_mulx_polyval() {
        let v = M128i::from_hex("01000000000000000000000000000000").unwrap();
        assert_eq!(
            mulx_polyval(v).encode_hex(),
            "02000000000000000000000000000000"
        );

        let v = M128i::from_hex("9c98c04df9387ded828175a92ba652d8").unwrap();
        assert_eq!(
            mulx_polyval(v).encode_hex(),
            "3931819bf271fada0503eb52574ca572"
        );

        let v = M128i::from_hex("88888888888888888888888888888880").unwrap();
        assert_eq!(
            mulx_polyval(v).encode_hex(),
            "111111111111111111111111111111c3"
        );

        let v = M128i::from_hex("00000000000000000000000000000080").unwrap();
        assert_eq!(
            mulx_polyval(v).encode_hex(),
            "010000000000000000000000000000c2"
        );
    }

    #[test]
    fn test_polyval_interop() {
        use crate::polyval::PolyvalKey;
        use crate::polyval::PolyvalState;
        let h = M128i::from_hex("25629347589242761d31f826ba4b757b").unwrap();
        let x1 = M128i::from_hex("4f4f95668c83dfb6401762bb2d01a262").unwrap();
        let x2 = M128i::from_hex("d1a24ddd2721d006bbe45f20d3c9f362").unwrap();
        let mut polyval: PolyvalState<1> = PolyvalKey::<1>::new(h).into();
        polyval.hash(x1);
        polyval.hash(x2);
        assert_eq!(
            polyval.result().encode_hex(),
            "f7a3b47b846119fae5b7866cf5e5b77e"
        );

        let key = h.byte_reverse();
        let key = mulx_ghash(key);
        assert_eq!(key.encode_hex(), "dcbaa5dd137c188ebb21492c23c9b112");

        let mut ghash: GhashState<1> = ghash_key(h).into();
        ghash.hash(x1);
        ghash.hash(x2);
        assert_eq!(
            ghash.result().encode_hex(),
            "bd9b3997046731fb96251b91f9c99d7a"
        );
    }

    #[test]
    fn spec() {
        // https://luca-giuzzi.unibs.it/corsi/Support/papers-cryptography/gcm-spec.pdf
        {
            // Test Case 2
            let h = M128i::from_hex("66e94bd4ef8a2c3b884cfa59ca342b2e").unwrap();
            let ciphertext = M128i::from_hex("0388dace60b6a392f328c2b971b2fe78").unwrap();
            let intermediate = "5e2ec746917062882c85b0685353deb7";
            let hash = "f38cbb1ad69223dcc3457ae5b6b0f885";
            let mut ghash: GhashState<1> = ghash_key(h).into();
            ghash.hash(ciphertext);
            assert_eq!(ghash.result().encode_hex(), intermediate);
            ghash.hash_lengths(0, 16);
            assert_eq!(ghash.result().encode_hex(), hash);
        }
        {
            // Test Case 3
            let h = M128i::from_hex("b83b533708bf535d0aa6e52980d53b78").unwrap();
            let ciphertext = [
                M128i::from_hex("42831ec2217774244b7221b784d0d49c").unwrap(),
                M128i::from_hex("e3aa212f2c02a4e035c17e2329aca12e").unwrap(),
                M128i::from_hex("21d514b25466931c7d8f6a5aac84aa05").unwrap(),
                M128i::from_hex("1ba30b396a0aac973d58e091473f5985").unwrap(),
            ];
            let intermediate = [
                "59ed3f2bb1a0aaa07c9f56c6a504647b",
                "b714c9048389afd9f9bc5c1d4378e052",
                "47400c6577b1ee8d8f40b2721e86ff10",
                "4796cf49464704b5dd91f159bb1b7f95",
            ];
            let hash = "7f1b32b81b820d02614f8895ac1d4eac";
            let mut ghash: GhashState<1> = ghash_key(h).into();
            for i in 0..ciphertext.len() {
                ghash.hash(ciphertext[i]);
                assert_eq!(ghash.result().encode_hex(), intermediate[i]);
            }
            ghash.hash_lengths(0, 16 * ciphertext.len());
            assert_eq!(ghash.result().encode_hex(), hash);
        }
    }
}
