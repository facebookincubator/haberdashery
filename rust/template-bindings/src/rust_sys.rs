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
        struct_members.push(format!("{name}: [{ty}; {len}],"));
    }
    struct_members.join("\n")
}

pub const AEAD: Template = Template {
    lib_template: include_out_dir_str!("/templates/rust_sys/aead.rs.template"),
    benchmark_template: include_out_dir_str!("/templates/rust_sys/aead_benchmarks.rs.template"),
    trait_template: include_out_dir_str!("/templates/rust_sys/aead_trait.rs.template"),
    mod_template: include_out_dir_str!("/templates/rust_sys/aead_mod.rs.template"),
    out_subdir: "aead",
};

pub const MAC: Template = Template {
    lib_template: include_out_dir_str!("/templates/rust_sys/mac.rs.template"),
    benchmark_template: include_out_dir_str!("/templates/rust_sys/mac_benchmarks.rs.template"),
    trait_template: include_out_dir_str!("/templates/rust_sys/mac_trait.rs.template"),
    mod_template: include_out_dir_str!("/templates/rust_sys/mac_mod.rs.template"),
    out_subdir: "mac",
};

pub struct Template {
    lib_template: &'static str,
    benchmark_template: &'static str,
    trait_template: &'static str,
    mod_template: &'static str,
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
        let benchmark_out_path = out_path.join("../benchmarks/src").join(self.out_subdir);
        let trait_out_path = out_path.join("../traits/src").join(self.out_subdir);
        let out_path = out_path.join(self.out_subdir);

        let mut modules = vec![];
        for descriptor in descriptors {
            let profile = &descriptor.profile;
            modules.push(format!("pub mod {profile};"));
            let mut params = TemplateParameters::from(descriptor);
            params.insert("struct_content", &struct_content(descriptor));
            constants.extend(&mut params);
            std::fs::create_dir_all(out_path.join(algorithm))?;
            std::fs::write(
                out_path.join(algorithm).join(format!("{profile}.rs")),
                params.apply(self.lib_template).as_bytes(),
            )?;
            std::fs::create_dir_all(benchmark_out_path.join(algorithm))?;
            std::fs::write(
                benchmark_out_path
                    .join(algorithm)
                    .join(format!("{profile}.rs")),
                params.apply(self.benchmark_template).as_bytes(),
            )?;
            std::fs::create_dir_all(trait_out_path.join(algorithm))?;
            std::fs::write(
                trait_out_path.join(algorithm).join(format!("{profile}.rs")),
                params.apply(self.trait_template).as_bytes(),
            )?;
        }
        modules.sort();

        let mut params = TemplateParameters::default();
        params.insert("modules", &modules.join("\n"));
        let module = params.apply(self.mod_template);
        let module = module.as_bytes();
        std::fs::write(out_path.join(format!("{algorithm}.rs")), module)?;
        std::fs::write(benchmark_out_path.join(format!("{algorithm}.rs")), module)?;
        std::fs::write(trait_out_path.join(format!("{algorithm}.rs")), module)?;
        Ok(())
    }
}
