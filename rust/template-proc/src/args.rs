// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use proc_macro2::TokenStream;

#[derive(Default)]
#[derive(Debug, PartialEq)]
pub struct Args {
    algorithm: Option<String>,
    prefix: Option<String>,
    profiles: Vec<String>,
}

impl TryFrom<&str> for Args {
    type Error = String;
    fn try_from(attributes: &str) -> Result<Self, Self::Error> {
        let mut algorithm: Option<String> = None;
        let mut prefix: Option<String> = None;
        let mut profiles: Vec<String> = vec![];
        for kv in attributes.split(',') {
            let kv = kv.trim();
            if kv.is_empty() {
                continue;
            }
            let kv_vec: Vec<&str> = kv.split(':').collect();
            let [key, value] = kv_vec
                .try_into()
                .map_err(|_| format!("invalid entry: {kv}"))?;
            match key.trim() {
                "algorithm" => algorithm = Some(value.trim().to_string()),
                "prefix" => prefix = Some(value.trim().to_string()),
                "profile" => profiles.push(value.trim().to_string()),
                _ => Err(format!("invalid key: {key}"))?,
            }
        }
        Ok(Args {
            algorithm,
            prefix,
            profiles,
        })
    }
}
impl TryFrom<TokenStream> for Args {
    type Error = String;
    fn try_from(attributes: TokenStream) -> Result<Self, Self::Error> {
        Self::try_from(attributes.to_string().as_str())
    }
}
impl Args {
    pub fn prefix(&self) -> &str {
        self.prefix
            .as_ref()
            .map(|s| s.as_ref())
            .expect("prefix not set")
    }
    pub fn algorithm(&self) -> &str {
        self.algorithm
            .as_ref()
            .map(|s| s.as_ref())
            .expect("algorithm not set")
    }
    pub fn profiles(&self) -> &[String] {
        self.profiles.as_ref()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parse() {
        let content = r#"
prefix: haberdashery,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
"#;
        let args = Args::try_from(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert_eq!(args.profiles(), ["haswell", "skylake"]);
    }

    #[test]
    fn parse_nospace() {
        let content = "prefix:haberdashery,algorithm:aes256gcmsiv,profile:haswell,profile:skylake";
        let args = Args::try_from(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert_eq!(args.profiles(), ["haswell", "skylake"]);
    }

    #[test]
    fn parse_empty_profiles() {
        let content = r#"
prefix: haberdashery,
algorithm: aes256gcmsiv,
"#;
        let args = Args::try_from(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
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
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
"#;
        let args = Args::try_from(content).unwrap();
        assert_eq!(args.prefix(), "haberdashery");
        assert_eq!(args.algorithm(), "aes256gcmsiv");
        assert_eq!(args.profiles(), ["haswell", "skylake"]);
    }

    #[test]
    fn parse_no_commas() {
        let content = r#"
prefix: haberdashery
algorithm: aes256gcmsiv
profile: haswell 
profile: skylake 
"#;
        assert!(
            Args::try_from(content)
                .unwrap_err()
                .starts_with("invalid entry")
        );
    }

    #[test]
    fn parse_bad_kv() {
        let content = r#"
prefix: haberdashery,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
profile,
"#;
        assert_eq!(
            Args::try_from(content).unwrap_err(),
            "invalid entry: profile"
        );
    }

    #[test]
    fn parse_unknown_key() {
        let content = r#"
prefix: haberdashery,
algorithm: aes256gcmsiv,
profile: haswell, 
profile: skylake, 
banana: yum,
"#;
        assert_eq!(Args::try_from(content).unwrap_err(), "invalid key: banana");
    }
}
