// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

//! AES-128-GCM for Arm Neoverse V2.
//!
//! The same structure as neoversev2/aes256gcm: eight lanes of AES-128
//! counter mode, each bulk iteration fusing the eight AES block encryptions
//! with the GHASH of eight ciphertext blocks against a table of hash-key
//! powers.

use intrinsics_aarch64::uint8x16_t;

pub(crate) const KEY_LEN: usize = 16;
pub(crate) const NONCE_LEN: usize = 12;
pub(crate) const TAG_LEN: usize = 16;
const BLOCK_LEN: usize = 16;
const LANES: usize = 8;
/// Round keys (ten rounds plus the initial key).
const NUM_ROUNDS: usize = 11;
pub(crate) const MAX_AAD_BYTES: usize = (1 << 61) - 1; // 2^64 - 1 bits >= 2^61 - 1 bytes
pub(crate) const MAX_CRYPT_BYTES: usize = (1 << 36) - 32; // 2^39 - 256 bits = 2^36 - 32 bytes

#[inline]
pub(crate) fn lengths_are_valid(aad_len: usize, data_len: usize) -> bool {
    aad_len <= MAX_AAD_BYTES && data_len <= MAX_CRYPT_BYTES
}

/// Multi-instruction helpers built from the one-intrinsic methods of
/// `intrinsics_aarch64::uint8x16_t`.
trait VectorExt: Sized {
    /// Exchanges the two 64-bit lanes.
    fn swap_lanes64(self) -> Self;
    /// All sixteen bytes in reverse order.
    fn reverse_bytes(self) -> Self;
    /// Carry-less product of the low 64-bit lanes (PMULL).
    fn clmul_lo(self, rhs: Self) -> Self;
    /// Shift left by whole 32-bit words, filling with zeros.
    fn shift_words_left<const WORDS: i32>(self) -> Self;
    /// The last 32-bit word rotated by one byte, in every word.
    fn rotate_last_word_and_splat(self) -> Self;
    /// Keeps the first `len` bytes and zeros the rest.
    fn mask_bytes(self, len: usize) -> Self;
    /// Equality without an early exit.
    fn crypto_equals(self, rhs: Self) -> bool;
    /// Loads `len` bytes, zero-filling the rest.
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self;
    /// Stores the first `len` bytes.
    unsafe fn store_partial(self, ptr: *mut u8, len: usize);
}

impl VectorExt for uint8x16_t {
    #[inline]
    fn swap_lanes64(self) -> Self {
        self.vextq_u64::<1>(self)
    }

    #[inline]
    fn reverse_bytes(self) -> Self {
        self.vrev64q_u8().swap_lanes64()
    }

    #[inline]
    fn clmul_lo(self, rhs: Self) -> Self {
        uint8x16_t::vmull_p64(self.vgetq_lane_p64::<0>(), rhs.vgetq_lane_p64::<0>())
    }

    #[inline]
    fn shift_words_left<const WORDS: i32>(self) -> Self {
        debug_assert!((0..=4).contains(&WORDS));
        match WORDS {
            1 => uint8x16_t::ZERO.vextq_u8::<12>(self),
            2 => uint8x16_t::ZERO.vextq_u8::<8>(self),
            3 => uint8x16_t::ZERO.vextq_u8::<4>(self),
            _ => uint8x16_t::ZERO,
        }
    }

    #[inline]
    fn rotate_last_word_and_splat(self) -> Self {
        let words = self.to_bytes();
        uint8x16_t::from_bytes([
            words[13], words[14], words[15], words[12], words[13], words[14], words[15], words[12],
            words[13], words[14], words[15], words[12], words[13], words[14], words[15], words[12],
        ])
    }

    #[inline]
    fn mask_bytes(self, len: usize) -> Self {
        debug_assert!(len <= BLOCK_LEN);
        let mut bytes = self.to_bytes();
        bytes[len..].fill(0);
        uint8x16_t::from_bytes(bytes)
    }

    #[inline]
    fn crypto_equals(self, rhs: Self) -> bool {
        (self ^ rhs).vmaxvq_u8() == 0
    }

    #[inline]
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self {
        debug_assert!((1..BLOCK_LEN).contains(&len));
        let mut bytes = [0u8; BLOCK_LEN];
        unsafe { core::ptr::copy_nonoverlapping(ptr, bytes.as_mut_ptr(), len) };
        uint8x16_t::from_bytes(bytes)
    }

