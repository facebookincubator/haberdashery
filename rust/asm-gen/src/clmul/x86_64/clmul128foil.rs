// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::BitXor;
use core::ops::BitXorAssign;

use crate::block::Block128;
use crate::clamped_index::ClampedIndex;
use crate::ffi::reader::Reader;

pub trait ClMul128Foil: Copy {
    fn clmul128foil(self, rhs: Self) -> ClMul128FoilProduct;
    #[inline]
    fn clmul128foil_sq(self) -> ClMul128FoilProduct {
        self.clmul128foil(self)
    }
}
impl ClMul128Foil for Block128 {
    #[inline]
    fn clmul128foil(self, rhs: Self) -> ClMul128FoilProduct {
        ClMul128FoilProduct {
            lo: self.clmul::<0x00>(rhs),
            mid: self.clmul::<0x01>(rhs) ^ self.clmul::<0x10>(rhs),
            hi: self.clmul::<0x11>(rhs),
        }
    }
    #[inline]
    fn clmul128foil_sq(self) -> ClMul128FoilProduct {
        ClMul128FoilProduct {
            lo: self.clmul::<0x00>(self),
            mid: Block128::zero(),
            hi: self.clmul::<0x11>(self),
        }
    }
}
impl<const N: usize> ClMul128Foil for [Block128; N] {
    #[inline]
    fn clmul128foil(self, rhs: Self) -> ClMul128FoilProduct {
        let mut result = self[0].clmul128foil(rhs[N - 1]);
        for i in 1..N {
            result ^= self[i].clmul128foil(rhs[N - 1 - i]);
        }
        result
    }
}
#[derive(Copy, Clone, Default)]
pub struct ClMul128FoilProduct {
    pub lo: Block128,
    pub mid: Block128,
    pub hi: Block128,
}
impl BitXor for ClMul128FoilProduct {
    type Output = Self;
    #[inline]
    fn bitxor(self, rhs: Self) -> Self::Output {
        Self {
            lo: self.lo ^ rhs.lo,
            mid: self.mid ^ rhs.mid,
            hi: self.hi ^ rhs.hi,
        }
    }
}
impl BitXorAssign for ClMul128FoilProduct {
    #[inline]
    fn bitxor_assign(&mut self, rhs: Self) {
        self.lo ^= rhs.lo;
        self.mid ^= rhs.mid;
        self.hi ^= rhs.hi;
    }
}
impl ClMul128FoilProduct {
    #[inline]
    pub fn reduce(&self) -> Block128 {
        let this = self.combine_foil();
        this.reduce_mul()
    }
    #[inline]
    pub fn combine_foil(mut self) -> Self {
        self.lo ^= self.mid.left_byteshift::<8>();
        self.hi ^= self.mid.right_byteshift::<8>();
        self.mid = Block128::zero();
        self
    }
    #[inline]
    fn reduce_mul(self) -> Block128 {
        let reduced = Self::reduce_mul_step(self.lo);
        let reduced = Self::reduce_mul_step(reduced);
        self.hi ^ reduced
    }
    #[inline]
    fn reduce_mul_step(target: Block128) -> Block128 {
        let poly: Block128 = [1, 0, 0, 0xc2_00_00_00].into();
        target.clmul::<0x10>(poly) ^ target.shuffle32::<0b_01_00_11_10>()
    }
}

#[inline]
fn mulx_polyval(v: Block128) -> Block128 {
    let remainder = v.right_bitshift64::<63>();
    let v = v.left_bitshift64::<1>() ^ remainder.shuffle32::<0b01_00_11_10>();
    let remainder = remainder.shuffle32::<0b11_10_11_11>();
    v ^ remainder.left_bitshift64::<63>()
        ^ remainder.left_bitshift64::<62>()
        ^ remainder.left_bitshift64::<57>()
}

