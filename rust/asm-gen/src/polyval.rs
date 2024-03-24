// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use ffi_util::Reader;

use crate::clmulfoil::*;
use crate::intrinsics::m128i::*;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct PolyvalKey<const N: usize>([M128i; N]);
impl<const N: usize> PolyvalKey<N> {
    #[inline(always)]
    pub fn new(key: M128i) -> Self {
        let mut table = [key; N];
        for i in 1..N {
            match i % 2 {
                1 => table[i] = table[(i - 1) / 2].clsq_foil().reduce(),
                _ => table[i] = table[i - 1].clmul_foil(key).reduce(),
            }
        }
        Self(table)
    }
    #[inline(always)]
    pub fn hash(self, v: impl HashInput) -> PolyvalState<N> {
        let mut state = PolyvalState::<N>::from(self);
        state.hash(v);
        state
    }
    #[inline(always)]
    pub fn keys(&self) -> [M128i; N] {
        self.0
    }
}
impl<const N: usize> Default for PolyvalKey<N> {
    #[inline(always)]
    fn default() -> Self {
        Self([M128i::zero(); N])
    }
}
impl<const N: usize> ClMulFoil<M128i> for PolyvalKey<N> {
    type Output = ClMulFoilProduct<M128i>;
    #[inline(always)]
    fn clmul_foil(self, right: M128i) -> Self::Output {
        self.0[0].clmul_foil(right)
    }
}
impl<const N: usize, const M: usize> ClMulFoil<[M128i; M]> for PolyvalKey<N> {
    type Output = ClMulFoilProduct<M128i>;
    #[inline(always)]
    fn clmul_foil(self, right: [M128i; M]) -> Self::Output {
        debug_assert!(M <= N);
        let mut result = self.clmul_foil(right[M - 1]);
        for i in 1..M {
            result ^= self[i].clmul_foil(right[M - 1 - i]);
        }
        result
    }
}

impl<const N: usize> core::ops::Index<usize> for PolyvalKey<N> {
    type Output = M128i;
    #[inline(always)]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl<const N: usize> core::ops::IndexMut<usize> for PolyvalKey<N> {
    #[inline(always)]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct PolyvalState<const N: usize> {
    key: PolyvalKey<N>,
    hash: M128i,
}
impl<const N: usize> From<PolyvalKey<N>> for PolyvalState<N> {
    #[inline(always)]
    fn from(key: PolyvalKey<N>) -> Self {
        Self {
            key,
            hash: M128i::zero(),
        }
    }
}
impl<const N: usize> PolyvalState<N> {
    #[inline(always)]
    pub fn new(key: PolyvalKey<N>, hash: M128i) -> Self {
        Self { key, hash }
    }
    #[inline(always)]
    pub fn hash(&mut self, v: impl HashInput) -> Self {
        v.hash(self);
        *self
    }
    #[inline(always)]
    pub fn result(&self) -> M128i {
        self.hash
    }
    #[inline(always)]
    pub fn set_raw_hash(&mut self, v: M128i) {
        self.hash = v;
    }
    #[inline(always)]
    pub fn keys(&self) -> [M128i; N] {
        self.key.keys()
    }
}

pub trait HashInput {
    fn hash<const N: usize>(self, state: &mut PolyvalState<N>);
}
impl HashInput for M128i {
    #[inline(always)]
    fn hash<const N: usize>(self, state: &mut PolyvalState<N>) {
        state.hash = state.key.clmul_foil(state.hash ^ self).reduce();
    }
}
impl<const M: usize> HashInput for [M128i; M] {
    #[inline(always)]
    fn hash<const N: usize>(mut self, state: &mut PolyvalState<N>) {
        if M <= N {
            self[0] ^= state.hash;
            state.hash = state.key.clmul_foil(self).reduce();
        } else {
            for block in self {
                state.hash(block);
            }
        }
    }
}
impl<const M: usize> HashInput for M128iArray<M> {
    #[inline(always)]
    fn hash<const N: usize>(self, state: &mut PolyvalState<N>) {
        state.hash(<[M128i; M]>::from(self));
    }
}
impl HashInput for &[u8] {
    #[inline(always)]
    fn hash<const N: usize>(self, state: &mut PolyvalState<N>) {
        state.hash(Reader::from(self));
    }
}
impl HashInput for Reader<'_> {
    #[inline(always)]
    fn hash<const N: usize>(mut self, state: &mut PolyvalState<N>) {
        while let Some(M128iArray::<N>(block)) = self.read() {
            state.hash(block);
        }
        while let Some(block) = self.read::<M128i>() {
            state.hash(block);
        }
        if let Some((block, _len)) = self.remainder::<M128i>() {
            state.hash(block);
        }
    }
}
