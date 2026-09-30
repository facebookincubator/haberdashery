// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use intrinsics_x86_64::__m128i;
use intrinsics_x86_64::__m256i;

use crate::io::ReadWriter;

const BLOCK: usize = 16;
/// Six blocks per bulk pass, matching the Skylake-X register schedule.
const LANES: usize = 6;
const GHASH_BULK_BYTES: usize = LANES * BLOCK;
/// Eight blocks per AAD GHASH pass; H^7 and H^8 are derived per call.
const WIDE_LANES: usize = 8;
const GHASH_WIDE_BYTES: usize = WIDE_LANES * BLOCK;
pub(crate) const MAX_AAD_BYTES: usize = (1 << 61) - 1;
pub(crate) const MAX_CRYPT_BYTES: usize = (1 << 36) - 32;

#[inline]
pub(crate) fn lengths_are_valid(aad_len: usize, data_len: usize) -> bool {
    aad_len <= MAX_AAD_BYTES && data_len <= MAX_CRYPT_BYTES
}

#[repr(C, align(16))]
pub struct Aes128Gcm {
    rk: [__m128i; 11],
    hash_powers: HashPowers,
}

#[repr(C)]
struct HashPowers {
    /// `powers[0] = H`, ..., `powers[5] = H^6`.
    powers: [__m128i; LANES],
}

impl HashPowers {
    fn h(&self) -> __m128i {
        self.powers[0]
    }
}

impl Aes128Gcm {
    pub(crate) fn new(key: &[u8; 16]) -> Self {
        unsafe {
            let mut rk = [__m128i::ZERO; 11];
            aes128_expand_key(key, &mut rk);
            let h = prepare_h_for_pclmulqdq(__m128i::ZERO.aes128ecb(&rk));
            let hash_powers = precompute_hash_powers(h);
            Self { rk, hash_powers }
        }
    }

    pub(crate) fn encrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        mut inout: ReadWriter,
        tag_out: &mut [u8; 16],
    ) -> bool {
        if !lengths_are_valid(aad.len(), inout.len()) {
            return false;
        }
        let plaintext_len = inout.len();
        unsafe {
            let j0 = compute_j0(nonce, &self.hash_powers);
            let ectr0 = j0.aes128ecb(&self.rk);
            let mut ctr = inc32_be(j0);
            let h = self.hash_powers.h();
            let mut acc = ghash_bytes_reflected(aad, &self.hash_powers);

            // ── Bulk: six XMM lanes, with AES for the current chunk
            // interleaved with GHASH of the previous ciphertext chunk. ──
            let mut previous_ciphertext = core::ptr::null();
            if inout.len() >= GHASH_BULK_BYTES {
                encrypt_96_no_ghash(&inout, &mut ctr, &self.rk);
                previous_ciphertext = inout.writer_ptr();
                inout.advance(GHASH_BULK_BYTES);
            }
            while inout.len() >= GHASH_BULK_BYTES {
                acc = encrypt_interleaved_96(
                    &inout,
                    previous_ciphertext,
                    &mut ctr,
                    &self.rk,
                    &self.hash_powers,
                    acc,
                );
                previous_ciphertext = inout.writer_ptr();
                inout.advance(GHASH_BULK_BYTES);
            }
            if !previous_ciphertext.is_null() {
                acc = ghash_xmm_x6(
                    acc,
                    read_reflected_xmm_x6(previous_ciphertext),
                    &self.hash_powers,
                );
            }

            // ── Tail: block-by-block encrypt + GHASH. ──
            while inout.len() >= BLOCK {
                let ciphertext = inout.read_xmm() ^ ctr.aes128ecb(&self.rk);
                inout.write_xmm(ciphertext);
                acc = gf128_mul(acc ^ ciphertext.bswap128(), h);
                ctr = inc32_be(ctr);
                inout.advance(BLOCK);
            }

            if inout.len() != 0 {
                let ciphertext = inout.read_xmm_partial() ^ ctr.aes128ecb(&self.rk);
                inout.write_xmm_partial(ciphertext);
                acc = gf128_mul(acc ^ zero_high_bytes(ciphertext, inout.len()).bswap128(), h);
            }

            let lengths = __m128i::_mm_set_epi64x(
                (aad.len() as u64 * 8) as i64,
                (plaintext_len as u64 * 8) as i64,
            );
            let tag = gf128_mul(acc ^ lengths, h).bswap128() ^ ectr0;
            tag._mm_storeu_si128(tag_out.as_mut_ptr());
        }
        true
    }

    pub(crate) fn decrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        mut inout: ReadWriter,
        tag: &[u8; 16],
    ) -> bool {
        if !lengths_are_valid(aad.len(), inout.len()) {
            return false;
        }
        let ciphertext_len = inout.len();
        unsafe {
            let j0 = compute_j0(nonce, &self.hash_powers);
            let ectr0 = j0.aes128ecb(&self.rk);
            let mut ctr = inc32_be(j0);
            let h = self.hash_powers.h();
            let mut acc = ghash_bytes_reflected(aad, &self.hash_powers);

            // ── Bulk: six XMM lanes with interleaved AES-CTR + GHASH. ──
            while inout.len() >= GHASH_BULK_BYTES {
                acc = decrypt_interleaved_96(&inout, &mut ctr, &self.rk, &self.hash_powers, acc);
                inout.advance(GHASH_BULK_BYTES);
            }

            // ── Tail: block-by-block GHASH + decrypt. ──
            while inout.len() >= BLOCK {
                let ciphertext = inout.read_xmm();
                acc = gf128_mul(acc ^ ciphertext.bswap128(), h);
                inout.write_xmm(ciphertext ^ ctr.aes128ecb(&self.rk));
                ctr = inc32_be(ctr);
                inout.advance(BLOCK);
            }

            if inout.len() != 0 {
                let ciphertext = inout.read_xmm_partial();
                acc = gf128_mul(acc ^ ciphertext.bswap128(), h);
                inout.write_xmm_partial(ciphertext ^ ctr.aes128ecb(&self.rk));
            }

            let lengths = __m128i::_mm_set_epi64x(
                (aad.len() as u64 * 8) as i64,
                (ciphertext_len as u64 * 8) as i64,
            );
            let expected = gf128_mul(acc ^ lengths, h).bswap128() ^ ectr0;
            let supplied = __m128i::_mm_loadu_si128(tag.as_ptr());
            (expected ^ supplied)._mm_testz_si128(expected ^ supplied) != 0
        }
    }
}