#[derive(Copy, Clone)]
pub struct ClMul128FoilPowerTable<const N: usize>([Block128; N]);
impl<const N: usize> Default for ClMul128FoilPowerTable<N> {
    #[inline]
    fn default() -> Self {
        Self([Block128::ZERO; N])
    }
}
impl<const N: usize> ClMul128FoilPowerTable<N> {
    #[inline]
    pub fn new(key: Block128) -> Self {
        let mut table = [key; N];
        for i in 1..N {
            match i % 2 {
                1 => table[i] = table[(i - 1) / 2].clmul128foil_sq().reduce(),
                _ => table[i] = table[i - 1].clmul128foil(key).reduce(),
            }
        }
        Self(table)
    }
    #[inline]
    pub fn new_ghash(key: Block128) -> Self {
        Self::new(mulx_polyval(key.byte_reverse()))
    }
    #[inline]
    pub fn keys(&self) -> [Block128; N] {
        self.0
    }
    #[inline]
    pub fn clmul128foil(self, array: [Block128; N]) -> ClMul128FoilProduct {
        self.0.clmul128foil(array)
    }
    #[inline]
    pub fn clmul128foil_u64(self, rhs: u64) -> ClMul128FoilProduct {
        let lhs = self.0[0];
        let rhs = [rhs, 0].into();
        ClMul128FoilProduct {
            lo: lhs.clmul::<0x00>(rhs),
            mid: lhs.clmul::<0x01>(rhs),
            hi: Block128::zero(),
        }
    }
    #[inline]
    pub fn clmul128foil_reader(
        self,
        mut state: ClMul128FoilProduct,
        mut reader: Reader,
    ) -> ClMul128FoilProduct {
        for mut array in reader.iter::<[Block128; N]>() {
            array[0] ^= state.reduce();
            state = self.clmul128foil(array);
        }
        for block in reader.iter::<Block128>() {
            state = self[0].clmul128foil(block ^ state.reduce());
        }
        if let Some(block) = reader.remainder::<Block128>() {
            state = self[0].clmul128foil(block ^ state.reduce());
        }
        state
    }
}

