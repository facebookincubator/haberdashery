// @generated
#![allow(dead_code, unused)]
pub struct CozyExampleStruct {
    pub bytes: Vec<u8>,
    pub string: String,
    pub uint32: u32,
}
impl CozyExampleStruct {
    pub fn to_writer(&self, w: &mut dyn std::io::Write) -> std::io::Result<()> {
        w.write_all(&(self.bytes.len() as u32).to_le_bytes())?;
        w.write_all(&self.bytes)?;
        w.write_all(&(self.string.len() as u32).to_le_bytes())?;
        w.write_all(self.string.as_bytes())?;
        w.write_all(&self.uint32.to_le_bytes())?;
        Ok(())
    }
}
impl CozyExampleStruct {
    pub fn from_reader(r: &mut dyn std::io::Read) -> std::io::Result<Self> {
        let bytes: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut bytes = vec![0u8; len];
            r.read_exact(&mut bytes)?;
            bytes
        };
        let string: String = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut string = vec![0u8; len];
            r.read_exact(&mut string)?;
            String::from_utf8(string)
                .map_err(|_| std::io::Error::new(
                    std::io::ErrorKind::InvalidData,
                    "utf8 parse error",
                ))?
        };
        let uint32: u32 = {
            let mut uint32 = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut uint32)?;
            u32::from_le_bytes(uint32)
        };
        Ok(Self { bytes, string, uint32 })
    }
}
