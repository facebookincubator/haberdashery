// @generated
#![allow(dead_code, unused)]
pub struct MacTestVector {
    pub key: Vec<u8>,
    pub message: Vec<u8>,
    pub tag: Vec<u8>,
}
impl MacTestVector {
    pub fn to_writer(&self, w: &mut dyn std::io::Write) -> std::io::Result<()> {
        w.write_all(&(self.key.len() as u32).to_le_bytes())?;
        w.write_all(&self.key)?;
        w.write_all(&(self.message.len() as u32).to_le_bytes())?;
        w.write_all(&self.message)?;
        w.write_all(&(self.tag.len() as u32).to_le_bytes())?;
        w.write_all(&self.tag)?;
        Ok(())
    }
}
impl MacTestVector {
    pub fn from_reader(r: &mut dyn std::io::Read) -> std::io::Result<Self> {
        let key: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut key = vec![0u8; len];
            r.read_exact(&mut key)?;
            key
        };
        let message: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut message = vec![0u8; len];
            r.read_exact(&mut message)?;
            message
        };
        let tag: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut tag = vec![0u8; len];
            r.read_exact(&mut tag)?;
            tag
        };
        Ok(Self { key, message, tag })
    }
}