impl<const N: usize> core::ops::Index<ClampedIndex<N>> for ClMul128FoilPowerTable<N> {
    type Output = Block128;
    #[inline]
    fn index(&self, i: ClampedIndex<N>) -> &Self::Output {
        unsafe { self.0.get_unchecked(*i) }
    }
}
impl<const N: usize> core::ops::Index<usize> for ClMul128FoilPowerTable<N> {
    type Output = Block128;
    #[inline]
    fn index(&self, i: usize) -> &Self::Output {
        &self.0[i]
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    impl core::cmp::PartialEq<Self> for ClMul128FoilProduct {
        fn eq(&self, rhs: &Self) -> bool {
            self.hi == rhs.hi && self.mid == rhs.mid && self.lo == rhs.lo
        }
    }
    impl core::fmt::Debug for ClMul128FoilProduct {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            write!(
                f,
                "hi: {hi:?}, mid: {mid:?}, lo: {lo:?}",
                hi = self.hi,
                mid = self.mid,
                lo = self.lo
            )
        }
    }
    impl core::fmt::Display for ClMul128FoilProduct {
        fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
            write!(
                f,
                "hi: {hi}, mid: {mid}, lo: {lo}",
                hi = self.hi,
                mid = self.mid,
                lo = self.lo
            )
        }
    }

    const ZERO: Block128 = Block128::ZERO;
    const UNIT: Block128 = Block128::from_u32([1, 0, 0, 0]);

    #[test]
    fn product_zero() {
        for _i in 0..128 {
            let base = Block128::random();
            {
                let result = ZERO.clmul128foil(base);
                assert_eq!(result.lo, ZERO);
                assert_eq!(result.mid, ZERO);
                assert_eq!(result.hi, ZERO);
            }
            {
                let result = base.clmul128foil(ZERO);
                assert_eq!(result.lo, ZERO);
                assert_eq!(result.mid, ZERO);
                assert_eq!(result.hi, ZERO);
            }
        }
    }

    #[test]
    fn product_unit() {
        for _i in 0..128 {
            let base = Block128::random();
            {
                let result = UNIT.clmul128foil(base).combine_foil();
                assert_eq!(result.lo, base);
                assert_eq!(result.mid, ZERO);
                assert_eq!(result.hi, ZERO);
            }
            {
                let result = base.clmul128foil(UNIT).combine_foil();
                assert_eq!(result.lo, base);
                assert_eq!(result.mid, ZERO);
                assert_eq!(result.hi, ZERO);
            }
        }
    }

    #[test]
    fn product_power() {
        const POWER32: Block128 = Block128::from_u32([0, 1, 0, 0]);
        const POWER64: Block128 = Block128::from_u32([0, 0, 1, 0]);
        const POWER96: Block128 = Block128::from_u32([0, 0, 0, 1]);
        {
            let result = POWER32.clmul128foil(POWER32).combine_foil();
            assert_eq!(result.lo, POWER64);
            assert_eq!(result.mid, ZERO);
            assert_eq!(result.hi, ZERO);
            assert_eq!(
                POWER32.clmul128foil(POWER32).reduce(),
                "00000000000000c20100000000000000"
            );
        }

        {
            let result = POWER32.clmul128foil(POWER64).combine_foil();
            assert_eq!(result.lo, POWER96);
            assert_eq!(result.mid, ZERO);
            assert_eq!(result.hi, ZERO);
            assert_eq!(
                POWER32.clmul128foil(POWER64).reduce(),
                "0000000000000000000000c201000000"
            );
        }

        {
            let result = POWER64.clmul128foil(POWER64).combine_foil();
            assert_eq!(result.lo, ZERO);
            assert_eq!(result.mid, ZERO);
            assert_eq!(result.hi, UNIT);
            assert_eq!(
                POWER64.clmul128foil(POWER64).reduce(),
                "01000000000000000000000000000000"
            );
        }
    }

    #[test]
    fn product_canonical() {
        let lhs = Block128::from_hex("fafd19beeb12b422e99b1fd420e40b89").unwrap();
        let rhs = Block128::from_hex("c761795bbd38668cbe3753a8567d4ad4").unwrap();
        let result = lhs.clmul128foil(rhs);

        assert_eq!(result.lo, "6648ba1b3a6788530f1cf457e94ac910");
        assert_eq!(result.mid, "733c42709438ff45bada9f2bbfa48659");
        assert_eq!(result.hi, "0e9f91c1984bce825bb448c544bf546c");

        {
            let result = result.combine_foil();
            assert_eq!(result.lo, "6648ba1b3a6788537c20b6277d723655");
            assert_eq!(result.mid, Block128::ZERO);
            assert_eq!(result.hi, "b4450eea27ef48db5bb448c544bf546c");
        }

        let result = result.reduce();
        assert_eq!(result, "68cfb00e80b2414d466087c27c04867f");
    }

    #[test]
    fn power() {
        const N: usize = 8;

        for _i in 0..128 {
            let key = Block128::random();
            let data = random::vec(N * Block128::SIZE + 15);
            assert_eq!(
                {
                    let table = ClMul128FoilPowerTable::<1>::new(key);
                    let state = ClMul128FoilProduct::default();
                    let reader = Reader::from(data.as_slice());
                    table.clmul128foil_reader(state, reader).reduce()
                },
                {
                    let table = ClMul128FoilPowerTable::<N>::new(key);
                    let state = ClMul128FoilProduct::default();
                    let reader = Reader::from(data.as_slice());
                    table.clmul128foil_reader(state, reader).reduce()
                }
            );
        }
    }

    #[test]
    fn mulx() {
        assert_eq!(mulx_polyval([0x01; 2].into()), [0x02; 2]);
        assert_eq!(mulx_polyval([0x01; 16].into()), [0x02; 16]);
        assert_eq!(
            mulx_polyval([0xff; 16].into()),
            "ffffffffffffffffffffffffffffff3d"
        );
    }
}
