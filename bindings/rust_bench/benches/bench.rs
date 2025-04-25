// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

extern crate haberdashery_lib;

fn version(algorithm: Option<&String>, profile: Option<&String>) -> Option<String> {
    let path = std::path::PathBuf::from(
        std::env::var("PROJECT_PATH")
            .as_ref()
            .map(String::as_str)
            .unwrap_or("../.."),
    );
    #[cfg(target_arch = "aarch64")]
    let path = path.join("asm/aarch64");
    #[cfg(target_arch = "x86_64")]
    let path = path.join("asm");

    let path = path.join(format!(
        "sha256/{algorithm}_{profile}.sha256",
        algorithm = algorithm?,
        profile = profile?,
    ));
    let fingerprint_file =
        std::fs::read_to_string(&path).unwrap_or_else(|e| panic!("{e}: Failed to read {path:?}"));
    let version_line = fingerprint_file
        .lines()
        .find(|line| !line.starts_with('#'))?;
    version_line.split(' ').next().map(str::to_owned)
}

fn main() {
    perf_caliper::benchmark_main::main(Some(|metadata| {
        if let Some(version) = version(metadata.get("algorithm"), metadata.get("profile")) {
            metadata.insert("version".to_string(), version);
            metadata.remove("path");
        }
    }));
}
