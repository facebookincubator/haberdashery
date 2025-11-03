// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::marker::PhantomData;

use crate::aes::aes256::Aes256;
use crate::block::Block128;
#[cfg(target_arch = "x86_64")]
use crate::block::Block256;
#[cfg(target_arch = "x86_64")]
use crate::block::Block512;
use crate::clmul::clmul128foil::*;
#[cfg(target_arch = "x86_64")]
use crate::clmul::clmul256karatsuba::*;
#[cfg(target_arch = "x86_64")]
use crate::clmul::clmul512karatsuba::*;
use crate::counter128::Counter128;
use crate::ffi::reader::Reader;
use crate::ffi::reader_writer::ReaderWriter;
use crate::ffi::writer::Writer;
use crate::ops::ArrayOps;

pub const KEY_LEN: usize = 32;
pub const NONCE_LEN: usize = 12;
pub const TAG_LEN: usize = 16;

const MAX_AAD_BYTES: usize = 1 << 36;
const MAX_CRYPT_BYTES: usize = 1 << 36;

const COUNTER_MASK: [u32; 4] = [0, 0, 0, 0x80000000];
const TAG_MASK: [u32; 4] = [0xff_ff_ff_ff, 0xff_ff_ff_ff, 0xff_ff_ff_ff, 0x7f_ff_ff_ff];

#[derive(Default)]
pub struct SIMD128;
#[derive(Default)]
pub struct SIMD256;
#[derive(Default)]
pub struct SIMD512;

#[repr(C)]
#[derive(Default)]
pub struct Aes256GcmSivKey<I = SIMD128> {
    aes: Aes256,
    _p: PhantomData<I>,
}
impl From<[u8; KEY_LEN]> for Aes256GcmSivKey {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self {
            aes: key.into(),
            _p: PhantomData,
        }
    }
}
impl<I> Aes256GcmSivKey<I> {
    #[inline]
    fn from(key: [u8; KEY_LEN]) -> Self {
        Self {
            aes: key.into(),
            _p: PhantomData,
        }
    }
    #[inline]
    pub fn init(&mut self, key: &[u8]) -> bool {
        let Ok(key) = <[u8; KEY_LEN]>::try_from(key) else {
            return false;
        };
        *self = Self::from(key);
        true
    }
    #[inline]
    pub fn encrypt_check(
        &self,
        nonce: &[u8],
        aad: &Reader,
        data: &ReaderWriter,
        tag: &Writer,
    ) -> Option<[u8; NONCE_LEN]> {
        if aad.len() > MAX_AAD_BYTES {
            return None;
        }
        if data.len() > MAX_CRYPT_BYTES {
            return None;
        }
        if tag.len() != TAG_LEN {
            return None;
        }
        nonce.try_into().ok()
    }
    #[inline]
    pub fn decrypt_check(
        &self,
        nonce: &[u8],
        aad: &Reader,
        data: &ReaderWriter,
    ) -> Option<[u8; NONCE_LEN]> {
        if aad.len() > MAX_AAD_BYTES {
            return None;
        }
        if data.len() > MAX_CRYPT_BYTES {
            return None;
        }
        nonce.try_into().ok()
    }
}

impl Aes256GcmSivKey<SIMD128> {
    #[inline]
    pub fn encrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Writer,
    ) -> bool {
        match self.encrypt_check(nonce, &aad, &data, &tag) {
            Some(nonce) => {
                Context128::<N>::derive(&self.aes, nonce).encrypt(aad, data, tag);
                true
            }
            None => false,
        }
    }
    #[inline]
    pub fn decrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Reader,
    ) -> bool {
        match self.decrypt_check(nonce, &aad, &data) {
            Some(nonce) => Context128::<N>::derive(&self.aes, nonce).decrypt(aad, data, tag),
            None => false,
        }
    }
}

#[cfg(target_arch = "x86_64")]
impl Aes256GcmSivKey<SIMD256> {
    #[inline]
    pub fn encrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Writer,
    ) -> bool {
        match self.encrypt_check(nonce, &aad, &data, &tag) {
            Some(nonce) => {
                Context256::<N>::derive(&self.aes, nonce).encrypt(aad, data, tag);
                true
            }
            None => false,
        }
    }
    #[inline]
    pub fn decrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Reader,
    ) -> bool {
        match self.decrypt_check(nonce, &aad, &data) {
            Some(nonce) => Context256::<N>::derive(&self.aes, nonce).decrypt(aad, data, tag),
            None => false,
        }
    }
}

