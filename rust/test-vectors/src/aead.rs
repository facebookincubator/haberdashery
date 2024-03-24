// @generated
#![allow(dead_code, unused)]
pub struct AeadTestVector {
    pub key: Vec<u8>,
    pub nonce: Vec<u8>,
    pub aad: Vec<u8>,
    pub plaintext: Vec<u8>,
    pub ciphertext: Vec<u8>,
    pub tag: Vec<u8>,
}
impl AeadTestVector {
    pub fn to_writer(&self, w: &mut dyn std::io::Write) -> std::io::Result<()> {
        w.write_all(&(self.key.len() as u32).to_le_bytes())?;
        w.write_all(&self.key)?;
        w.write_all(&(self.nonce.len() as u32).to_le_bytes())?;
        w.write_all(&self.nonce)?;
        w.write_all(&(self.aad.len() as u32).to_le_bytes())?;
        w.write_all(&self.aad)?;
        w.write_all(&(self.plaintext.len() as u32).to_le_bytes())?;
        w.write_all(&self.plaintext)?;
        w.write_all(&(self.ciphertext.len() as u32).to_le_bytes())?;
        w.write_all(&self.ciphertext)?;
        w.write_all(&(self.tag.len() as u32).to_le_bytes())?;
        w.write_all(&self.tag)?;
        Ok(())
    }
}
impl AeadTestVector {
    pub fn from_reader(r: &mut dyn std::io::Read) -> std::io::Result<Self> {
        let key: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut key = vec![0u8; len];
            r.read_exact(&mut key)?;
            key
        };
        let nonce: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut nonce = vec![0u8; len];
            r.read_exact(&mut nonce)?;
            nonce
        };
        let aad: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut aad = vec![0u8; len];
            r.read_exact(&mut aad)?;
            aad
        };
        let plaintext: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut plaintext = vec![0u8; len];
            r.read_exact(&mut plaintext)?;
            plaintext
        };
        let ciphertext: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut ciphertext = vec![0u8; len];
            r.read_exact(&mut ciphertext)?;
            ciphertext
        };
        let tag: Vec<u8> = {
            let mut len = [0u8; core::mem::size_of::<u32>()];
            r.read_exact(&mut len)?;
            let len = u32::from_le_bytes(len) as usize;
            let mut tag = vec![0u8; len];
            r.read_exact(&mut tag)?;
            tag
        };
        Ok(Self {
            key,
            nonce,
            aad,
            plaintext,
            ciphertext,
            tag,
        })
    }
}