unsafe fn aes128_expand_key(key: &[u8; 16], rk: &mut [__m128i; 11]) {
    let mut k = unsafe { __m128i::_mm_loadu_si128(key.as_ptr()) };
    rk[0] = k;

    macro_rules! expand {
        ($rcon:expr, $index:expr) => {{
            let t = k
                ._mm_aeskeygenassist_si128::<$rcon>()
                ._mm_shuffle_epi32::<0xff>();
            k = k
                ^ k._mm_slli_si128::<4>()
                ^ k._mm_slli_si128::<8>()
                ^ k._mm_slli_si128::<12>()
                ^ t;
            rk[$index] = k;
        }};
    }

    expand!(0x01, 1);
    expand!(0x02, 2);
    expand!(0x04, 3);
    expand!(0x08, 4);
    expand!(0x10, 5);
    expand!(0x20, 6);
    expand!(0x40, 7);
    expand!(0x80, 8);
    expand!(0x1b, 9);
    expand!(0x36, 10);
}

trait Xmm128 {
    fn aes128ecb(self, rk: &[__m128i; 11]) -> Self;
    fn bswap128(self) -> Self;
}

impl Xmm128 for __m128i {
    #[inline]
    fn aes128ecb(self, rk: &[__m128i; 11]) -> Self {
        let mut state = self ^ rk[0];
        for round_key in &rk[1..10] {
            state = state._mm_aesenc_si128(*round_key);
        }
        state._mm_aesenclast_si128(rk[10])
    }

    #[inline]
    fn bswap128(self) -> Self {
        self._mm_shuffle_epi8(__m128i::_mm_set_epi8(
            0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
        ))
    }
}

fn inc32_be(block: __m128i) -> __m128i {
    let little_endian = block.bswap128();
    little_endian
        ._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, 1))
        .bswap128()
}

fn prepare_h_for_pclmulqdq(h: __m128i) -> __m128i {
    let h = h.bswap128();
    let carry = h._mm_srli_epi64::<63>();
    let shifted = h._mm_slli_epi64::<1>() | carry._mm_slli_si128::<8>();
    let reduction_mask = h._mm_shuffle_epi32::<0xff>()._mm_srai_epi32::<31>();
    shifted ^ (reduction_mask & __m128i::_mm_set_epi64x(0xc200000000000000u64 as i64, 1))
}

fn gf128_reduce(lo: __m128i, hi: __m128i) -> __m128i {
    let polynomial =
        __m128i::_mm_set_epi64x(0xc200000000000000u64 as i64, 0xc200000000000000u64 as i64);
    let folded = lo._mm_clmulepi64_si128::<0x10>(polynomial);
    let lo = lo._mm_shuffle_epi32::<0x4e>() ^ folded;
    let folded = lo._mm_clmulepi64_si128::<0x10>(polynomial);
    lo._mm_shuffle_epi32::<0x4e>() ^ folded ^ hi
}