#[cfg(target_arch = "x86_64")]
impl Aes256GcmSivKey<SIMD512> {
    #[inline]
    pub fn encrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Writer,
    ) -> bool {
        match self.encrypt_check(nonce, &aad, &data, &tag) {
            Some(nonce) => {
                Context512::<N>::derive(&self.aes, nonce).encrypt(aad, data, tag);
                true
            }
            None => false,
        }
    }
    #[inline]
    pub fn decrypt<const N: usize>(
        &self,
        nonce: &[u8],
        aad: Reader,
        data: ReaderWriter,
        tag: Reader,
    ) -> bool {
        match self.decrypt_check(nonce, &aad, &data) {
            Some(nonce) => Context512::<N>::derive(&self.aes, nonce).decrypt(aad, data, tag),
            None => false,
        }
    }
}

#[inline]
fn derive_sivmac_key(aes: &Aes256, nonce: [u8; NONCE_LEN]) -> (Block128, Aes256, Block128) {
    let nonce: [[u8; 4]; 3] = unsafe { core::mem::transmute(nonce) };
    let nonce = [
        u32::from_le_bytes(nonce[0]),
        u32::from_le_bytes(nonce[1]),
        u32::from_le_bytes(nonce[2]),
    ];
    let ctr = Block128::from([nonce[0], nonce[1], nonce[2], 0]);
    let nonce = Block128::from([0, nonce[0], nonce[1], nonce[2]]);
    let subkeys = aes.encrypt([
        nonce ^ [0, 0, 0, 0],
        nonce ^ [1, 0, 0, 0],
        nonce ^ [2, 0, 0, 0],
        nonce ^ [3, 0, 0, 0],
        nonce ^ [4, 0, 0, 0],
        nonce ^ [5, 0, 0, 0],
    ]);
    let polyval_key = subkeys[0].unpacklo64(subkeys[1]);
    let aes = Aes256::from([
        subkeys[2].unpacklo64(subkeys[3]),
        subkeys[4].unpacklo64(subkeys[5]),
    ]);
    (polyval_key, aes, ctr)
}
struct Context128<const N: usize> {
    polyval: ClMul128FoilPowerTable<N>,
    aes: Aes256,
    ctr: Block128,
    hash: Block128,
}
impl<const N: usize> Context128<N> {
    #[inline]
    fn derive(aes: &Aes256, nonce: [u8; NONCE_LEN]) -> Self {
        let (polyval_key, aes, ctr) = derive_sivmac_key(aes, nonce);
        Self {
            polyval: ClMul128FoilPowerTable::new(polyval_key),
            aes,
            ctr,
            hash: Block128::ZERO,
        }
    }
    #[inline]
    pub fn tag(&mut self, hash: Block128) -> Block128 {
        let tag = (hash ^ self.ctr) & TAG_MASK;
        self.aes.encrypt(tag)
    }
    #[inline]
    pub fn hash_m128i(&mut self, block: Block128) {
        self.hash = self.polyval[0].clmul128foil(self.hash ^ block).reduce();
    }
    #[inline]
    pub fn hash_array(&mut self, mut array: [Block128; N]) {
        array[0] ^= self.hash;
        self.hash = self.polyval.clmul128foil(array).reduce();
    }
    #[inline]
    pub fn hash(&mut self, mut message: Reader) {
        for array in message.iter::<[Block128; N]>() {
            self.hash_array(array);
        }
        for block in message.iter::<Block128>() {
            self.hash_m128i(block);
        }
        if let Some(block) = message.remainder::<Block128>() {
            self.hash_m128i(block);
        }
    }
    #[inline]
    fn encrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Writer) {
        debug_assert_eq!(tag.len(), TAG_LEN);
        let lengths = Block128::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let (ptr, len) = unsafe { data.reader_ptr() };
        let plaintext = unsafe { Reader::new(ptr, len) };
        self.hash(aad);
        self.hash(plaintext);
        self.hash_m128i(lengths);
        let computed_tag = self.tag(self.hash);
        tag.write(computed_tag);
        let mut ctr: Counter128 = (computed_tag | COUNTER_MASK).into();
        for (block, writer) in data.iter::<[Block128; N]>() {
            let counters = ctr.increment_traunch::<N>();
            let block = block.ops() ^ self.aes.encrypt(counters);
            writer.write(block);
        }
        for (block, writer) in data.iter::<Block128>() {
            let ctr = ctr.increment();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
        }
        if let Some((block, writer)) = data.remainder::<Block128>() {
            let ctr = Block128::from(ctr);
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
        }
    }

    #[inline]
    #[cfg(target_arch = "x86_64")]
    pub fn iteration_asm(
        &mut self,
        auth: [Block128; N],
        counters: [Block128; N],
        plaintext: [Block128; N],
    ) -> [Block128; N] {
        // Constructor performs first round of AES and auth
        let mut state = crate::aesgcm::RoundState::new(
            self.aes,
            counters,
            auth,
            self.polyval.keys(),
            self.hash,
        );
        // 13 rounds of aes + 6 rounds of auth
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        state.step();
        // Performs last round of AES
        let (pads, new_hash) = state.finish();
        self.hash = new_hash;
        plaintext.ops() ^ pads
    }
    #[inline]
    fn decrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Reader) -> bool {
        let lengths = Block128::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let Some(tag) = tag.read::<Block128>() else {
            return false;
        };
        self.hash(aad);

        let mut ctr: Counter128 = (tag | COUNTER_MASK).into();
        if let Some((block, writer)) = data.read::<[Block128; N]>() {
            let counters = ctr.increment_traunch::<N>();
            let mut last_block = block.ops() ^ self.aes.encrypt(counters);
            writer.write(last_block);
            for (block, writer) in data.iter::<[Block128; N]>() {
                let counters = ctr.increment_traunch::<N>();
                last_block = match N {
                    #[cfg(target_arch = "x86_64")]
                    6 => self.iteration_asm(last_block, counters, block),
                    _ => {
                        self.hash_array(last_block);
                        block.ops() ^ self.aes.encrypt(counters)
                    }
                };
                writer.write(last_block);
            }
            self.hash_array(last_block);
        }
        for (block, writer) in data.iter::<Block128>() {
            let ctr = ctr.increment();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
            self.hash_m128i(block);
        }
        if let Some((block, writer)) = data.remainder::<Block128>() {
            let ctr = Block128::from(ctr);
            let block = block ^ self.aes.encrypt(ctr);
            let block = writer.write(block);
            self.hash_m128i(block);
        }
        self.hash_m128i(lengths);
        self.tag(self.hash).crypto_equals(tag)
    }
}

