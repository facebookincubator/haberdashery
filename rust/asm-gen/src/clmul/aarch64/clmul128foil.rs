// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::ops::BitXor;
use core::ops::BitXorAssign;

use crate::block::Block128;
use crate::ffi::reader::Reader;

pub struct ClMul128FoilState<const N: usize> {
    lhs: [Block128; N],
    rhs: [Block128; N],
    pub product: ClMul128FoilProduct,
    pub index: usize,
}
impl<const N: usize> ClMul128FoilState<N> {
    #[inline]
    pub fn new(state: Block128, mut lhs: [Block128; N], rhs: [Block128; N]) -> Self {
        lhs[0] ^= state;
        Self {
            lhs,
            rhs,
            product: ClMul128FoilProduct::default(),
            index: 0,
        }
    }
    #[inline]
    pub fn round(&mut self) {
        debug_assert!(self.index < N, "{index} >= {N}", index = self.index);
        match self.index {
            0 => self.product = self.lhs[0].clmul128foil(self.rhs[N - 1]),
            _ => self.product ^= self.lhs[self.index].clmul128foil(self.rhs[N - 1 - self.index]),
        }
        self.index += 1;
    }
    #[inline]
    pub fn state(&self) -> Block128 {
        debug_assert_eq!(self.index, N);
        self.product.reduce()
    }
    #[inline]
    pub fn advance(&mut self) -> (Block128, Block128) {
        debug_assert!(self.index < N, "{index} >= {N}", index = self.index);
        let (lhs, rhs) = (self.lhs[self.index], self.rhs[N - 1 - self.index]);
        self.index += 1;
        (lhs, rhs)
    }
}

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
        let swapped = self.swap_lanes64();
        ClMul128FoilProduct {
            lo: self.clmul_lo(rhs),
            mid: swapped.clmul_lo(rhs) ^ swapped.clmul_hi(rhs),
            hi: self.clmul_hi(rhs),
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
    pub fn combine_foil(mut self) -> Self {
        let [midlo, midhi]: [u64; 2] = self.mid.into();
        self.lo ^= [0, midlo].into();
        self.hi ^= [midhi, 0].into();
        self.mid = Block128::ZERO;
        self
    }
    #[inline]
    fn reduce_step(target: Block128) -> Block128 {
        use core::arch::aarch64::*;
        const POLY: u64 = 0xc2_00_00_00_00_00_00_00;
        let [lo, hi]: [u64; 2] = target.into();
        let tmp: Block128 = unsafe { vmull_p64(lo, POLY) }.into();
        tmp ^ [hi, lo]
    }
    #[inline]
    pub fn reduce(&self) -> Block128 {
        let this = self.combine_foil();
        let reduced = Self::reduce_step(this.lo);
        let reduced = Self::reduce_step(reduced);
        this.hi ^ reduced
    }
}

#[inline]
fn mulx_polyval(v: Block128) -> Block128 {
    let remainder = v.right_bitshift64::<63>();
    let v = v.left_bitshift64::<1>() ^ remainder.shuffle_words::<2, 3, 0, 1>();
    let remainder = remainder.shuffle_words::<3, 3, 2, 3>();
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
    fn mulx() {
        assert_eq!(mulx_polyval([0x01; 2].into()), [0x02; 2]);
        assert_eq!(mulx_polyval([0x01; 16].into()), [0x02; 16]);
        assert_eq!(
            mulx_polyval([0xff; 16].into()),
            "ffffffffffffffffffffffffffffff3d"
        );
    }
}