    #[inline]
    unsafe fn store_partial(self, ptr: *mut u8, len: usize) {
        debug_assert!((1..BLOCK_LEN).contains(&len));
        let bytes = self.to_bytes();
        unsafe { core::ptr::copy_nonoverlapping(bytes.as_ptr(), ptr, len) };
    }
}

/// A read cursor over the associated data.
pub(crate) struct Reader {
    ptr: *const u8,
    len: usize,
}

impl Reader {
    /// The slice must stay valid for the cursor's lifetime.
    #[inline]
    pub(crate) fn new(bytes: &[u8]) -> Self {
        Self {
            ptr: bytes.as_ptr(),
            len: bytes.len(),
        }
    }

    #[inline]
    unsafe fn read_block(&mut self) -> uint8x16_t {
        debug_assert!(self.len >= BLOCK_LEN);
        let block = unsafe { uint8x16_t::vld1q_u8(self.ptr) };
        unsafe { self.advance(BLOCK_LEN) };
        block
    }

    #[inline]
    unsafe fn read_blocks(&mut self) -> [uint8x16_t; LANES] {
        debug_assert!(self.len >= LANES * BLOCK_LEN);
        let blocks = core::array::from_fn(|index| unsafe {
            uint8x16_t::vld1q_u8(self.ptr.add(index * BLOCK_LEN))
        });
        unsafe { self.advance(LANES * BLOCK_LEN) };
        blocks
    }

    #[inline]
    unsafe fn advance(&mut self, bytes: usize) {
        debug_assert!(bytes <= self.len);
        self.ptr = unsafe { self.ptr.add(bytes) };
        self.len -= bytes;
    }
}

/// A paired cursor over equally sized readable and writable buffers.
pub(crate) struct ReadWriter {
    reader: *const u8,
    writer: *mut u8,
    len: usize,
}

impl ReadWriter {
    /// The pointers must remain valid for their supplied lengths for the cursor's lifetime.
    pub(crate) unsafe fn from_ptrs(
        reader: *const u8,
        reader_len: usize,
        writer: *mut u8,
        writer_len: usize,
    ) -> Option<Self> {
        if reader_len != writer_len || (reader_len != 0 && (reader.is_null() || writer.is_null())) {
            return None;
        }
        Some(Self {
            reader,
            writer,
            len: reader_len,
        })
    }

    #[inline]
    pub(crate) fn len(&self) -> usize {
        self.len
    }

    #[inline]
    unsafe fn read_block(&self) -> uint8x16_t {
        debug_assert!(self.len >= BLOCK_LEN);
        unsafe { uint8x16_t::vld1q_u8(self.reader) }
    }

    #[inline]
    unsafe fn write_block(&self, value: uint8x16_t) {
        debug_assert!(self.len >= BLOCK_LEN);
        unsafe { value.vst1q_u8(self.writer) }
    }

    #[inline]
    unsafe fn read_blocks(&self) -> [uint8x16_t; LANES] {
        debug_assert!(self.len >= LANES * BLOCK_LEN);
        core::array::from_fn(|index| unsafe {
            uint8x16_t::vld1q_u8(self.reader.add(index * BLOCK_LEN))
        })
    }

    #[inline]
    unsafe fn write_blocks(&self, blocks: [uint8x16_t; LANES]) {
        debug_assert!(self.len >= LANES * BLOCK_LEN);
        for (index, block) in blocks.into_iter().enumerate() {
            unsafe { block.vst1q_u8(self.writer.add(index * BLOCK_LEN)) };
        }
    }

    #[inline]
    unsafe fn read_partial(&self) -> uint8x16_t {
        debug_assert!((1..BLOCK_LEN).contains(&self.len));
        unsafe { uint8x16_t::load_partial(self.reader, self.len) }
    }

    #[inline]
    unsafe fn write_partial(&self, value: uint8x16_t) {
        debug_assert!((1..BLOCK_LEN).contains(&self.len));
        unsafe { value.store_partial(self.writer, self.len) };
    }

    #[inline]
    unsafe fn advance(&mut self, bytes: usize) {
        debug_assert!(bytes <= self.len);
        if bytes != 0 {
            unsafe {
                self.reader = self.reader.add(bytes);
                self.writer = self.writer.add(bytes);
            }
        }
        self.len -= bytes;
    }
}

// ── AES-128 ────────────────────────────────────────────────────────────