#[cfg(target_arch = "x86_64")]
struct Context256<const N: usize> {
    polyval: ClMul256KaratsubaPowerTable<N>,
    aes: Aes256,
    ctr: Block128,
    state: Block256,
}
#[cfg(target_arch = "x86_64")]
impl<const N: usize> Context256<N> {
    const BLOCK_LEN: usize = 16;
    #[inline]
    fn derive(aes: &Aes256, nonce: [u8; NONCE_LEN]) -> Self {
        let (polyval_key, aes, ctr) = derive_sivmac_key(aes, nonce);
        Self {
            polyval: ClMul256KaratsubaPowerTable::new(polyval_key),
            aes,
            ctr,
            state: Block256::zero(),
        }
    }
    #[inline]
    pub fn tag(&mut self, hash: Block128) -> Block128 {
        let tag = (hash ^ self.ctr) & TAG_MASK;
        self.aes.encrypt(tag)
    }
    #[inline]
    pub fn hash_m256i(&mut self, block: Block256) {
        self.state = self.polyval[0]
            .clmul256karatsuba(block ^ self.state)
            .reduce();
    }
    #[inline]
    fn encrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Writer) {
        debug_assert_eq!(tag.len(), TAG_LEN);
        let lengths = Block128::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let (ptr, len) = unsafe { data.reader_ptr() };
        let plaintext = unsafe { Reader::new(ptr, len) };
        self.state = self.polyval.clmul256karatsuba_reader(Block256::ZERO, aad);
        self.state = self.polyval.clmul256karatsuba_reader(self.state, plaintext);
        let hash = self.polyval.reduce(self.state, lengths);
        let computed_tag = self.tag(hash);
        tag.write(computed_tag);
        let mut ctr: Counter128 = (computed_tag | COUNTER_MASK).into();
        for (block, writer) in data.iter::<[Block256; N]>() {
            let counters = ctr.increment_traunch_256::<N>();
            let block = block.ops() ^ self.aes.encrypt(counters);
            writer.write(block);
        }
        for (block, writer) in data.iter::<Block256>() {
            let counter = ctr.increment_traunch_256::<1>()[0];
            let block = block ^ self.aes.encrypt(counter);
            writer.write(block);
        }
        if let Some((block, writer)) = data.remainder::<Block256>() {
            let counter = ctr.increment();
            let counter = Block256::from([counter, Block128::from(ctr)]);
            let block = block ^ self.aes.encrypt(counter);
            writer.write(block);
        }
    }
    #[inline]
    fn decrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Reader) -> bool {
        let lengths = Block128::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let Some(tag) = tag.read::<Block128>() else {
            return false;
        };
        self.state = self.polyval.clmul256karatsuba_reader(Block256::ZERO, aad);

        let mut ctr: Counter128 = (tag | COUNTER_MASK).into();

        let auth_keys = self.polyval.powers.map(|key| key.broadcast256());
        if let Some((block, writer)) = data.read::<[Block256; N]>() {
            let counters = ctr.increment_traunch_256::<N>();
            let mut last_block = block.ops() ^ self.aes.encrypt(counters);
            writer.write(last_block);
            for (block, writer) in data.iter::<[Block256; N]>() {
                let counters = ctr.increment_traunch_256::<N>();
                use crate::aesgcm::aesclmul256::Aes256ClMul256KaratsubaState;
                let mut state = Aes256ClMul256KaratsubaState::new(
                    self.aes, counters, self.state, last_block, auth_keys,
                );
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                state.round();
                let block = block.ops() ^ state.aes_data();
                self.state = state.clmul_state();
                writer.write(block);
                last_block = block;
            }
            last_block[0] ^= self.state;
            self.state = self.polyval.clmul256karatsuba(last_block).reduce();
        }

        for (block, writer) in data.iter::<Block256>() {
            let counter = ctr.increment_traunch_256::<1>()[0];
            let block = block ^ self.aes.encrypt(counter);
            writer.write(block);
            self.hash_m256i(block);
        }
        let bytes_remaining = data.len();
        if let Some((block, writer)) = data.remainder::<Block256>() {
            let counter = ctr.increment();
            let counter = Block256::from([counter, Block128::from(ctr)]);
            let block = block ^ self.aes.encrypt(counter);
            let block = writer.write(block);
            if bytes_remaining > Self::BLOCK_LEN {
                self.hash_m256i(block);
            } else {
                self.state = self
                    .polyval
                    .key()
                    .clmul256karatsuba(block ^ self.state)
                    .reduce();
            }
        }
        let hash = self.polyval.reduce(self.state, lengths);
        self.tag(hash).crypto_equals(tag)
    }
}
#[cfg(target_arch = "x86_64")]
struct Context512<const N: usize> {
    polyval: ClMul512KaratsubaPowerTable<N>,
    aes: Aes256,
    ctr: Block128,
    hash: Block128,
}
#[cfg(target_arch = "x86_64")]
impl<const N: usize> Context512<N> {
    #[inline]
    fn derive(aes: &Aes256, nonce: [u8; NONCE_LEN]) -> Self {
        let (polyval_key, aes, ctr) = derive_sivmac_key(aes, nonce);
        Self {
            polyval: ClMul512KaratsubaPowerTable::new(polyval_key),
            aes,
            ctr,
            hash: Block128::ZERO,
        }
    }
    #[inline]
    pub fn tag(&mut self, hash: Block128) -> Block128 {
        let tag = (hash ^ self.ctr) & TAG_MASK;
        self.aes.encrypt(tag)
    }
    #[inline]
    pub fn hash_m128i(&mut self, block: Block128) {
        self.hash = self.polyval.key().clmul128foil(block ^ self.hash).reduce();
    }
    #[inline]
    fn encrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Writer) {
        debug_assert_eq!(tag.len(), TAG_LEN);
        let lengths = Block128::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let (ptr, len) = unsafe { data.reader_ptr() };
        let plaintext = unsafe { Reader::new(ptr, len) };
        self.hash = self.polyval.clmul512karatsuba_reader(Block128::ZERO, aad);
        self.hash = self.polyval.clmul512karatsuba_reader(self.hash, plaintext);
        self.hash_m128i(lengths);
        let computed_tag = self.tag(self.hash);
        tag.write(computed_tag);
        let mut ctr: Counter128 = (computed_tag | COUNTER_MASK).into();
        for (blocks, writer) in data.iter::<[Block512; N]>() {
            let counters = ctr.increment_traunch_512::<N>();
            let blocks = blocks.ops() ^ self.aes.encrypt(counters);
            writer.write(blocks);
        }
        for (block, writer) in data.iter::<Block128>() {
            let ctr = ctr.increment();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
        }
        if let Some((block, writer)) = data.remainder::<Block128>() {
            let ctr = Block128::from(ctr);
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
        }
    }
    #[inline]
    fn decrypt(&mut self, aad: Reader, mut data: ReaderWriter, mut tag: Reader) -> bool {
        let lengths = Block128::from([aad.len() as u64 * 8, data.len() as u64 * 8]);
        let Some(tag) = tag.read::<Block128>() else {
            return false;
        };
        self.hash = self.polyval.clmul512karatsuba_reader(Block128::ZERO, aad);
        let mut ctr: Counter128 = (tag | COUNTER_MASK).into();

        let mut hash: Block512 = [self.hash, Block128::ZERO, Block128::ZERO, Block128::ZERO].into();
        if data.len() >= Block512::SIZE * (2 * N + 1) {
            let (last_blocks, last_writer) = data.read::<[Block512; N]>().unwrap();
            let counters = ctr.increment_traunch_512::<N>();
            let mut last_blocks = last_blocks.ops() ^ self.aes.encrypt(counters);
            last_writer.write(last_blocks);
            while data.len() >= Block512::SIZE * (N + 1) {
                let (blocks, writer) = data.read::<[Block512; N]>().unwrap();
                let counters = ctr.increment_traunch_512::<N>();
                let blocks = blocks.ops() ^ self.aes.encrypt(counters);
                writer.write(blocks);
                last_blocks[0] ^= hash;
                hash = self.polyval.clmul512karatsuba(last_blocks).reduce();
                last_blocks = blocks;
            }
            last_blocks[0] ^= hash;
            hash = self.polyval.clmul512karatsuba(last_blocks).reduce();
        }
        if let Some((mut block, mut writer)) = data.read::<Block512>() {
            for (next_block, next_writer) in data.iter::<Block512>() {
                let ctr: Block512 = ctr.increment_traunch::<4>().into();
                block ^= self.aes.encrypt(ctr);
                writer.write(block);
                hash = self.polyval[0].clmul512karatsuba(block ^ hash).reduce();
                block = next_block;
                writer = next_writer;
            }
            let ctr: Block512 = ctr.increment_traunch::<4>().into();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
            self.hash = self.polyval.reduce(block ^ hash);
        }
        for (block, writer) in data.iter::<Block128>() {
            let ctr = ctr.increment();
            let block = block ^ self.aes.encrypt(ctr);
            writer.write(block);
            self.hash_m128i(block);
        }
        if let Some((block, writer)) = data.remainder::<Block128>() {
            let ctr = Block128::from(ctr);
            let block = block ^ self.aes.encrypt(ctr);
            let block = writer.write(block);
            self.hash_m128i(block);
        }
        self.hash_m128i(lengths);
        self.tag(self.hash).crypto_equals(tag)
    }
}