/// `gf128_reduce(lo ^ mid << 64, hi ^ mid >> 64)` without splitting `mid`.
///
/// The first fold only reads the low qword of its input, which `mid << 64`
/// leaves alone, so all of `mid` can be added after the first swap: its low
/// qword lands where the split would have put it, and its high qword is
/// swapped into place by the second swap. The second fold again reads only
/// the low qword, which already carried `mid`'s low half. This saves the two
/// port-5 byte shifts per reduction.
fn gf128_reduce_with_mid(lo: __m128i, mid: __m128i, hi: __m128i) -> __m128i {
    let polynomial =
        __m128i::_mm_set_epi64x(0xc200000000000000u64 as i64, 0xc200000000000000u64 as i64);
    let folded = lo._mm_clmulepi64_si128::<0x10>(polynomial);
    let lo = lo._mm_shuffle_epi32::<0x4e>() ^ folded ^ mid;
    let folded = lo._mm_clmulepi64_si128::<0x10>(polynomial);
    lo._mm_shuffle_epi32::<0x4e>() ^ folded ^ hi
}

fn gf128_mul(left: __m128i, right: __m128i) -> __m128i {
    let lo = left._mm_clmulepi64_si128::<0x00>(right);
    let hi = left._mm_clmulepi64_si128::<0x11>(right);
    let middle =
        left._mm_clmulepi64_si128::<0x01>(right) ^ left._mm_clmulepi64_si128::<0x10>(right);
    gf128_reduce_with_mid(lo, middle, hi)
}

fn precompute_hash_powers(h: __m128i) -> HashPowers {
    let mut powers = [__m128i::ZERO; LANES];
    powers[0] = h;
    for index in 1..powers.len() {
        powers[index] = if index % 2 == 1 {
            gf128_square(powers[(index - 1) / 2])
        } else {
            gf128_mul(powers[index - 1], h)
        };
    }
    HashPowers { powers }
}

fn gf128_square(value: __m128i) -> __m128i {
    gf128_reduce(
        value._mm_clmulepi64_si128::<0x00>(value),
        value._mm_clmulepi64_si128::<0x11>(value),
    )
}

/// GHASH six reflected blocks with one deferred FOIL reduction.
fn ghash_xmm_x6(
    accumulator: __m128i,
    mut data: [__m128i; LANES],
    hash_powers: &HashPowers,
) -> __m128i {
    data[0] ^= accumulator;

    let mut lo = __m128i::ZERO;
    let mut hi = __m128i::ZERO;
    let mut mid = __m128i::ZERO;

    macro_rules! accumulate {
        ($index:expr) => {{
            let block = data[$index];
            let power = hash_powers.powers[LANES - 1 - $index];
            lo ^= block._mm_clmulepi64_si128::<0x00>(power);
            hi ^= block._mm_clmulepi64_si128::<0x11>(power);
            mid ^= block._mm_clmulepi64_si128::<0x01>(power);
            mid ^= block._mm_clmulepi64_si128::<0x10>(power);
        }};
    }

    accumulate!(0);
    accumulate!(1);
    accumulate!(2);
    accumulate!(3);
    accumulate!(4);
    accumulate!(5);

    gf128_reduce_with_mid(lo, mid, hi)
}

// ── Eight-lane AES-CTR + GHASH bulk path ──────────────────────────

fn build_bulk_ctr_xmms(counter: &mut __m128i) -> [__m128i; LANES] {
    let counter_le = counter.bswap128();
    let increment = |value| counter_le._mm_add_epi32(__m128i::_mm_set_epi32(0, 0, 0, value));
    *counter = increment(LANES as i32).bswap128();
    [
        counter_le.bswap128(),
        increment(1).bswap128(),
        increment(2).bswap128(),
        increment(3).bswap128(),
        increment(4).bswap128(),
        increment(5).bswap128(),
    ]
}

/// One AES round on six independent XMM states.
#[allow(clippy::too_many_arguments)]
unsafe fn aes_round_6x(
    round_key: __m128i,
    a0: &mut __m128i,
    a1: &mut __m128i,
    a2: &mut __m128i,
    a3: &mut __m128i,
    a4: &mut __m128i,
    a5: &mut __m128i,
) {
    core::arch::asm!(
        "vaesenc {round_key}, {a0}, {a0}",
        "vaesenc {round_key}, {a1}, {a1}",
        "vaesenc {round_key}, {a2}, {a2}",
        "vaesenc {round_key}, {a3}, {a3}",
        "vaesenc {round_key}, {a4}, {a4}",
        "vaesenc {round_key}, {a5}, {a5}",
        round_key = in(xmm_reg) round_key.0,
        a0 = inout(xmm_reg) a0.0,
        a1 = inout(xmm_reg) a1.0,
        a2 = inout(xmm_reg) a2.0,
        a3 = inout(xmm_reg) a3.0,
        a4 = inout(xmm_reg) a4.0,
        a5 = inout(xmm_reg) a5.0,
        options(nostack, nomem, att_syntax),
    );
}