fn expand_round<const RCON: u8>(previous: uint8x16_t) -> uint8x16_t {
    let prefix = previous
        ^ previous.shift_words_left::<1>()
        ^ previous.shift_words_left::<2>()
        ^ previous.shift_words_left::<3>();
    let subword = previous
        .rotate_last_word_and_splat()
        .vaeseq_u8(uint8x16_t::ZERO)
        .vdupq_laneq_u32::<0>();
    prefix ^ subword ^ uint8x16_t::from_u32([RCON as u32; 4])
}

fn expand_key(key: &[u8; KEY_LEN]) -> [uint8x16_t; NUM_ROUNDS] {
    let mut keys = [uint8x16_t::ZERO; NUM_ROUNDS];
    keys[0] = uint8x16_t::from_bytes(*key);
    keys[1] = expand_round::<0x01>(keys[0]);
    keys[2] = expand_round::<0x02>(keys[1]);
    keys[3] = expand_round::<0x04>(keys[2]);
    keys[4] = expand_round::<0x08>(keys[3]);
    keys[5] = expand_round::<0x10>(keys[4]);
    keys[6] = expand_round::<0x20>(keys[5]);
    keys[7] = expand_round::<0x40>(keys[6]);
    keys[8] = expand_round::<0x80>(keys[7]);
    keys[9] = expand_round::<0x1b>(keys[8]);
    keys[10] = expand_round::<0x36>(keys[9]);
    keys
}

fn aes_encrypt(mut block: uint8x16_t, keys: &[uint8x16_t; NUM_ROUNDS]) -> uint8x16_t {
    for key in &keys[..NUM_ROUNDS - 2] {
        block = block.vaeseq_u8(*key).vaesmcq_u8();
    }
    block.vaeseq_u8(keys[NUM_ROUNDS - 2]) ^ keys[NUM_ROUNDS - 1]
}

/// One AES round (AESE + AESMC) on eight independent states.
#[inline]
#[transliteral_aarch64::assembly]
fn aesenc8(mut blocks: [uint8x16_t; 8], key: uint8x16_t) -> [uint8x16_t; 8] {
    blocks[0] = blocks[0].vaeseq_u8(key);
    blocks[0] = blocks[0].vaesmcq_u8();
    blocks[1] = blocks[1].vaeseq_u8(key);
    blocks[1] = blocks[1].vaesmcq_u8();
    blocks[2] = blocks[2].vaeseq_u8(key);
    blocks[2] = blocks[2].vaesmcq_u8();
    blocks[3] = blocks[3].vaeseq_u8(key);
    blocks[3] = blocks[3].vaesmcq_u8();
    blocks[4] = blocks[4].vaeseq_u8(key);
    blocks[4] = blocks[4].vaesmcq_u8();
    blocks[5] = blocks[5].vaeseq_u8(key);
    blocks[5] = blocks[5].vaesmcq_u8();
    blocks[6] = blocks[6].vaeseq_u8(key);
    blocks[6] = blocks[6].vaesmcq_u8();
    blocks[7] = blocks[7].vaeseq_u8(key);
    blocks[7] = blocks[7].vaesmcq_u8();
    blocks
}

/// The last two AES rounds (AESE without MixColumns, then the final key).
fn aes_finish8(
    blocks: [uint8x16_t; LANES],
    keys: &[uint8x16_t; NUM_ROUNDS],
) -> [uint8x16_t; LANES] {
    let blocks = blocks.map(|block| block.vaeseq_u8(keys[NUM_ROUNDS - 2]));
    blocks.map(|block| block ^ keys[NUM_ROUNDS - 1])
}

fn aes_encrypt8(
    mut blocks: [uint8x16_t; LANES],
    keys: &[uint8x16_t; NUM_ROUNDS],
) -> [uint8x16_t; LANES] {
    for key in &keys[..NUM_ROUNDS - 2] {
        blocks = aesenc8(blocks, *key);
    }
    aes_finish8(blocks, keys)
}

// ── Counter ────────────────────────────────────────────────────────────

/// The GCM counter block, kept with each 32-bit word byte-reversed so the
/// big-endian block counter increments with a single vector add.
struct Counter(uint8x16_t);

impl Counter {
    #[inline]
    fn new(block: uint8x16_t) -> Self {
        Self(block.vrev32q_u8())
    }

    #[inline]
    fn increment(&mut self) -> uint8x16_t {
        let counter = self.0.vrev32q_u8();
        self.0 = self.0.vaddq_u32(uint8x16_t::from_u32([0, 0, 0, 1]));
        counter
    }