#[cfg(test)]
mod tests {
    #[cfg(target_arch = "aarch64")]
    use SIMD128 as Test;

    use super::*;

    #[derive(Default)]
    #[cfg(target_arch = "x86_64")]
    pub struct Test;

    const ENCRYPT_LANES: usize = 8;
    const DECRYPT_LANES: usize = 6;

    #[cfg(target_arch = "x86_64")]
    impl Aes256GcmSivKey<Test> {
        #[inline]
        pub fn encrypt<const N: usize>(
            &self,
            nonce: &[u8],
            aad: Reader,
            data: ReaderWriter,
            tag: Writer,
        ) -> bool {
            let Some(nonce) = self.encrypt_check(nonce, &aad, &data, &tag) else {
                return false;
            };

            let (reader_ptr, reader_len) = unsafe { data.reader_ptr() };
            let (writer_ptr, writer_len) = unsafe { data.writer_ptr_for_test() };
            let (tag_prt, tag_len) = unsafe { tag.writer_ptr() };
            assert_eq!(reader_len, writer_len);
            Context128::<N>::derive(&self.aes, nonce).encrypt(aad.clone_for_test(), data, tag);

            if cpuid::VPCLMULQDQ.is_supported() {
                let tag = unsafe { core::slice::from_raw_parts_mut(tag_prt, tag_len) };
                let ciphertext = unsafe { core::slice::from_raw_parts(writer_ptr, writer_len) };
                let plaintext = unsafe { core::slice::from_raw_parts(reader_ptr, reader_len) };
                let mut other_ciphertext = vec![0u8; writer_len];
                let mut other_tag = [0u8; TAG_LEN];
                Context256::<N>::derive(&self.aes, nonce).encrypt(
                    aad.clone_for_test(),
                    ReaderWriter::from_slices(plaintext, &mut other_ciphertext).unwrap(),
                    Writer::from(other_tag.as_mut_slice()),
                );
                assert!(ciphertext.iter().eq(other_ciphertext.iter()));
                assert!(tag.iter().eq(other_tag.iter()));
            }

            if (cpuid::AVX512VL | cpuid::AVX512BW | cpuid::VAES | cpuid::VPCLMULQDQ).is_supported()
            {
                let tag = unsafe { core::slice::from_raw_parts_mut(tag_prt, tag_len) };
                let ciphertext = unsafe { core::slice::from_raw_parts(writer_ptr, writer_len) };
                let plaintext = unsafe { core::slice::from_raw_parts(reader_ptr, reader_len) };
                let mut other_ciphertext = vec![0u8; writer_len];
                let mut other_tag = [0u8; TAG_LEN];
                Context512::<N>::derive(&self.aes, nonce).encrypt(
                    aad.clone_for_test(),
                    ReaderWriter::from_slices(plaintext, &mut other_ciphertext).unwrap(),
                    Writer::from(other_tag.as_mut_slice()),
                );
                assert!(ciphertext.iter().eq(other_ciphertext.iter()));
                assert!(tag.iter().eq(other_tag.iter()));
            }
            true
        }
        #[inline]
        pub fn decrypt<const N: usize>(
            &self,
            nonce: &[u8],
            aad: Reader,
            data: ReaderWriter,
            tag: Reader,
        ) -> bool {
            let Some(nonce) = self.decrypt_check(nonce, &aad, &data) else {
                return false;
            };
            let (reader_ptr, reader_len) = unsafe { data.reader_ptr() };
            let (writer_ptr, writer_len) = unsafe { data.writer_ptr_for_test() };
            assert_eq!(reader_len, writer_len);
            let res = Context128::<N>::derive(&self.aes, nonce).decrypt(
                aad.clone_for_test(),
                data,
                tag.clone_for_test(),
            );
            if cpuid::VPCLMULQDQ.is_supported() {
                let plaintext = unsafe { core::slice::from_raw_parts(writer_ptr, writer_len) };
                let ciphertext = unsafe { core::slice::from_raw_parts(reader_ptr, reader_len) };
                let mut other_plaintext = vec![0u8; writer_len];
                assert_eq!(
                    res,
                    Context256::<N>::derive(&self.aes, nonce).decrypt(
                        aad.clone_for_test(),
                        ReaderWriter::from_slices(ciphertext, &mut other_plaintext).unwrap(),
                        tag.clone_for_test()
                    )
                );
                assert!(plaintext.iter().eq(other_plaintext.iter()));
            }
            if (cpuid::AVX512VL | cpuid::AVX512BW | cpuid::VAES | cpuid::VPCLMULQDQ).is_supported()
            {
                let plaintext = unsafe { core::slice::from_raw_parts(writer_ptr, writer_len) };
                let ciphertext = unsafe { core::slice::from_raw_parts(reader_ptr, reader_len) };
                let mut other_plaintext = vec![0u8; writer_len];
                assert_eq!(
                    res,
                    Context512::<N>::derive(&self.aes, nonce).decrypt(
                        aad.clone_for_test(),
                        ReaderWriter::from_slices(ciphertext, &mut other_plaintext).unwrap(),
                        tag.clone_for_test()
                    )
                );
                assert!(plaintext.iter().eq(other_plaintext.iter()));
            }
            res
        }
    }