#[allow(clippy::too_many_arguments)]
unsafe fn aes_round_6x_ghash_foil(
    round_key: __m128i,
    data: __m128i,
    power: __m128i,
    a0: &mut __m128i,
    a1: &mut __m128i,
    a2: &mut __m128i,
    a3: &mut __m128i,
    a4: &mut __m128i,
    a5: &mut __m128i,
) -> (__m128i, __m128i, __m128i, __m128i) {
    let mut lo = __m128i::ZERO;
    let mut hi = __m128i::ZERO;
    let mut mid = __m128i::ZERO;
    let mut cross = __m128i::ZERO;
    core::arch::asm!(
        "vaesenc {round_key}, {a0}, {a0}",
        "vaesenc {round_key}, {a1}, {a1}",
        "vaesenc {round_key}, {a2}, {a2}",
        "vaesenc {round_key}, {a3}, {a3}",
        "vaesenc {round_key}, {a4}, {a4}",
        "vaesenc {round_key}, {a5}, {a5}",
        "vpclmulqdq $16, {power}, {data}, {mid}",
        "vpclmulqdq $0, {power}, {data}, {lo}",
        "vpclmulqdq $17, {power}, {data}, {hi}",
        "vpclmulqdq $1, {power}, {data}, {cross}",
        round_key = in(xmm_reg) round_key.0,
        data = in(xmm_reg) data.0,
        power = in(xmm_reg) power.0,
        a0 = inout(xmm_reg) a0.0,
        a1 = inout(xmm_reg) a1.0,
        a2 = inout(xmm_reg) a2.0,
        a3 = inout(xmm_reg) a3.0,
        a4 = inout(xmm_reg) a4.0,
        a5 = inout(xmm_reg) a5.0,
        lo = out(xmm_reg) lo.0,
        hi = out(xmm_reg) hi.0,
        mid = out(xmm_reg) mid.0,
        cross = out(xmm_reg) cross.0,
        options(nostack, nomem, att_syntax),
    );
    (lo, hi, mid, cross)
}

unsafe fn encrypt_96_no_ghash(
    inout: &ReadWriter,
    counter: &mut __m128i,
    round_keys: &[__m128i; 11],
) {
    let [mut a0, mut a1, mut a2, mut a3, mut a4, mut a5] = build_bulk_ctr_xmms(counter);
    a0 ^= round_keys[0];
    a1 ^= round_keys[0];
    a2 ^= round_keys[0];
    a3 ^= round_keys[0];
    a4 ^= round_keys[0];
    a5 ^= round_keys[0];

    for round_key in &round_keys[1..10] {
        aes_round_6x(
            *round_key, &mut a0, &mut a1, &mut a2, &mut a3, &mut a4, &mut a5,
        );
    }

    let [p0, p1, p2, p3, p4, p5] = unsafe { inout.read_xmms::<LANES>() };
    let last = round_keys[10];
    unsafe {
        inout.write_xmms([
            a0._mm_aesenclast_si128(last) ^ p0,
            a1._mm_aesenclast_si128(last) ^ p1,
            a2._mm_aesenclast_si128(last) ^ p2,
            a3._mm_aesenclast_si128(last) ^ p3,
            a4._mm_aesenclast_si128(last) ^ p4,
            a5._mm_aesenclast_si128(last) ^ p5,
        ])
    };
}

unsafe fn encrypt_interleaved_96(
    inout: &ReadWriter,
    previous_ciphertext: *const u8,
    counter: &mut __m128i,
    round_keys: &[__m128i; 11],
    hash_powers: &HashPowers,
    accumulator: __m128i,
) -> __m128i {
    let [mut a0, mut a1, mut a2, mut a3, mut a4, mut a5] = build_bulk_ctr_xmms(counter);
    a0 ^= round_keys[0];
    a1 ^= round_keys[0];
    a2 ^= round_keys[0];
    a3 ^= round_keys[0];
    a4 ^= round_keys[0];
    a5 ^= round_keys[0];

    let mut data = unsafe { read_reflected_xmm_x6(previous_ciphertext) };
    data[0] ^= accumulator;
    let mut lo = __m128i::ZERO;
    let mut hi = __m128i::ZERO;
    let mut mid = __m128i::ZERO;

    macro_rules! aes_ghash_round {
        ($round:expr, $index:expr) => {{
            let (ll, hh, mm, cross) = aes_round_6x_ghash_foil(
                round_keys[$round],
                data[$index],
                hash_powers.powers[LANES - 1 - $index],
                &mut a0,
                &mut a1,
                &mut a2,
                &mut a3,
                &mut a4,
                &mut a5,
            );
            lo ^= ll;
            hi ^= hh;
            // The two FOIL cross terms fold into mid with one ternlog.
            mid ^= mm ^ cross;
        }};
    }

    // Match haberdashery's Skylake-X RoundState schedule: one pure AES
    // round, five AES+CLMUL rounds, one pure round, one AES+CLMUL round,
    // and one final pure round before AESENCLAST.
    aes_round_6x(
        round_keys[1],
        &mut a0,
        &mut a1,
        &mut a2,
        &mut a3,
        &mut a4,
        &mut a5,
    );
    aes_ghash_round!(2, 0);
    aes_ghash_round!(3, 1);
    aes_ghash_round!(4, 2);
    aes_ghash_round!(5, 3);
    aes_ghash_round!(6, 4);
    aes_round_6x(
        round_keys[7],
        &mut a0,
        &mut a1,
        &mut a2,
        &mut a3,
        &mut a4,
        &mut a5,
    );
    aes_ghash_round!(8, 5);
    aes_round_6x(
        round_keys[9],
        &mut a0,
        &mut a1,
        &mut a2,
        &mut a3,
        &mut a4,
        &mut a5,
    );

    let [p0, p1, p2, p3, p4, p5] = unsafe { inout.read_xmms::<LANES>() };
    let last = round_keys[10];
    unsafe {
        inout.write_xmms([
            a0._mm_aesenclast_si128(last) ^ p0,
            a1._mm_aesenclast_si128(last) ^ p1,
            a2._mm_aesenclast_si128(last) ^ p2,
            a3._mm_aesenclast_si128(last) ^ p3,
            a4._mm_aesenclast_si128(last) ^ p4,
            a5._mm_aesenclast_si128(last) ^ p5,
        ])
    };

    gf128_reduce_with_mid(lo, mid, hi)
}