    #[inline]
    fn increment8(&mut self) -> [uint8x16_t; LANES] {
        let mut counters = [self.0.vrev32q_u8(); LANES];
        for (index, counter) in counters.iter_mut().enumerate().skip(1) {
            *counter = self
                .0
                .vaddq_u32(uint8x16_t::from_u32([0, 0, 0, index as u32]))
                .vrev32q_u8();
        }
        self.0 = self
            .0
            .vaddq_u32(uint8x16_t::from_u32([0, 0, 0, LANES as u32]));
        counters
    }
}

// ── GHASH ──────────────────────────────────────────────────────────────

/// An unreduced Karatsuba product: the low, middle, and high 128-bit terms.
#[derive(Copy, Clone, Default)]
struct ClProduct {
    lo: uint8x16_t,
    mid: uint8x16_t,
    hi: uint8x16_t,
}

impl core::ops::BitXorAssign for ClProduct {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        self.lo ^= rhs.lo;
        self.mid ^= rhs.mid;
        self.hi ^= rhs.hi;
    }
}

impl ClProduct {
    #[inline]
    fn reduce_step(target: uint8x16_t) -> uint8x16_t {
        const POLY: u64 = 0xc2_00_00_00_00_00_00_00;
        let [lo, hi] = target.to_u64();
        uint8x16_t::vmull_p64(lo, POLY) ^ uint8x16_t::from_u64([hi, lo])
    }

    #[inline]
    fn reduce(self) -> uint8x16_t {
        let [mid_lo, mid_hi] = self.mid.to_u64();
        let lo = self.lo ^ uint8x16_t::from_u64([0, mid_lo]);
        let hi = self.hi ^ uint8x16_t::from_u64([mid_hi, 0]);
        let reduced = Self::reduce_step(lo);
        let reduced = Self::reduce_step(reduced);
        hi ^ reduced
    }
}

#[inline]
fn clmul(lhs: uint8x16_t, rhs: uint8x16_t) -> ClProduct {
    let swapped = lhs.swap_lanes64();
    ClProduct {
        lo: lhs.clmul_lo(rhs),
        mid: swapped.clmul_lo(rhs) ^ swapped.vmull_high_p64(rhs),
        hi: lhs.vmull_high_p64(rhs),
    }
}

/// `lhs[i] * rhs[LANES - 1 - i]`, summed.
#[inline]
fn clmul8(lhs: &[uint8x16_t; LANES], rhs: &[uint8x16_t; LANES]) -> ClProduct {
    let mut product = clmul(lhs[0], rhs[LANES - 1]);
    for index in 1..LANES {
        product ^= clmul(lhs[index], rhs[LANES - 1 - index]);
    }
    product
}

fn mulx_polyval(value: uint8x16_t) -> uint8x16_t {
    let [lo, hi] = value.to_u64();
    let carry = hi >> 63;
    let mask = 0u64.wrapping_sub(carry);
    uint8x16_t::from_u64([
        (lo << 1) ^ (mask & 1),
        (hi << 1) ^ (lo >> 63) ^ (mask & 0xc2_00_00_00_00_00_00_00),
    ])
}

/// H, H^2, ..., H^8 in POLYVAL form.
fn power_table(hash_key: uint8x16_t) -> [uint8x16_t; LANES] {
    let key = mulx_polyval(hash_key.reverse_bytes());
    let mut table = [key; LANES];
    for index in 1..LANES {
        table[index] = match index % 2 {
            1 => clmul(table[(index - 1) / 2], table[(index - 1) / 2]).reduce(),
            _ => clmul(table[index - 1], key).reduce(),
        };
    }
    table
}

// ── Fused AES and GHASH ────────────────────────────────────────────────

