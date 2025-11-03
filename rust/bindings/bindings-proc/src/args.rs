// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::collections::BTreeMap;

use bindings::Descriptor;

#[derive(Clone, Default, Debug, PartialEq)]
pub struct Args(BTreeMap<&'static str, Vec<String>>);
impl Args {
    const PREFIX: &'static str = "prefix";
    const ALGORITHM: &'static str = "algorithm";
    const ARCH: &'static str = "arch";
    const API: &'static str = "api";
    const PROFILE: &'static str = "profile";
    pub fn new(attributes: impl ToString) -> Result<Self, String> {
        let mut map = BTreeMap::<&'static str, Vec<String>>::default();
        for entry in attributes.to_string().split(',') {
            let entry = entry.trim();
            if entry.is_empty() {
                continue;
            }
            let Some((key, value)) = entry.split_once(':') else {
                Err(format!("invalid entry: {entry}"))?
            };
            if value.contains(':') {
                Err(format!("invalid entry: {entry}"))?
            }
            let (key, value) = (key.trim(), value.trim());
            let key = match key {
                Self::PREFIX => Self::PREFIX,
                Self::ALGORITHM => Self::ALGORITHM,
                Self::ARCH => Self::ARCH,
                Self::API => Self::API,
                Self::PROFILE => Self::PROFILE,
                _ => Err(format!("invalid key: {key}"))?,
            };
            map.entry(key)
                .and_modify(|v| v.push(value.to_string()))
                .or_insert(vec![value.to_string()]);
        }
        for key in [Self::PREFIX, Self::ALGORITHM] {
            if Some(1) != map.get(key).map(Vec::len) {
                Err(format!("{key} not set"))?
            }
        }
        match map.get(Self::API).map(Vec::len) {
            None | Some(1) => {}
            _ => Err(format!("{key} has multiple entires", key = Self::API))?,
        }
        Ok(Self(map))
    }
    fn get_single(&self, key: &str) -> &str {
        self.0
            .get(key)
            .and_then(|x| x.first())
            .map(String::as_ref)
            .unwrap_or_default()
    }
    pub fn prefix(&self) -> &str {
        self.get_single(Self::PREFIX)
    }
    pub fn algorithm(&self) -> &str {
        self.get_single(Self::ALGORITHM)
    }
    pub fn arch(&self) -> &str {
        self.0
            .get(Self::ARCH)
            .and_then(|x| x.first())
            .map_or("x86_64", String::as_ref)
    }
    pub fn api(&self) -> &str {
        self.get_single(Self::API)
    }
    pub fn profiles(&self) -> &[String] {
        self.0.get(Self::PROFILE).map_or(&[], Vec::as_ref)
    }
    pub fn extend(&self, descriptor: &mut Descriptor) {
        for (&key, value) in &self.0 {
            let Some(value) = value.first() else {
                continue;
            };
            descriptor.insert(key, value);
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parse() {
        let content = r#"
prefix: haberdashery,
api: contiguous,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
"#;
        let args = Args::new(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.api(), "contiguous");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert_eq!(args.profiles(), ["haswell", "skylake"]);
    }

    #[test]
    fn parse_nospace() {
        let content = "prefix:haberdashery,api:contiguous,algorithm:aes256gcmsiv,profile:haswell,profile:skylake";
        let args = Args::new(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.api(), "contiguous");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert_eq!(args.profiles(), ["haswell", "skylake"]);
    }

    #[test]
    fn parse_empty_profiles() {
        let content = r#"
prefix: haberdashery,
api: contiguous,
algorithm: aes256gcmsiv,
"#;
        let args = Args::new(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.api(), "contiguous");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert!(args.profiles().is_empty());
    }

    #[test]
    fn parse_empty_commas() {
        let content = r#"
prefix: haberdashery,
,
,
,
api: contiguous,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
"#;
        let args = Args::new(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.api(), "contiguous");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert_eq!(args.profiles(), ["haswell", "skylake"]);
    }

    #[test]
    fn parse_no_commas() {
        let content = r#"
prefix: haberdashery
api: contiguous,
algorithm: aes256gcmsiv
profile: haswell 
profile: skylake 
"#;
        assert!(Args::new(content).unwrap_err().starts_with("invalid entry"));
    }

    #[test]
    fn parse_bad_kv() {
        let content = r#"
prefix: haberdashery,
api: contiguous,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
profile,
"#;
        assert_eq!(Args::new(content).unwrap_err(), "invalid entry: profile");
    }

    #[test]
    fn parse_unknown_key() {
        let content = r#"
prefix: haberdashery,
api: contiguous,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
banana: yum,
"#;
        assert_eq!(Args::new(content).unwrap_err(), "invalid key: banana");
    }
}