unsafe fn decrypt_interleaved_96(
    inout: &ReadWriter,
    counter: &mut __m128i,
    round_keys: &[__m128i; 11],
    hash_powers: &HashPowers,
    accumulator: __m128i,
) -> __m128i {
    let [mut a0, mut a1, mut a2, mut a3, mut a4, mut a5] = build_bulk_ctr_xmms(counter);
    a0 ^= round_keys[0];
    a1 ^= round_keys[0];
    a2 ^= round_keys[0];
    a3 ^= round_keys[0];
    a4 ^= round_keys[0];
    a5 ^= round_keys[0];

    let ciphertext = unsafe { inout.read_xmms::<LANES>() };
    let mut data = ciphertext.map(Xmm128::bswap128);
    data[0] ^= accumulator;
    let mut lo = __m128i::ZERO;
    let mut hi = __m128i::ZERO;
    let mut mid = __m128i::ZERO;

    macro_rules! aes_ghash_round {
        ($round:expr, $index:expr) => {{
            let (ll, hh, mm, cross) = aes_round_6x_ghash_foil(
                round_keys[$round],
                data[$index],
                hash_powers.powers[LANES - 1 - $index],
                &mut a0,
                &mut a1,
                &mut a2,
                &mut a3,
                &mut a4,
                &mut a5,
            );
            lo ^= ll;
            hi ^= hh;
            // The two FOIL cross terms fold into mid with one ternlog.
            mid ^= mm ^ cross;
        }};
    }

    aes_round_6x(
        round_keys[1],
        &mut a0,
        &mut a1,
        &mut a2,
        &mut a3,
        &mut a4,
        &mut a5,
    );
    aes_ghash_round!(2, 0);
    aes_ghash_round!(3, 1);
    aes_ghash_round!(4, 2);
    aes_ghash_round!(5, 3);
    aes_ghash_round!(6, 4);
    aes_round_6x(
        round_keys[7],
        &mut a0,
        &mut a1,
        &mut a2,
        &mut a3,
        &mut a4,
        &mut a5,
    );
    aes_ghash_round!(8, 5);
    aes_round_6x(
        round_keys[9],
        &mut a0,
        &mut a1,
        &mut a2,
        &mut a3,
        &mut a4,
        &mut a5,
    );

    let [c0, c1, c2, c3, c4, c5] = ciphertext;
    let last = round_keys[10];
    unsafe {
        inout.write_xmms([
            a0._mm_aesenclast_si128(last) ^ c0,
            a1._mm_aesenclast_si128(last) ^ c1,
            a2._mm_aesenclast_si128(last) ^ c2,
            a3._mm_aesenclast_si128(last) ^ c3,
            a4._mm_aesenclast_si128(last) ^ c4,
            a5._mm_aesenclast_si128(last) ^ c5,
        ])
    };

    gf128_reduce_with_mid(lo, mid, hi)
}

unsafe fn read_reflected_xmm_x6(data: *const u8) -> [__m128i; LANES] {
    core::array::from_fn(|index| unsafe {
        __m128i::_mm_loadu_si128(data.add(index * BLOCK)).bswap128()
    })
}

// ── Eight-lane Karatsuba GHASH for AAD ────────────────────────────

/// Per-call key material for `ghash_karatsuba_x8`.
#[repr(C, align(32))]
struct KaratsubaKeys {
    /// `powers[i] = H^(i + 1)`.
    powers: [__m128i; WIDE_LANES],
    /// Karatsuba folds `hi(H^k) ^ lo(H^k)`, two per register to keep every
    /// key in a register in the hash loop: the low qword of `folds[i]` is
    /// the fold of `powers[2 * i]`, the high qword that of `powers[2 * i + 1]`.
    folds: [__m128i; WIDE_LANES / 2],
}