/// AES round `key` on eight states fused with one Karatsuba GHASH term
/// `lhs * rhs`: returns the states and the term's low product, its middle
/// product folded into `mid`, and its high product. `swap` is `rhs` with its
/// 64-bit lanes exchanged.
#[inline]
#[transliteral_aarch64::assembly]
fn aes_ghash_round(
    mut data: [uint8x16_t; 8],
    key: uint8x16_t,
    lhs: uint8x16_t,
    rhs: uint8x16_t,
    swap: uint8x16_t,
    mid: uint8x16_t,
) -> ([uint8x16_t; 8], uint8x16_t, uint8x16_t, uint8x16_t) {
    data[0] = data[0].vaeseq_u8(key);
    data[0] = data[0].vaesmcq_u8();
    data[1] = data[1].vaeseq_u8(key);
    data[1] = data[1].vaesmcq_u8();
    data[2] = data[2].vaeseq_u8(key);
    data[2] = data[2].vaesmcq_u8();
    data[3] = data[3].vaeseq_u8(key);
    data[3] = data[3].vaesmcq_u8();
    data[4] = data[4].vaeseq_u8(key);
    data[4] = data[4].vaesmcq_u8();
    data[5] = data[5].vaeseq_u8(key);
    data[5] = data[5].vaesmcq_u8();
    data[6] = data[6].vaeseq_u8(key);
    data[6] = data[6].vaesmcq_u8();
    data[7] = data[7].vaeseq_u8(key);
    data[7] = data[7].vaesmcq_u8();
    let lo = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), rhs.vgetq_lane_p64::<0>());
    let hi = lhs.vmull_high_p64(rhs);
    let cross0 = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), swap.vgetq_lane_p64::<0>());
    let cross1 = lhs.vmull_high_p64(swap);
    let mid_out = mid.veor3q_u8(cross0, cross1);
    (data, lo, mid_out, hi)
}

/// [`aes_ghash_round`] with the decrypt path's register reuse: the GHASH
/// inputs are overwritten in place, and the high product comes back in
/// `rhs`.
#[inline]
#[transliteral_aarch64::assembly]
fn aes_ghash_round_decrypt(
    mut data: [uint8x16_t; 8],
    key: uint8x16_t,
    mut lhs: uint8x16_t,
    mut rhs: uint8x16_t,
    swap: uint8x16_t,
    mut mid: uint8x16_t,
) -> ([uint8x16_t; 8], uint8x16_t, uint8x16_t, uint8x16_t) {
    data[0] = data[0].vaeseq_u8(key);
    data[0] = data[0].vaesmcq_u8();
    data[1] = data[1].vaeseq_u8(key);
    data[1] = data[1].vaesmcq_u8();
    data[2] = data[2].vaeseq_u8(key);
    data[2] = data[2].vaesmcq_u8();
    data[3] = data[3].vaeseq_u8(key);
    data[3] = data[3].vaesmcq_u8();
    data[4] = data[4].vaeseq_u8(key);
    data[4] = data[4].vaesmcq_u8();
    data[5] = data[5].vaeseq_u8(key);
    data[5] = data[5].vaesmcq_u8();
    data[6] = data[6].vaeseq_u8(key);
    data[6] = data[6].vaesmcq_u8();
    data[7] = data[7].vaeseq_u8(key);
    data[7] = data[7].vaesmcq_u8();
    let lo = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), rhs.vgetq_lane_p64::<0>());
    rhs = lhs.vmull_high_p64(rhs);
    let cross0 = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), swap.vgetq_lane_p64::<0>());
    lhs = lhs.vmull_high_p64(swap);
    mid = mid.veor3q_u8(cross0, lhs);
    (data, lo, mid, rhs)
}

/// [`aes_ghash_round`] for a GHASH input with its 64-bit lanes exchanged
/// (byte-reversed within each lane only): the same four products, paired
/// against `rhs` and `swap` the other way round.
#[inline]
#[transliteral_aarch64::assembly]
fn aes_ghash_round_swapped(
    mut data: [uint8x16_t; 8],
    key: uint8x16_t,
    mut lhs: uint8x16_t,
    rhs: uint8x16_t,
    mut swap: uint8x16_t,
    mut mid: uint8x16_t,
) -> ([uint8x16_t; 8], uint8x16_t, uint8x16_t, uint8x16_t) {
    data[0] = data[0].vaeseq_u8(key);
    data[0] = data[0].vaesmcq_u8();
    data[1] = data[1].vaeseq_u8(key);
    data[1] = data[1].vaesmcq_u8();
    data[2] = data[2].vaeseq_u8(key);
    data[2] = data[2].vaesmcq_u8();
    data[3] = data[3].vaeseq_u8(key);
    data[3] = data[3].vaesmcq_u8();
    data[4] = data[4].vaeseq_u8(key);
    data[4] = data[4].vaesmcq_u8();
    data[5] = data[5].vaeseq_u8(key);
    data[5] = data[5].vaesmcq_u8();
    data[6] = data[6].vaeseq_u8(key);
    data[6] = data[6].vaesmcq_u8();
    data[7] = data[7].vaeseq_u8(key);
    data[7] = data[7].vaesmcq_u8();
    let lo = lhs.vmull_high_p64(swap);
    swap = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), swap.vgetq_lane_p64::<0>());
    let cross0 = uint8x16_t::vmull_p64(lhs.vgetq_lane_p64::<0>(), rhs.vgetq_lane_p64::<0>());
    lhs = lhs.vmull_high_p64(rhs);
    mid = mid.veor3q_u8(cross0, lhs);
    (data, lo, mid, swap)
}

