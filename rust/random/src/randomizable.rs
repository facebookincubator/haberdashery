pub trait Randomizable {
    fn random() -> Self;
}
impl<const N: usize, T: Randomizable> Randomizable for [T; N] {
    fn random() -> Self {
        core::array::from_fn(|_| T::random())
    }
}
impl Randomizable for usize {
    fn random() -> Self {
        super::usize()
    }
}
impl Randomizable for u64 {
    fn random() -> Self {
        super::u64()
    }
}
impl Randomizable for u32 {
    fn random() -> Self {
        super::u32()
    }
}
impl Randomizable for u16 {
    fn random() -> Self {
        super::u16()
    }
}
impl Randomizable for u8 {
    fn random() -> Self {
        super::u8()
    }
}
impl Randomizable for i64 {
    fn random() -> Self {
        super::i64()
    }
}
impl Randomizable for i32 {
    fn random() -> Self {
        super::i32()
    }
}
impl Randomizable for i16 {
    fn random() -> Self {
        super::i16()
    }
}
impl Randomizable for i8 {
    fn random() -> Self {
        super::i8()
    }
}
