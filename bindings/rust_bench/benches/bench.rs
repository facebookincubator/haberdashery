// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn version(algorithm: Option<&str>, profile: Option<&str>) -> Option<String> {
    let path = std::path::PathBuf::from(
        std::env::var("PROJECT_PATH")
            .as_ref()
            .map(String::as_str)
            .unwrap_or("../.."),
    )
    .join(format!(
        "asm/sha256/{algorithm}_{profile}.sha256",
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

fn report_metadata_mod(metadata: &mut nano_bench::ReportMetadata) {
    if let Some(path) = metadata.get("path") {
        let path = path.replace("haberdashery_lib", "haberdashery");
        let path = path.strip_suffix("_benchmarks").unwrap_or(&path);
        metadata.put("path", path);
    };
    if let Some(version) = version(metadata.get("algorithm"), metadata.get("profile")) {
        metadata.put("version", version);
    }
    metadata.put("library", "haberdashery");
}
nano_bench::main! {haberdashery_lib, report_metadata_mod}