/// Encrypt's bulk iteration: encrypts eight counter blocks while hashing the
/// previous eight ciphertext blocks. The first eight AES rounds each carry
/// one GHASH term, the ninth runs alone, then the final one. Returns the
/// keystream and the new GHASH state.
#[inline]
fn aes_ghash8_encrypt(
    keys: &[uint8x16_t; NUM_ROUNDS],
    counters: [uint8x16_t; LANES],
    ghash: uint8x16_t,
    mut lhs: [uint8x16_t; LANES],
    powers: &[uint8x16_t; LANES],
) -> ([uint8x16_t; LANES], uint8x16_t) {
    lhs[0] ^= ghash.swap_lanes64();
    let mut data = counters;
    let mut product = ClProduct::default();
    for index in 0..LANES {
        let (key, lhs, rhs) = (keys[index], lhs[index], powers[LANES - 1 - index]);
        let swap = rhs.swap_lanes64();
        let (next, lo, mid, hi) = aes_ghash_round_swapped(data, key, lhs, rhs, swap, product.mid);
        data = next;
        product = ClProduct {
            lo: product.lo ^ lo,
            mid,
            hi: product.hi ^ hi,
        };
    }
    for key in &keys[LANES..NUM_ROUNDS - 2] {
        data = aesenc8(data, *key);
    }
    (aes_finish8(data, keys), product.reduce())
}

/// Decrypt's bulk iteration: encrypts eight counter blocks while hashing
/// the eight ciphertext blocks they decrypt, with the same round structure
/// as [`aes_ghash8_encrypt`].
#[inline]
fn aes_ghash8_decrypt(
    keys: &[uint8x16_t; NUM_ROUNDS],
    counters: [uint8x16_t; LANES],
    ghash: uint8x16_t,
    mut lhs: [uint8x16_t; LANES],
    powers: &[uint8x16_t; LANES],
) -> ([uint8x16_t; LANES], uint8x16_t) {
    lhs[0] ^= ghash.swap_lanes64();
    let mut data = counters;
    let mut product = ClProduct::default();
    for index in 0..LANES {
        let term = (index + 1) % LANES;
        let (key, lhs, rhs) = (keys[index], lhs[term], powers[LANES - 1 - term]);
        let swap = rhs.swap_lanes64();
        let (next, lo, mid, hi) = aes_ghash_round_swapped(data, key, lhs, rhs, swap, product.mid);
        data = next;
        product = ClProduct {
            lo: product.lo ^ lo,
            mid,
            hi: product.hi ^ hi,
        };
    }
    for key in &keys[LANES..NUM_ROUNDS - 2] {
        data = aesenc8(data, *key);
    }
    (aes_finish8(data, keys), product.reduce())
}

// ── AES-128-GCM ────────────────────────────────────────────────────────

/// AES-128-GCM context: the expanded key and the hash-key power table.
#[repr(C)]
pub struct Aes128Gcm {
    aes: [uint8x16_t; NUM_ROUNDS],
    powers: [uint8x16_t; LANES],
}

impl Aes128Gcm {
    pub(crate) fn new(key: &[u8; KEY_LEN]) -> Self {
        let aes = expand_key(key);
        let hash_key = aes_encrypt(uint8x16_t::ZERO, &aes);
        Self {
            aes,
            powers: power_table(hash_key),
        }
    }

    /// `ghash * H`, reduced.
    #[inline]
    fn ghash_block(&self, ghash: uint8x16_t, block: uint8x16_t) -> uint8x16_t {
        clmul(self.powers[0], ghash ^ block.reverse_bytes()).reduce()
    }

