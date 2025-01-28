// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use crate::ffi::reader::Reader;
use crate::ffi::writer::Writer;
use crate::intrinsics::m128i::M128i;
use crate::ops::ArrayOps;

pub const DIGEST_LEN: usize = 32;
pub const STATE_LEN: usize = 64;

const H: [M128i; 2] = [
    M128i::from_u32([
        0x5be0cd19, // h
        0x1f83d9ab, // g
        0xa54ff53a, // d
        0x3c6ef372, // c
    ]),
    M128i::from_u32([
        0x9b05688c, // f
        0x510e527f, // e
        0xbb67ae85, // b
        0x6a09e667, // a
    ]),
];

const K: [M128i; 16] = [
    M128i::from_u32([0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5]),
    M128i::from_u32([0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5]),
    M128i::from_u32([0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3]),
    M128i::from_u32([0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174]),
    M128i::from_u32([0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc]),
    M128i::from_u32([0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da]),
    M128i::from_u32([0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7]),
    M128i::from_u32([0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967]),
    M128i::from_u32([0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13]),
    M128i::from_u32([0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85]),
    M128i::from_u32([0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3]),
    M128i::from_u32([0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070]),
    M128i::from_u32([0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5]),
    M128i::from_u32([0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3]),
    M128i::from_u32([0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208]),
    M128i::from_u32([0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2]),
];

pub struct Sha256 {
    state: [M128i; 2],
    partial: [M128i; 4],
    len: usize,
}
impl Default for Sha256 {
    #[inline]
    fn default() -> Self {
        Self {
            state: H,
            partial: [M128i::ZERO; 4],
            len: 0,
        }
    }
}
impl Sha256 {
    #[inline]
    fn write(&mut self, input: [M128i; 4]) {
        const BYTESWAP32: M128i = M128i::from_u32([
            0x00010203, //
            0x04050607, //
            0x08090a0b, //
            0x0c0d0e0f, //
        ]);

        let mut round = Round::from(self.state);
        let mut schedule = input.map(|x| x.shuffle8(BYTESWAP32));

        // w0
        round.wk(schedule[0].add32(K[0])).sha256roundx2();
        round.next().sha256roundx2();

        // w1
        round.wk(schedule[1].add32(K[1])).sha256roundx2();
        schedule[0] = schedule[0].sha256msg1(schedule[1]);
        round.next().sha256roundx2();

        // w2
        schedule[0] = schedule[0].add32(schedule[3].align::<4>(schedule[2]));
        round.wk(schedule[2].add32(K[2])).sha256roundx2();
        schedule[1] = schedule[1].sha256msg1(schedule[2]);
        round.next().sha256roundx2();

        // w3-w12
        schedule = [schedule[2], schedule[3], schedule[0], schedule[1]];
        #[allow(clippy::needless_range_loop)]
        for i in 3..=12 {
            schedule[2] = schedule[2].sha256msg2(schedule[1]);
            round.wk(schedule[1].add32(K[i])).sha256roundx2();
            schedule[3] = schedule[3].add32(schedule[2].align::<4>(schedule[1]));
            schedule[0] = schedule[0].sha256msg1(schedule[1]);
            round.next().sha256roundx2();
            schedule = [schedule[1], schedule[2], schedule[3], schedule[0]];
        }

        // w13
        schedule[2] = schedule[2].sha256msg2(schedule[1]);
        round.wk(schedule[1].add32(K[13])).sha256roundx2();
        schedule[3] = schedule[3].add32(schedule[2].align::<4>(schedule[1]));
        round.next().sha256roundx2();

        // w14
        round.wk(schedule[2].add32(K[14])).sha256roundx2();
        schedule[3] = schedule[3].sha256msg2(schedule[2]);
        round.next().sha256roundx2();

        // w15
        round.wk(schedule[3].add32(K[15])).sha256roundx2();
        round.next().sha256roundx2();

        round.finish(&mut self.state);
    }
    #[inline]
    pub fn init(&mut self) -> bool {
        *self = Self::default();
        true
    }
    #[inline]
    pub fn update_m128i(&mut self, input: [M128i; 4]) {
        debug_assert_eq!(self.len % STATE_LEN, 0);
        self.len += input.len() * M128i::SIZE;
        self.write(input);
    }
    #[inline]
    pub fn update(&mut self, mut message: Reader) -> bool {
        let partial_len = self.len % STATE_LEN;
        if partial_len > 0 {
            let mut block: [u8; STATE_LEN] = self.partial.ops().to_bytes();
            let len = (STATE_LEN - partial_len).min(message.len());
            unsafe { message.read_bytes(block.as_mut_ptr().add(partial_len), len) };
            self.partial = block.ops().cast();
            self.len += len;
            if self.len % STATE_LEN == 0 {
                self.write(self.partial);
            }
        }
        self.len += message.len();
        for block in message.iter::<[M128i; 4]>() {
            self.write(block);
        }
        if !message.is_empty() {
            self.partial = message.remainder::<[M128i; 4]>().unwrap_or_default();
        }
        true
    }
    #[inline]
    pub fn finalize(&mut self) -> bool {
        let remainder_len = self.len % STATE_LEN;
        let mut remainder = match remainder_len {
            0 => [M128i::ZERO; 4],
            _ => self.partial,
        };
        let mut one = [0u8; 16];
        one[remainder_len % 16] = 0x80;
        remainder[remainder_len / 16] ^= one.into();
        if remainder_len >= 56 {
            self.write(remainder);
            remainder = [M128i::ZERO; 4];
        }
        let len = (self.len << 3).to_be_bytes();
        let len: [u8; 16] = [[0u8; 8], len].ops().flatten();
        remainder[3] ^= len.into();

        self.write(remainder);
        let result = self.state.map(|x| x.byte_reverse());
        self.state = [
            result[1].unpacklo64(result[0]),
            result[1].unpackhi64(result[0]),
        ];

        true
    }
    #[inline]
    pub fn digest(&self, mut digest: Writer) -> bool {
        DIGEST_LEN == digest.write(self.state)
    }
    #[inline]
    pub fn digest_bytes(&self) -> [u8; DIGEST_LEN] {
        let mut digest = [0u8; DIGEST_LEN];
        assert!(self.digest(Writer::from(digest.as_mut_slice())));
        digest
    }
    #[inline]
    pub fn digest_m128i(&self) -> [M128i; 2] {
        self.state
    }
}