    struct TestVector {
        plaintext: &'static str,
        aad: &'static str,
        key: &'static str,
        nonce: &'static str,
        auth_key: &'static str,
        crypt_key: &'static str,
        tag: &'static str,
        ciphertext: &'static str,
    }
    impl TestVector {
        fn test<const N: usize>(&self) {
            let key = hex::decode(self.key).unwrap();
            let nonce = hex::decode(self.nonce).unwrap();
            let aad = hex::decode(self.aad).unwrap();
            let plaintext = hex::decode(self.plaintext).unwrap();
            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            {
                let mut aes = Aes256GcmSivKey::<Test>::default();
                assert!(aes.init(&key));
                assert!(aes.encrypt::<N>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                    tag.as_mut_slice().into()
                ));
                assert_eq!(hex::encode(&ciphertext), self.ciphertext, "ciphertext");
                assert_eq!(hex::encode(tag), self.tag, "tag");
                let mut plaintext = vec![0u8; plaintext.len()];
                assert!(aes.decrypt::<N>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into()
                ));
                assert_eq!(hex::encode(&plaintext), self.plaintext, "plaintext");

                {
                    let mut tag = tag.clone();
                    tag[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
                {
                    let mut nonce = nonce.clone();
                    nonce[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
                if !aad.is_empty() {
                    let mut aad = aad.clone();
                    aad[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
                if !ciphertext.is_empty() {
                    let mut ciphertext = ciphertext.clone();
                    ciphertext[0] ^= 0x01;
                    assert!(!aes.decrypt::<N>(
                        &nonce,
                        aad.as_slice().into(),
                        ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                        tag.as_slice().into(),
                    ));
                }
            }
            let key: [u8; KEY_LEN] = key.try_into().unwrap();
            let nonce: [u8; NONCE_LEN] = nonce.try_into().unwrap();
            {
                let aes = Aes256::from(key);
                let mut ctx = Context128::<N>::derive(&aes, nonce);
                assert_eq!(ctx.polyval.keys()[0], self.auth_key, "auth_key");
                assert_eq!(
                    [ctx.aes[0].encode_hex(), ctx.aes[1].encode_hex()].concat(),
                    self.crypt_key,
                    "crypt_key"
                );
                ctx.encrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                    tag.as_mut_slice().into(),
                );
                assert_eq!(hex::encode(tag), self.tag, "tag");
                assert_eq!(hex::encode(&ciphertext), self.ciphertext, "ciphertext");
            }
            {
                let aes = Aes256::from(key);
                let mut ctx = Context128::<N>::derive(&aes, nonce);
                let mut plaintext = vec![0u8; plaintext.len()];
                assert!(ctx.decrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into()
                ));
                assert_eq!(hex::encode(&plaintext), self.plaintext, "plaintext");

                let mut bad_tag = tag.clone();
                bad_tag[0] ^= 0x01;
                assert!(!ctx.decrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    bad_tag.as_slice().into()
                ));
                let mut bad_nonce = nonce.clone();
                bad_nonce[0] ^= 0x01;
                assert!(!Context128::<N>::derive(&aes, bad_nonce).decrypt(
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut plaintext).unwrap(),
                    tag.as_slice().into(),
                ));
            }
        }
    }
    #[test]
    fn rfc8452() {
        // https://www.rfc-editor.org/rfc/rfc8452.html#appendix-C.2
        let vectors = [
            TestVector {
                plaintext: "",
                aad: "",
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "030000000000000000000000",
                auth_key: "b5d3c529dfafac43136d2d11be284d7f",
                crypt_key: "b914f4742be9e1d7a2f84addbf96dec3456e3c6c05ecc157cdbf0700fedad222",
                tag: "07f5f4169bbf55a8400cd47ea6fd400f",
                ciphertext: "",
            },
            TestVector {
                plaintext: "0100000000000000",
                aad: "",
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "030000000000000000000000",
                auth_key: "b5d3c529dfafac43136d2d11be284d7f",
                crypt_key: "b914f4742be9e1d7a2f84addbf96dec3456e3c6c05ecc157cdbf0700fedad222",
                tag: "843122130f7364b761e0b97427e3df28",
                ciphertext: "c2ef328e5c71c83b",
            },
            TestVector {
                plaintext: "0200000000000000",
                aad: "01",
                key: "0100000000000000000000000000000000000000000000000000000000000000",
                nonce: "030000000000000000000000",
                auth_key: "b5d3c529dfafac43136d2d11be284d7f",
                crypt_key: "b914f4742be9e1d7a2f84addbf96dec3456e3c6c05ecc157cdbf0700fedad222",
                tag: "91213f267e3b452f02d01ae33e4ec854",
                ciphertext: "1de22967237a8132",
            },
            TestVector {
                plaintext: "ced532ce4159b035277d4dfbb7db62968b13cd4eec",
                aad: "734320ccc9d9bbbb19cb81b2af4ecbc3e72834321f7aa0f70b7282b4f33df23f167541",
                key: "3c535de192eaed3822a2fbbe2ca9dfc88255e14a661b8aa82cc54236093bbc23",
                nonce: "688089e55540db1872504e1c",
                auth_key: "cb8c3aa3f8dbaeb4b28a3e86ff6625f8",
                crypt_key: "02426ce1aa3ab31313b0848469a1b5fc6c9af9602600b195b04ad407026bc06d",
                tag: "9d6c7029675b89eaf4ba1ded1a286594",
                ciphertext: "626660c26ea6612fb17ad91e8e767639edd6c9faee",
            },
        ];
        vectors.iter().for_each(|v| v.test::<1>());
        vectors.iter().for_each(|v| v.test::<ENCRYPT_LANES>());
        vectors.iter().for_each(|v| v.test::<DECRYPT_LANES>());
    }

