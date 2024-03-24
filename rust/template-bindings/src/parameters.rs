// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use convert_case::Case;
use convert_case::Casing;
use haberdashery_template_descriptor::constant::Constants;
use haberdashery_template_descriptor::descriptor::Descriptor;

pub trait ExtendParameters {
    fn extend(self, params: &mut TemplateParameters);
}

impl ExtendParameters for &Descriptor {
    fn extend(self, params: &mut TemplateParameters) {
        params.insert("prefix", &self.prefix);
        params.insert("algorithm", &self.algorithm);
        params.insert("profile", &self.profile);
        params.insert("struct_name", &self.struct_name);
    }
}

impl ExtendParameters for &Constants {
    fn extend(self, params: &mut TemplateParameters) {
        for constant in self.as_ref() {
            params.insert(&format!("{}_NAME", constant.name), &constant.name);
            params.insert(&format!("{}_VALUE", constant.name), &constant.value);
        }
    }
}

#[derive(Clone)]
pub struct TemplateParameters {
    map: Vec<(String, String)>,
}
impl Default for TemplateParameters {
    fn default() -> Self {
        Self {
            map: vec![("generated".to_string(), format!("@{}generated", ""))],
        }
    }
}
impl From<&Descriptor> for TemplateParameters {
    fn from(descriptor: &Descriptor) -> Self {
        let mut this = Self::default();
        this.insert("prefix", &descriptor.prefix);
        this.insert("algorithm", &descriptor.algorithm);
        this.insert("profile", &descriptor.profile);
        this.insert("struct_name", &descriptor.struct_name);
        this
    }
}
impl TemplateParameters {
    pub fn insert(&mut self, key: &str, value: &str) {
        self.map.push((key.to_string(), value.to_string()));
    }
    pub fn apply(&self, template: &str) -> String {
        let mut result = template.to_string();
        for (key, value) in &self.map {
            result = result
                .replace(&format!("{{{key}}}"), value)
                .replace(&format!("{{{key}:Snake}}"), &value.to_case(Case::Snake))
                .replace(
                    &format!("{{{key}:UpperCamel}}"),
                    &value.to_case(Case::UpperCamel),
                )
                .replace(
                    &format!("{{{key}:UpperSnake}}"),
                    &value.to_case(Case::UpperSnake),
                )
                .replace(&format!("{{{key}:Flat}}"), &value.to_case(Case::Flat));
        }
        result
    }
}
