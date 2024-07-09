// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

#[derive(Copy, Clone, Debug)]
pub struct ClampedIndex<const N: usize>(usize);
impl<const N: usize> ClampedIndex<N> {
    pub fn new(i: usize) -> Option<Self> {
        (i < N).then_some(Self(i))
    }
}
impl<const N: usize> core::ops::Deref for ClampedIndex<N> {
    type Target = usize;
    #[inline]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl<const N: usize> core::ops::Add<usize> for ClampedIndex<N> {
    type Output = Option<ClampedIndex<N>>;
    #[inline]
    fn add(self, rhs: usize) -> Self::Output {
        Self::new(self.0 + rhs)
    }
}
impl<const N: usize> core::ops::Sub<usize> for ClampedIndex<N> {
    type Output = ClampedIndex<N>;
    #[inline]
    #[track_caller]
    fn sub(self, rhs: usize) -> Self::Output {
        Self(self.0 - rhs)
    }
}
impl<const N: usize> core::ops::SubAssign<usize> for ClampedIndex<N> {
    #[inline]
    #[track_caller]
    fn sub_assign(&mut self, rhs: usize) {
        self.0 -= rhs;
    }
}
impl<const N: usize> PartialEq<usize> for ClampedIndex<N> {
    #[inline]
    fn eq(&self, rhs: &usize) -> bool {
        self.0 == *rhs
    }
}
impl<const N: usize> PartialOrd<usize> for ClampedIndex<N> {
    #[inline]
    fn partial_cmp(&self, rhs: &usize) -> Option<core::cmp::Ordering> {
        self.0.partial_cmp(rhs)
    }
}