    /// Returns the tag counter (J0) and the counter for the first data block.
    /// A 96-bit nonce is J0's prefix; any other length is hashed.
    #[inline]
    fn counters(&self, nonce: &[u8]) -> (uint8x16_t, Counter) {
        let j0 = if nonce.len() == NONCE_LEN {
            let mut block = [0u8; BLOCK_LEN];
            block[..NONCE_LEN].copy_from_slice(nonce);
            block[BLOCK_LEN - 1] = 1;
            uint8x16_t::from_bytes(block)
        } else {
            let ghash = self.ghash_aad(Reader::new(nonce));
            let lengths = uint8x16_t::from_u64([nonce.len() as u64 * 8, 0]);
            clmul(self.powers[0], ghash ^ lengths)
                .reduce()
                .reverse_bytes()
        };
        let mut counter = Counter::new(j0);
        let tag_counter = counter.increment();
        (tag_counter, counter)
    }

    #[inline]
    fn ghash_aad(&self, mut aad: Reader) -> uint8x16_t {
        let mut ghash = uint8x16_t::ZERO;
        if aad.len >= LANES * BLOCK_LEN {
            let mut blocks = unsafe { aad.read_blocks() }.map(uint8x16_t::reverse_bytes);
            blocks[0] ^= ghash;
            let mut product = clmul8(&self.powers, &blocks);
            while aad.len >= LANES * BLOCK_LEN {
                ghash = product.reduce();
                let mut blocks = unsafe { aad.read_blocks() }.map(uint8x16_t::reverse_bytes);
                blocks[0] ^= ghash;
                product = clmul8(&self.powers, &blocks);
            }
            ghash = product.reduce();
        }
        while aad.len >= BLOCK_LEN {
            ghash = self.ghash_block(ghash, unsafe { aad.read_block() });
        }
        if aad.len != 0 {
            ghash = self.ghash_block(ghash, unsafe { uint8x16_t::load_partial(aad.ptr, aad.len) });
        }
        ghash
    }

    #[inline]
    fn tag(
        &self,
        ghash: uint8x16_t,
        tag_counter: uint8x16_t,
        aad_len: usize,
        data_len: usize,
    ) -> uint8x16_t {
        let lengths = uint8x16_t::from_u64([data_len as u64 * 8, aad_len as u64 * 8]);
        let ghash = clmul(self.powers[0], ghash ^ lengths).reduce();
        aes_encrypt(tag_counter, &self.aes) ^ ghash.reverse_bytes()
    }