impl KaratsubaKeys {
    /// `data`'s low qword times the fold of `powers[index]`.
    fn fold_product(&self, data: __m128i, index: usize) -> __m128i {
        let folds = self.folds[index / 2];
        if index % 2 == 0 {
            data._mm_clmulepi64_si128::<0x00>(folds)
        } else {
            data._mm_clmulepi64_si128::<0x10>(folds)
        }
    }
}

fn karatsuba_keys(hash_powers: &HashPowers) -> KaratsubaKeys {
    let p = &hash_powers.powers;
    let powers = [
        p[0],
        p[1],
        p[2],
        p[3],
        p[4],
        p[5],
        gf128_mul(p[5], p[0]),
        gf128_square(p[3]),
    ];
    // Each fold fills both qwords, so a masked byte move packs a pair.
    let fold = |power: __m128i| power ^ power._mm_shuffle_epi32::<0x4e>();
    let folds = core::array::from_fn(|index| {
        fold(powers[2 * index])._mm_mask_mov_epi8(0xff00, fold(powers[2 * index + 1]))
    });
    KaratsubaKeys { powers, folds }
}

/// Byte-reversed blocks of one eight-block pass, plus room for the 16-byte
/// high-half load of the last block.
#[repr(C, align(32))]
struct SpillSlot([u8; GHASH_WIDE_BYTES + 32]);

/// Passes in flight between spilling and hashing, plus the one being filled.
const SPILL_SLOTS: usize = 3;

/// Makes LLVM assume `slot` is read and written here, so the spill stores
/// really happen and the later loads really load, instead of being forwarded
/// in registers.
unsafe fn spill_barrier(slot: *mut SpillSlot) {
    unsafe { core::arch::asm!("/* {0} */", in(reg) slot, options(nostack, preserves_flags)) };
}

/// Byte-reverse eight blocks two at a time with a 256-bit VPSHUFB and spill
/// them to `slot`.
///
/// Skylake-X executes PCLMULQDQ and every shuffle on port 5 only. Reading the
/// blocks back from memory gets the odd blocks and each block's high qword
/// (for the Karatsuba fold) through the load ports instead of port-5
/// extracts and unpacks.
unsafe fn spill_reflected_x8(data: *const u8, slot: *mut SpillSlot, reverse: __m256i) {
    let out = slot.cast::<u8>();
    for index in 0..4 {
        unsafe {
            __m256i::_mm256_loadu_si256(data.add(32 * index))
                ._mm256_shuffle_epi8(reverse)
                ._mm256_storeu_si256(out.add(32 * index));
        }
    }
    unsafe { spill_barrier(slot) };
}

/// GHASH the eight spilled blocks in `slot` with Karatsuba multiplication
/// and one reduction.
unsafe fn ghash_spilled_x8(
    accumulator: __m128i,
    slot: *const SpillSlot,
    keys: &KaratsubaKeys,
) -> __m128i {
    let spilled = slot.cast::<u8>();
    // The high qword of block `index` is the low qword of the 16 bytes at
    // offset 8; only low qwords reach the fold multiplies.
    let block = |index: usize| unsafe { __m128i::_mm_loadu_si128(spilled.add(BLOCK * index)) };
    let shifted =
        |index: usize| unsafe { __m128i::_mm_loadu_si128(spilled.add(BLOCK * index + 8)) };

    let mut lo = __m128i::ZERO;
    let mut hi = __m128i::ZERO;
    let mut mid = __m128i::ZERO;
    for index in (1..WIDE_LANES).rev() {
        let data = block(index);
        let power = keys.powers[WIDE_LANES - 1 - index];
        lo ^= data._mm_clmulepi64_si128::<0x00>(power);
        hi ^= data._mm_clmulepi64_si128::<0x11>(power);
        mid ^= keys.fold_product(data ^ shifted(index), WIDE_LANES - 1 - index);
    }
    // Block 0 carries the accumulator, so it goes last.
    let data = accumulator ^ block(0);
    let power = keys.powers[WIDE_LANES - 1];
    lo ^= data._mm_clmulepi64_si128::<0x00>(power);
    hi ^= data._mm_clmulepi64_si128::<0x11>(power);
    mid ^= keys.fold_product(data ^ data._mm_shuffle_epi32::<0x4e>(), WIDE_LANES - 1);

    gf128_reduce_with_mid(lo, mid ^ lo ^ hi, hi)
}

