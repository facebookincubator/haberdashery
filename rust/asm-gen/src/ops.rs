// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::mem::size_of;
use core::ops::BitAnd;
use core::ops::BitAndAssign;
use core::ops::BitOr;
use core::ops::BitOrAssign;
use core::ops::BitXor;
use core::ops::BitXorAssign;
use core::ops::Index;
use core::ops::IndexMut;

use crate::ffi::pod::Pod;

pub trait ArrayOps<T, const N: usize> {
    fn ops(self) -> Array<T, N>;
}
impl<T, const N: usize> ArrayOps<T, N> for [T; N] {
    #[inline]
    fn ops(self) -> Array<T, N> {
        Array(self)
    }
}
pub trait Cast {
    fn cast<T: Pod>(self) -> T;
}
impl<const N: usize> Cast for [u8; N] {
    #[inline]
    fn cast<T: Pod>(self) -> T {
        const { assert!(N == T::SIZE) };
        unsafe { T::load(self.as_ptr()) }
    }
}
#[repr(transparent)]
pub struct Array<T, const N: usize>(pub [T; N]);
impl<T, const N: usize> Index<usize> for Array<T, N> {
    type Output = T;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}
impl<T, const N: usize> IndexMut<usize> for Array<T, N> {
    #[inline]
    fn index_mut(&mut self, i: usize) -> &mut Self::Output {
        &mut self.0[i]
    }
}
impl<T, const N: usize> From<[T; N]> for Array<T, N> {
    #[inline]
    fn from(array: [T; N]) -> Self {
        Self(array)
    }
}
impl<T, const N: usize> From<Array<T, N>> for [T; N] {
    #[inline]
    fn from(array: Array<T, N>) -> Self {
        array.0
    }
}
unsafe impl<T: Pod, const N: usize> Pod for Array<T, N> {
    #[inline]
    unsafe fn load(ptr: *const u8) -> Self {
        Self(unsafe { <[T; N]>::load(ptr) })
    }
    #[inline]
    unsafe fn load_partial(ptr: *const u8, len: usize) -> Self {
        Self(unsafe { <[T; N]>::load_partial(ptr, len) })
    }
}
impl<T: Pod, const N: usize, const M: usize> From<[u8; M]> for Array<T, N> {
    #[inline]
    fn from(array: [u8; M]) -> Self {
        debug_assert!(
            M == T::SIZE * N,
            "Invalid byte-to-array converstion: {} != {}",
            M,
            T::SIZE * N,
        );
        unsafe { Self::load(array.as_ptr()) }
    }
}
impl<T, const N: usize> BitXor<[T; N]> for Array<T, N>
where
    T: Copy + BitXor<T, Output = T>,
{
    type Output = [T; N];
    #[inline]
    fn bitxor(self, rhs: [T; N]) -> Self::Output {
        core::array::from_fn(|i| self[i] ^ rhs[i])
    }
}
impl<T, const N: usize> BitXorAssign for Array<T, N>
where
    T: Copy + BitXorAssign,
{
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        for i in 0..N {
            self[i] ^= rhs[i];
        }
    }
}
impl<T, const N: usize> BitAnd<[T; N]> for Array<T, N>
where
    T: Copy + BitAnd<T, Output = T>,
{
    type Output = [T; N];
    #[inline]
    fn bitand(self, rhs: [T; N]) -> Self::Output {
        core::array::from_fn(|i| self[i] & rhs[i])
    }
}
impl<T, const N: usize> BitAndAssign for Array<T, N>
where
    T: Copy + BitAndAssign,
{
    #[inline]
    fn bitand_assign(&mut self, rhs: Self) {
        for i in 0..N {
            self[i] &= rhs[i];
        }
    }
}
impl<T, const N: usize> BitOr<[T; N]> for Array<T, N>
where
    T: Copy + BitOr<T, Output = T>,
{
    type Output = [T; N];
    #[inline]
    fn bitor(self, rhs: [T; N]) -> Self::Output {
        core::array::from_fn(|i| self[i] | rhs[i])
    }
}
impl<T, const N: usize> BitOrAssign for Array<T, N>
where
    T: Copy + BitOrAssign,
{
    #[inline]
    fn bitor_assign(&mut self, rhs: Self) {
        for i in 0..N {
            self[i] |= rhs[i];
        }
    }
}

