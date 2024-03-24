// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::path::Path;

use haberdashery_template_descriptor::constant::Constants;
use haberdashery_template_descriptor::descriptor::Descriptor;
use haberdashery_template_descriptor::descriptor::StructMember;

use crate::include_out_dir_str;
use crate::parameters::ExtendParameters;
use crate::Primitive;
use crate::TemplateParameters;

pub fn struct_content(descriptor: &Descriptor) -> String {
    let mut struct_members = vec![];
    for StructMember { name, ty, len } in &descriptor.struct_members {
        struct_members.push(format!("{ty} {name}[{len}];"));
    }
    struct_members.join("\n")
}

const MAKEFILE: &str = include_out_dir_str!("/templates/c/Makefile.template");

pub const AEAD: Template = Template {
    header_template: include_out_dir_str!("/templates/c/aead.h.template"),
    test_template: include_out_dir_str!("/templates/c/aead_test.c.template"),
    out_subdir: "aead",
};

pub const MAC: Template = Template {
    header_template: include_out_dir_str!("/templates/c/mac.h.template"),
    test_template: include_out_dir_str!("/templates/c/mac_test.c.template"),
    out_subdir: "mac",
};

pub struct Template {
    header_template: &'static str,
    test_template: &'static str,
    out_subdir: &'static str,
}
impl From<&Primitive> for Template {
    fn from(primitive: &Primitive) -> Self {
        match primitive {
            Primitive::Aead => AEAD,
            Primitive::Mac => MAC,
        }
    }
}

impl Template {
    pub fn bindings(
        &self,
        out_path: &Path,
        constants: &Constants,
        descriptors: &[Descriptor],
    ) -> anyhow::Result<()> {
        let algorithm = &descriptors[0].algorithm;
        let out_path = out_path.join(self.out_subdir).join(algorithm);

        std::fs::create_dir_all(&out_path)?;
        for descriptor in descriptors {
            let profile = &descriptor.profile;
            let mut params = TemplateParameters::from(descriptor);
            params.insert("struct_content", &struct_content(descriptor));
            constants.extend(&mut params);
            std::fs::write(
                out_path.join(format!("{profile}.h")),
                params.apply(self.header_template).as_bytes(),
            )?;
            std::fs::write(
                out_path.join(format!("{profile}_test.c")),
                params.apply(self.test_template).as_bytes(),
            )?;
            std::fs::write(out_path.join("Makefile"), params.apply(MAKEFILE).as_bytes())?;
        }
        Ok(())
    }
}