unsafe fn ghash_bytes_reflected(mut data: &[u8], hash_powers: &HashPowers) -> __m128i {
    let mut accumulator = __m128i::ZERO;
    let passes = data.len() / GHASH_WIDE_BYTES;
    if passes > 0 {
        let keys = karatsuba_keys(hash_powers);
        let reverse = __m256i::_mm256_broadcastsi128_si256(__m128i::_mm_set_epi8(
            0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
        ));
        // Software-pipelined: pass `i + 2` is spilled while pass `i` is
        // hashed, so reloads find their stores long retired.
        let mut ring = core::mem::MaybeUninit::<[SpillSlot; SPILL_SLOTS]>::uninit();
        let ring = ring.as_mut_ptr().cast::<SpillSlot>();
        // Three plain pointers rather than a rotated array: LLVM keeps the
        // array on the stack and reloads it across the rotation with a load
        // that cannot forward from the pointer stores.
        let (mut hashing, mut waiting, mut filling) = unsafe { (ring, ring.add(1), ring.add(2)) };
        let mut source = data.as_ptr();
        unsafe {
            spill_reflected_x8(source, hashing, reverse);
            if passes > 1 {
                spill_reflected_x8(source.add(GHASH_WIDE_BYTES), waiting, reverse);
            }
            source = source.add(2 * GHASH_WIDE_BYTES);
        }
        for _ in 2..passes {
            unsafe {
                spill_reflected_x8(source, filling, reverse);
                source = source.add(GHASH_WIDE_BYTES);
                accumulator = ghash_spilled_x8(accumulator, hashing, &keys);
            }
            (hashing, waiting, filling) = (waiting, filling, hashing);
        }
        accumulator = unsafe { ghash_spilled_x8(accumulator, hashing, &keys) };
        if passes > 1 {
            accumulator = unsafe { ghash_spilled_x8(accumulator, waiting, &keys) };
        }
        data = &data[GHASH_WIDE_BYTES * passes..];
    }
    while data.len() >= GHASH_BULK_BYTES {
        let blocks = unsafe { read_reflected_xmm_x6(data.as_ptr()) };
        accumulator = ghash_xmm_x6(accumulator, blocks, hash_powers);
        data = &data[GHASH_BULK_BYTES..];
    }

    let h = hash_powers.h();
    while data.len() >= BLOCK {
        let block = unsafe { __m128i::_mm_loadu_si128(data.as_ptr()) };
        accumulator = gf128_mul(accumulator ^ block.bswap128(), h);
        data = &data[BLOCK..];
    }
    if !data.is_empty() {
        let mask = (1u16 << data.len()) - 1;
        let block = unsafe { __m128i::ZERO._mm_mask_loadu_epi8(mask, data.as_ptr()) };
        accumulator = gf128_mul(accumulator ^ block.bswap128(), h);
    }
    accumulator
}

unsafe fn compute_j0(nonce: &[u8], hash_powers: &HashPowers) -> __m128i {
    let h = hash_powers.h();
    if nonce.len() == 12 {
        let mut j0 = [0u8; 16];
        j0[..12].copy_from_slice(nonce);
        j0[15] = 1;
        unsafe { __m128i::_mm_loadu_si128(j0.as_ptr()) }
    } else {
        let accumulator = unsafe { ghash_bytes_reflected(nonce, hash_powers) };
        let lengths = __m128i::_mm_set_epi64x(0, (nonce.len() as u64 * 8) as i64);
        gf128_mul(accumulator ^ lengths, h).bswap128()
    }
}