trait Sha256Intrinsics {
    fn sha256msg1(self, other: Self) -> Self;
    fn sha256msg2(self, other: Self) -> Self;
    fn ssig0(self) -> Self;
    fn ssig1(self) -> Self;
}
impl Sha256Intrinsics for M128i {
    #[inline]
    fn sha256msg1(self, other: Self) -> Self {
        other.align::<4>(self).ssig0().add32(self)
    }
    #[inline]
    fn sha256msg2(self, other: Self) -> Self {
        let sigma = self.left_byteshift::<8>().add32(other.ssig1());
        other
            .right_byteshift::<8>()
            .blend32::<0b_1100>(sigma)
            .ssig1()
            .add32(self)
    }
    #[inline]
    fn ssig0(self) -> Self {
        self.rotate_right32::<7>() ^ self.rotate_right32::<18>() ^ self.shift_right32::<3>()
    }
    #[inline]
    fn ssig1(self) -> Self {
        self.rotate_right32::<17>() ^ self.rotate_right32::<19>() ^ self.shift_right32::<10>()
    }
}

struct Round {
    round: [M128i; 2],
    wk: M128i,
}
impl From<[M128i; 2]> for Round {
    #[inline]
    fn from(round: [M128i; 2]) -> Self {
        Self {
            round,
            wk: M128i::ZERO,
        }
    }
}
impl Round {
    #[inline]
    fn wk(&mut self, wk: M128i) -> &mut Self {
        self.wk = wk;
        self
    }
    #[inline]
    fn sha256roundx2(&mut self) -> &mut Self {
        self.round = [self.round[1], self.wk.sha256roundx2(self.round)];
        self
    }
    #[inline]
    fn next(&mut self) -> &mut Self {
        self.wk = self.wk.right_byteshift::<8>();
        self
    }
    #[inline]
    fn finish(self, state: &mut [M128i; 2]) {
        state[0] = self.round[0].add32(state[0]);
        state[1] = self.round[1].add32(state[1]);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn sha256(bytes: &[u8]) -> [u8; 32] {
        let mut sha256 = Sha256::default();
        sha256.init();
        sha256.update(bytes.into());
        sha256.finalize();
        sha256.digest_bytes()
    }

    #[test]
    fn sha256msg() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }
        use intrinsics::__m128i::*;
        for _i in 0..128 {
            let a = M128i::random();
            let b = M128i::random();
            assert_eq!(a.sha256msg1(b), unsafe {
                a._mm_sha256msg1_epu32::<M128i>(b)
            });
            assert_eq!(a.sha256msg2(b), unsafe {
                a._mm_sha256msg2_epu32::<M128i>(b)
            });
        }
    }

    #[test]
    fn empty() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }

        assert_eq!(
            hex::encode(sha256(&[])),
            "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
        );
    }

    #[test]
    fn fips() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }
        // https://csrc.nist.gov/files/pubs/fips/180-2/final/docs/fips180-2.pdf
        assert_eq!(
            hex::encode(sha256(b"abc")),
            "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
        );
        assert_eq!(
            hex::encode(sha256(
                b"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
            )),
            "248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167f6ecedd419db06c1"
        );
        assert_eq!(
            hex::encode(sha256(&[b'a'; 1_000_000])),
            "cdc76e5c9914fb9281a1c7e284d73e67f1809a48a497200e046d39ccc7112cd0"
        );
    }

    #[test]
    fn partial_update() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }
        {
            let mut sha256 = Sha256::default();
            assert!(sha256.update(b"abc".as_slice().into()));
            assert!(sha256.finalize());
            assert_eq!(
                hex::encode(sha256.digest_bytes()),
                "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
            );
        }
        {
            let mut sha256 = Sha256::default();
            for &byte in b"abc" {
                assert!(sha256.update([byte].as_slice().into()));
            }
            assert!(sha256.finalize());
            assert_eq!(
                hex::encode(sha256.digest_bytes()),
                "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
            );
        }
        for _i in 0..128 {
            const LEN_RANGE: usize = 1 << 10;
            let len = random::usize() % LEN_RANGE + LEN_RANGE;
            let msg = random::vec(len);
            assert_eq!(
                sha256(&msg),
                {
                    let mut sha256 = Sha256::default();
                    let mut msg = msg.as_slice();
                    while !msg.is_empty() {
                        let partial_len = (random::usize() % msg.len()) + 1;
                        sha256.update((&msg[..partial_len]).into());
                        msg = &msg[partial_len..];
                    }
                    sha256.finalize();
                    sha256.digest_bytes()
                },
                "{len}"
            );
        }
    }

    #[test]
    fn compare() {
        if !cpuid::SHA_NI.is_supported() {
            return;
        }
        use sha2::Digest;
        for len in 0..1024 {
            let msg = random::vec(len);
            let mut hasher = sha2::Sha256::default();
            hasher.update(&msg);
            assert_eq!(sha256(&msg), hasher.finalize().as_slice(), "{len}");
        }
        for _i in 0..128 {
            const LEN_RANGE: usize = 1 << 10;
            let len = random::usize() % LEN_RANGE + LEN_RANGE;
            let msg = random::vec(len);
            let mut hasher = sha2::Sha256::default();
            hasher.update(&msg);
            assert_eq!(sha256(&msg), hasher.finalize().as_slice(), "{len}");
        }
    }
}
