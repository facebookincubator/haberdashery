// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use serde::Deserialize;

pub fn intrinsics() -> Vec<Intrinsic> {
    let file_path = "data/intrinsics.xml";
    let file_content = std::fs::read_to_string(file_path)
        .unwrap_or_else(|e| panic!("Failed to read {file_path}. Try running gen/download.sh: {e}"));
    IntrinsicList::new(&file_content).unwrap().intrinsic
}

#[derive(Debug, Deserialize, PartialEq)]
pub struct IntrinsicList {
    intrinsic: Vec<Intrinsic>,
}
impl IntrinsicList {
    pub fn new(s: &str) -> Result<Self, serde_xml_rs::Error> {
        serde_xml_rs::from_str(s)
    }
    pub fn intrinsics(&self) -> &[Intrinsic] {
        &self.intrinsic
    }
}
#[derive(Debug, Deserialize, PartialEq)]
pub struct Intrinsic {
    name: String,
    #[serde(rename = "return")]
    return_: Return,
    parameter: Option<Vec<Parameter>>,
}
impl Intrinsic {
    pub fn name(&self) -> &str {
        &self.name
    }
    pub fn return_type(&self) -> &str {
        &self.return_.type_
    }
    pub fn return_etype(&self) -> Option<&str> {
        self.return_.etype.as_deref()
    }
    pub fn parameters(&self) -> &[Parameter] {
        self.parameter.as_deref().unwrap_or_default()
    }
}
#[derive(Debug, Deserialize, PartialEq)]
pub struct Return {
    #[serde(rename = "type")]
    type_: String,
    etype: Option<String>,
}
#[derive(Debug, Deserialize, PartialEq)]
pub struct Parameter {
    varname: Option<String>,
    #[serde(rename = "type")]
    type_: String,
    etype: Option<String>,
}
impl Parameter {
    pub fn name(&self) -> Option<&str> {
        self.varname.as_deref()
    }
    pub fn type_(&self) -> &str {
        &self.type_
    }
    pub fn etype(&self) -> Option<&str> {
        self.etype.as_deref()
    }
}
