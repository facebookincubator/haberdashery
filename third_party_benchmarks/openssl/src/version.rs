// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub struct Version {
    pub major: u8,
    pub minor: u8,
    pub patch: u8,
}
impl Default for Version {
    fn default() -> Self {
        let version = unsafe { openssl_sys::OpenSSL_version_num() as u32 } >> 4;
        let version = version.to_be_bytes();
        Self {
            major: version[0],
            minor: version[1],
            patch: version[3],
        }
    }
}
impl core::fmt::Display for Version {
    fn fmt(&self, f: &mut core::fmt::Formatter) -> core::fmt::Result {
        write!(
            f,
            "{major}.{minor}.{patch}",
            major = self.major,
            minor = self.minor,
            patch = self.patch,
        )
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn version() {
        let v = Version::default();
        assert!([1, 3].contains(&v.major), "Unexpected openssl version {v}");
    }
}
