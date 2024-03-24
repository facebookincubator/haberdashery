// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

fn report_metadata_mod(metadata: &mut nano_bench::ReportMetadata) {
    let Some(path) = metadata.get("path") else {
        return;
    };
    metadata.put(
        "path",
        path.replace("haberdashery_sys_traits", "haberdashery"),
    );
}
nano_bench_proc::main! {haberdashery_sys_traits, report_metadata_mod}