unsafe fn zero_high_bytes(value: __m128i, length: usize) -> __m128i {
    debug_assert!(length < BLOCK);
    __m128i::ZERO._mm_mask_mov_epi8((1u16 << length) - 1, value)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn gcm_length_limits() {
        assert!(lengths_are_valid(MAX_AAD_BYTES, MAX_CRYPT_BYTES));
        assert!(!lengths_are_valid(MAX_AAD_BYTES + 1, 0));
        assert!(!lengths_are_valid(0, MAX_CRYPT_BYTES + 1));
    }

    fn encrypt(key: [u8; 16], nonce: &[u8], plaintext: &[u8]) -> (Vec<u8>, [u8; 16]) {
        let gcm = Aes128Gcm::new(&key);
        let mut ciphertext = vec![0; plaintext.len()];
        let mut tag = [0; 16];
        let inout = unsafe {
            ReadWriter::from_ptrs(
                plaintext.as_ptr(),
                plaintext.len(),
                ciphertext.as_mut_ptr(),
                ciphertext.len(),
            )
            .unwrap()
        };
        assert!(gcm.encrypt(nonce, &[], inout, &mut tag));
        (ciphertext, tag)
    }

    #[test]
    fn nist_empty_plaintext() {
        if !target_support_x86::is_supported() {
            return;
        }
        let (ciphertext, tag) = encrypt([0; 16], &[0; 12], &[]);
        assert!(ciphertext.is_empty());
        assert_eq!(&tag, hex("58e2fccefa7e3061367f1d57a4e7455a").as_slice());
    }

    #[test]
    fn nist_one_block() {
        if !target_support_x86::is_supported() {
            return;
        }
        let (ciphertext, tag) = encrypt([0; 16], &[0; 12], &[0; 16]);
        assert_eq!(ciphertext, hex("0388dace60b6a392f328c2b971b2fe78"));
        assert_eq!(&tag, hex("ab6e47d42cec13bdf53a67b21257bddf").as_slice());
    }

    #[test]
    fn six_lane_ghash_matches_scalar_chain() {
        if !target_support_x86::is_supported() {
            return;
        }

        let gcm = Aes128Gcm::new(&[0x42; 16]);
        let data: Vec<u8> = (0u8..GHASH_BULK_BYTES as u8).collect();
        unsafe {
            let blocks = read_reflected_xmm_x6(data.as_ptr());
            let accumulator =
                __m128i::_mm_set_epi64x(0x0123456789abcdef, 0xfedcba9876543210u64 as i64);
            let mut expected = accumulator;
            for block in blocks {
                expected = gf128_mul(expected ^ block, gcm.hash_powers.h());
            }
            let actual = ghash_xmm_x6(accumulator, blocks, &gcm.hash_powers);

            let mut expected_bytes = [0; 16];
            let mut actual_bytes = [0; 16];
            expected._mm_storeu_si128(expected_bytes.as_mut_ptr());
            actual._mm_storeu_si128(actual_bytes.as_mut_ptr());
            assert_eq!(actual_bytes, expected_bytes);
        }
    }

    #[test]
    fn reduction_with_mid_matches_split_reduction() {
        if !target_support_x86::is_supported() {
            return;
        }
        let mut state = 0x9e3779b97f4a7c15u64;
        let mut next = || {
            state ^= state << 13;
            state ^= state >> 7;
            state ^= state << 17;
            state as i64
        };
        for _ in 0..10_000 {
            let lo = __m128i::_mm_set_epi64x(next(), next());
            let mid = __m128i::_mm_set_epi64x(next(), next());
            let hi = __m128i::_mm_set_epi64x(next(), next());
            let expected = gf128_reduce(
                lo ^ mid._mm_slli_si128::<8>(),
                hi ^ mid._mm_srli_si128::<8>(),
            );
            let actual = gf128_reduce_with_mid(lo, mid, hi);
            let mut expected_bytes = [0; 16];
            let mut actual_bytes = [0; 16];
            unsafe {
                expected._mm_storeu_si128(expected_bytes.as_mut_ptr());
                actual._mm_storeu_si128(actual_bytes.as_mut_ptr());
            }
            assert_eq!(actual_bytes, expected_bytes);
        }
    }

    #[test]
    fn aad_ghash_matches_scalar_chain_at_every_length() {
        if !target_support_x86::is_supported() {
            return;
        }

        let gcm = Aes128Gcm::new(&[0x42; 16]);
        let h = gcm.hash_powers.h();
        let data: Vec<u8> = (0..520u32).map(|i| (i * 167 + 13) as u8).collect();
        for length in 0..=data.len() {
            let message = &data[..length];
            let mut expected = __m128i::ZERO;
            for chunk in message.chunks(BLOCK) {
                let mut block = [0; BLOCK];
                block[..chunk.len()].copy_from_slice(chunk);
                let block = unsafe { __m128i::_mm_loadu_si128(block.as_ptr()) };
                expected = gf128_mul(expected ^ block.bswap128(), h);
            }
            let actual = unsafe { ghash_bytes_reflected(message, &gcm.hash_powers) };

            let mut expected_bytes = [0; 16];
            let mut actual_bytes = [0; 16];
            unsafe {
                expected._mm_storeu_si128(expected_bytes.as_mut_ptr());
                actual._mm_storeu_si128(actual_bytes.as_mut_ptr());
            }
            assert_eq!(actual_bytes, expected_bytes, "length {length}");
        }
    }

    #[test]
    fn bulk_path_round_trips_various_sizes() {
        if !target_support_x86::is_supported() {
            return;
        }

        let gcm = Aes128Gcm::new(&[0x42; 16]);
        let nonce = [0x01; 12];
        let aad = [0xab; 37];
        for length in [127, 128, 129, 255, 256, 257, 1024, 4096] {
            let plaintext: Vec<u8> = (0u8..=255).cycle().take(length).collect();
            let mut ciphertext = vec![0; length];
            let mut tag = [0; 16];
            let encrypt_inout = unsafe {
                ReadWriter::from_ptrs(
                    plaintext.as_ptr(),
                    plaintext.len(),
                    ciphertext.as_mut_ptr(),
                    ciphertext.len(),
                )
                .unwrap()
            };
            gcm.encrypt(&nonce, &aad, encrypt_inout, &mut tag);

            let mut decrypted = vec![0; length];
            let decrypt_inout = unsafe {
                ReadWriter::from_ptrs(
                    ciphertext.as_ptr(),
                    ciphertext.len(),
                    decrypted.as_mut_ptr(),
                    decrypted.len(),
                )
                .unwrap()
            };
            assert!(gcm.decrypt(&nonce, &aad, decrypt_inout, &tag));
            assert_eq!(decrypted, plaintext, "length {length}");
        }
    }

    fn hex(input: &str) -> Vec<u8> {
        input
            .as_bytes()
            .chunks_exact(2)
            .map(|pair| {
                let pair = core::str::from_utf8(pair).unwrap();
                u8::from_str_radix(pair, 16).unwrap()
            })
            .collect()
    }
}
