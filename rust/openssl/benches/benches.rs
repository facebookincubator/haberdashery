// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn report_metadata_mod(metadata: &mut nano_bench::ReportMetadata) {
    let profile = cpuid::processor().canonical_name();
    let Some(path) = metadata.get("path") else {
        return;
    };
    let path = path.replace("openssl_benchmarks", "openssl");
    let path = [&path, "_", profile].concat();

    metadata.put("path", path);
    metadata.put("profile", profile);
    metadata.put("version", openssl_benchmarks::version());
}
nano_bench::main! {openssl_benchmarks, report_metadata_mod}