    #[test]
    #[cfg(not(fbcode_build))]
    fn comparison() {
        use aes_gcm_siv::AeadInPlace;
        use aes_gcm_siv::KeyInit;

        // Conformance test
        {
            let key =
                hex::decode("3c535de192eaed3822a2fbbe2ca9dfc88255e14a661b8aa82cc54236093bbc23")
                    .unwrap();
            let nonce = hex::decode("688089e55540db1872504e1c").unwrap();
            let mut inout = hex::decode("ced532ce4159b035277d4dfbb7db62968b13cd4eec").unwrap();
            let aad = hex::decode(
                "734320ccc9d9bbbb19cb81b2af4ecbc3e72834321f7aa0f70b7282b4f33df23f167541",
            )
            .unwrap();

            let other = aes_gcm_siv::Aes256GcmSiv::new_from_slice(&key).unwrap();
            let tag = other
                .encrypt_in_place_detached(nonce.as_slice().into(), &aad, &mut inout)
                .unwrap();
            assert_eq!(
                hex::encode(tag.as_slice()),
                "9d6c7029675b89eaf4ba1ded1a286594"
            );
            assert_eq!(
                hex::encode(inout),
                "626660c26ea6612fb17ad91e8e767639edd6c9faee"
            );
        }

        for _ in 0..128 {
            let crypt_len = 4 << 10;
            let aad_len = 4 << 10;
            let crypt_len = crypt_len + random::usize() % crypt_len;
            let aad_len = aad_len + random::usize() % aad_len;

            let key = random::vec(KEY_LEN);
            let nonce = random::vec(NONCE_LEN);
            let plaintext = random::vec(crypt_len);
            let aad = random::vec(aad_len);
            let mut ciphertext = plaintext.clone();
            {
                let other = aes_gcm_siv::Aes256GcmSiv::new_from_slice(&key).unwrap();
                let tag = other
                    .encrypt_in_place_detached(nonce.as_slice().into(), &aad, &mut ciphertext)
                    .unwrap();
                let mut aes = Aes256GcmSivKey::<Test>::default();
                assert!(aes.init(&key));
                let mut decrypted = vec![0u8; plaintext.len()];
                assert!(aes.decrypt::<6>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&ciphertext, &mut decrypted).unwrap(),
                    tag.as_slice().into()
                ));
                assert_eq!(plaintext, decrypted);
            }
            {
                let mut aes = Aes256GcmSivKey::<Test>::default();
                assert!(aes.init(&key));
                let mut tag = [0u8; TAG_LEN];
                assert!(aes.encrypt::<6>(
                    &nonce,
                    aad.as_slice().into(),
                    ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                    tag.as_mut_slice().into()
                ));
                let other = aes_gcm_siv::Aes256GcmSiv::new_from_slice(&key).unwrap();
                other
                    .decrypt_in_place_detached(
                        nonce.as_slice().into(),
                        &aad,
                        &mut ciphertext,
                        tag.as_slice().into(),
                    )
                    .unwrap();
                assert_eq!(plaintext, ciphertext);
            }
        }
    }

    #[test]
    fn cozybuf() {
        use test_vectors::AeadTestVector;
        let bytes =
            std::fs::read(crate::PROJECT_PATH.join("test_vectors/aes256gcmsiv.cozybuf")).unwrap();
        let mut reader = bytes.as_slice();

        fn verify_cozybuf<const N: usize>(v: &AeadTestVector) {
            let key: [u8; KEY_LEN] = v.key.as_slice().try_into().unwrap();
            let aead = Aes256GcmSivKey::<Test>::from(key);
            let mut ciphertext = vec![0u8; v.plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt::<N>(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into()
            ));
            assert_eq!(ciphertext, v.ciphertext);
            assert_eq!(tag, v.tag.as_slice());
            let mut plaintext = vec![0u8; v.plaintext.len()];
            assert!(aead.decrypt::<N>(
                &v.nonce,
                v.aad.as_slice().into(),
                ReaderWriter::from_slices(&v.ciphertext, &mut plaintext).unwrap(),
                v.tag.as_slice().into()
            ));
            assert_eq!(plaintext, v.plaintext);
        }

        while let Ok(v) = AeadTestVector::from_reader(&mut reader) {
            verify_cozybuf::<1>(&v);
            verify_cozybuf::<2>(&v);
            verify_cozybuf::<3>(&v);
            verify_cozybuf::<4>(&v);
            verify_cozybuf::<5>(&v);
            verify_cozybuf::<6>(&v);
            verify_cozybuf::<7>(&v);
            verify_cozybuf::<8>(&v);
            verify_cozybuf::<16>(&v);
            verify_cozybuf::<32>(&v);
            verify_cozybuf::<256>(&v);
        }
        assert!(reader.is_empty());
    }

    #[test]
    fn large() {
        fn large<const N: usize>() {
            let len = random::usize() % (1 << 20) + (1 << 20);
            let key: [u8; KEY_LEN] = random::random();
            let aead = Aes256GcmSivKey::<Test>::from(key);
            let nonce: [u8; NONCE_LEN] = random::random();
            let aad = random::vec(len);
            let plaintext = random::vec(len);
            let mut ciphertext = vec![0u8; plaintext.len()];
            let mut tag = [0u8; TAG_LEN];
            assert!(aead.encrypt::<N>(
                &nonce,
                aad.as_slice().into(),
                ReaderWriter::from_slices(&plaintext, &mut ciphertext).unwrap(),
                tag.as_mut_slice().into()
            ));
            let mut decrypted = vec![0u8; plaintext.len()];
            assert!(aead.decrypt::<N>(
                &nonce,
                aad.as_slice().into(),
                ReaderWriter::from_slices(&ciphertext, &mut decrypted).unwrap(),
                tag.as_slice().into()
            ));
            assert_eq!(plaintext, decrypted);
        }
        large::<4>();
        large::<6>();
        large::<8>();
    }
}