impl<const N: usize> Array<u32, N> {
    #[inline]
    pub fn wrapping_add(self, rhs: [u32; N]) -> [u32; N] {
        core::array::from_fn(|i| self[i].wrapping_add(rhs[i]))
    }
}

impl<const N: usize> Array<u32, N> {
    #[inline]
    pub fn to_be_bytes<const M: usize>(self) -> [u8; M] {
        const SIZE: usize = size_of::<u32>();
        const { assert!(N * SIZE == M) };
        let bytes: [[u8; SIZE]; N] = self.0.map(|x| x.to_be_bytes());
        core::array::from_fn(|i| bytes[i / SIZE][i % SIZE])
    }
}

impl<const N: usize> Array<u64, N> {
    #[inline]
    pub fn to_le_bytes<const M: usize>(self) -> [u8; M] {
        const SIZE: usize = size_of::<u64>();
        const { assert!(N * SIZE == M) };
        let bytes: [[u8; SIZE]; N] = self.0.map(|x| x.to_le_bytes());
        core::array::from_fn(|i| bytes[i / SIZE][i % SIZE])
    }
    #[inline]
    pub fn to_be_bytes<const M: usize>(self) -> [u8; M] {
        const SIZE: usize = size_of::<u64>();
        const { assert!(N * SIZE == M) };
        let bytes: [[u8; SIZE]; N] = self.0.map(|x| x.to_be_bytes());
        core::array::from_fn(|i| bytes[i / SIZE][i % SIZE])
    }
}

impl<const N: usize> Array<u8, N> {
    #[inline]
    pub fn cast<T: Pod>(self) -> T {
        const { assert!(N == T::SIZE) };
        unsafe { T::load(self.0.as_ptr()) }
    }
    #[inline]
    pub fn to_u32_be<const M: usize>(self) -> [u32; M] {
        const SIZE: usize = size_of::<u32>();
        const { assert!(N == M * SIZE) };
        let bytes: [[u8; SIZE]; M] =
            core::array::from_fn(|i| core::array::from_fn(|j| self[i * SIZE + j]));
        bytes.map(u32::from_be_bytes)
    }
    #[inline]
    pub fn to_u64_le<const M: usize>(self) -> [u64; M] {
        const SIZE: usize = size_of::<u64>();
        const { assert!(N == M * SIZE) };
        let bytes: [[u8; SIZE]; M] =
            core::array::from_fn(|i| core::array::from_fn(|j| self[i * SIZE + j]));
        bytes.map(u64::from_le_bytes)
    }
}

impl<T, const N1: usize, const N2: usize> Array<[T; N1], N2> {
    #[inline]
    pub fn flatten<const N: usize>(self) -> [T; N] {
        const { assert!(N1 * N2 == N) };
        unsafe { core::mem::transmute_copy(&self) }
    }
}

impl<T, const N: usize> Array<T, N> {
    #[inline]
    pub fn unflatten<const N1: usize, const N2: usize>(self) -> [[T; N1]; N2] {
        const { assert!(N1 * N2 == N) };
        unsafe { core::mem::transmute_copy(&self) }
    }
    #[inline]
    pub fn map_into<S: From<T>>(self) -> [S; N] {
        self.0.map(Into::into)
    }
    #[inline]
    pub fn map_into_generic<S: From<T>, const M: usize>(self) -> [S; M] {
        unsafe { core::mem::transmute_copy(&self) }
    }
    #[inline]
    pub fn to_bytes<const M: usize, const N1: usize>(self) -> [u8; M]
    where
        [u8; N1]: From<T>,
    {
        self.map_into().ops().flatten()
    }
}