    pub(crate) fn encrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        mut data: ReadWriter,
        tag: &mut [u8; TAG_LEN],
    ) -> bool {
        if !lengths_are_valid(aad.len(), data.len()) {
            return false;
        }
        let data_len = data.len();
        let (tag_counter, mut counter) = self.counters(nonce);
        let mut ghash = self.ghash_aad(Reader::new(aad));

        if data.len() >= LANES * BLOCK_LEN {
            let counters = counter.increment8();
            let pads = aes_encrypt8(counters, &self.aes);
            let plaintext = unsafe { data.read_blocks() };
            let mut last: [uint8x16_t; LANES] = core::array::from_fn(|i| plaintext[i] ^ pads[i]);
            unsafe {
                data.write_blocks(last);
                data.advance(LANES * BLOCK_LEN);
            }
            while data.len() >= LANES * BLOCK_LEN {
                let counters = counter.increment8();
                let (pads, next) = aes_ghash8_encrypt(
                    &self.aes,
                    counters,
                    ghash,
                    last.map(uint8x16_t::vrev64q_u8),
                    &self.powers,
                );
                ghash = next;
                let plaintext = unsafe { data.read_blocks() };
                last = core::array::from_fn(|i| plaintext[i] ^ pads[i]);
                unsafe {
                    data.write_blocks(last);
                    data.advance(LANES * BLOCK_LEN);
                }
            }
            let mut blocks = last.map(uint8x16_t::reverse_bytes);
            blocks[0] ^= ghash;
            ghash = clmul8(&self.powers, &blocks).reduce();
        }
        while data.len() >= BLOCK_LEN {
            let block = aes_encrypt(counter.increment(), &self.aes) ^ unsafe { data.read_block() };
            unsafe {
                data.write_block(block);
                data.advance(BLOCK_LEN);
            }
            ghash = self.ghash_block(ghash, block);
        }
        if data.len() != 0 {
            let pad = aes_encrypt(counter.increment(), &self.aes);
            let block = pad ^ unsafe { data.read_partial() };
            unsafe { data.write_partial(block) };
            ghash = self.ghash_block(ghash, block.mask_bytes(data.len()));
        }

        *tag = self.tag(ghash, tag_counter, aad.len(), data_len).to_bytes();
        true
    }

    pub(crate) fn decrypt(
        &self,
        nonce: &[u8],
        aad: &[u8],
        mut data: ReadWriter,
        tag: &[u8; TAG_LEN],
    ) -> bool {
        if !lengths_are_valid(aad.len(), data.len()) {
            return false;
        }
        let data_len = data.len();
        let (tag_counter, mut counter) = self.counters(nonce);
        let mut ghash = self.ghash_aad(Reader::new(aad));

        while data.len() >= LANES * BLOCK_LEN {
            let counters = counter.increment8();
            let ciphertext = unsafe { data.read_blocks() };
            let (pads, next) = aes_ghash8_decrypt(
                &self.aes,
                counters,
                ghash,
                ciphertext.map(uint8x16_t::vrev64q_u8),
                &self.powers,
            );
            ghash = next;
            unsafe {
                data.write_blocks(core::array::from_fn(|i| ciphertext[i] ^ pads[i]));
                data.advance(LANES * BLOCK_LEN);
            }
        }
        while data.len() >= BLOCK_LEN {
            let ciphertext = unsafe { data.read_block() };
            ghash = self.ghash_block(ghash, ciphertext);
            let block = aes_encrypt(counter.increment(), &self.aes) ^ ciphertext;
            unsafe {
                data.write_block(block);
                data.advance(BLOCK_LEN);
            }
        }
        if data.len() != 0 {
            let pad = aes_encrypt(counter.increment(), &self.aes);
            let ciphertext = unsafe { data.read_partial() };
            unsafe { data.write_partial(pad ^ ciphertext) };
            ghash = self.ghash_block(ghash, ciphertext);
        }

        let expected = self.tag(ghash, tag_counter, aad.len(), data_len);
        expected.crypto_equals(uint8x16_t::from_bytes(*tag))
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn seal(
        key: &[u8; KEY_LEN],
        nonce: &[u8],
        aad: &[u8],
        plaintext: &[u8],
    ) -> (Vec<u8>, [u8; 16]) {
        let gcm = Aes128Gcm::new(key);
        let mut ciphertext = vec![0u8; plaintext.len()];
        let mut tag = [0u8; TAG_LEN];
        let data = unsafe {
            ReadWriter::from_ptrs(
                plaintext.as_ptr(),
                plaintext.len(),
                ciphertext.as_mut_ptr(),
                ciphertext.len(),
            )
        }
        .unwrap();
        assert!(gcm.encrypt(nonce, aad, data, &mut tag));
        (ciphertext, tag)
    }

    fn vectors(path: &str) -> Vec<test_vectors::AeadTestVector> {
        use std::io::Read;
        let mut file = std::fs::File::open(path).expect("open aes128gcm vectors");
        let mut out = Vec::new();
        loop {
            let mut head = [0u8; 4];
            match file.read_exact(&mut head) {
                Err(e) if e.kind() == std::io::ErrorKind::UnexpectedEof => break,
                Err(e) => panic!("{path}: {e}"),
                Ok(()) => {}
            }
            let mut chained = head.as_slice().chain(file.by_ref());
            out.push(
                test_vectors::AeadTestVector::from_reader(&mut chained).expect("parse vector"),
            );
        }
        assert!(!out.is_empty(), "{path}: no vectors");
        out
    }

    #[test]
    fn cozybuf_vectors() {
        for vector in vectors("../../../test_vectors/aes128gcm.cozybuf") {
            let key: [u8; KEY_LEN] = vector.key.as_slice().try_into().unwrap();
            let (ciphertext, tag) = seal(&key, &vector.nonce, &vector.aad, &vector.plaintext);
            assert_eq!(ciphertext, vector.ciphertext);
            assert_eq!(tag.as_slice(), vector.tag);

            let gcm = Aes128Gcm::new(&key);
            let mut plaintext = vec![0u8; ciphertext.len()];
            let data = unsafe {
                ReadWriter::from_ptrs(
                    ciphertext.as_ptr(),
                    ciphertext.len(),
                    plaintext.as_mut_ptr(),
                    plaintext.len(),
                )
            }
            .unwrap();
            assert!(gcm.decrypt(&vector.nonce, &vector.aad, data, &tag));
            assert_eq!(plaintext, vector.plaintext);
        }
    }
}
