// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::fs::File;
use std::io::Write;
use std::path::Path;

use anyhow::Context;
use anyhow::Result;

pub fn rust(path: impl AsRef<Path>, contents: impl AsRef<[u8]>) -> Result<()> {
    wrap(path, contents, "//", "")
}

pub fn toml(path: impl AsRef<Path>, contents: impl AsRef<[u8]>) -> Result<()> {
    wrap(path, contents, "#", "")
}
pub fn makefile(path: impl AsRef<Path>, contents: impl AsRef<[u8]>) -> Result<()> {
    wrap(path, contents, "#", "")
}
pub fn c(path: impl AsRef<Path>, contents: impl AsRef<[u8]>) -> Result<()> {
    wrap(path, contents, "/*", " */")
}
fn wrap(
    path: impl AsRef<Path>,
    contents: impl AsRef<[u8]>,
    prefix: &str,
    suffix: &str,
) -> Result<()> {
    fn inner(path: &Path, contents: &[u8], prefix: &str, suffix: &str) -> std::io::Result<()> {
        let mut file = File::create(path)?;
        file.write_all(prefix.as_bytes())?;
        file.write_all(b" @")?;
        file.write_all(b"generated")?;
        file.write_all(suffix.as_bytes())?;
        file.write_all(b"\n\n")?;
        file.write_all(contents.as_ref())?;
        Ok(())
    }
    let path = path.as_ref();
    if let Some(dir) = path.parent() {
        std::fs::create_dir_all(dir)
            .with_context(|| format!("Couldn't create directory {dir:?}"))?;
    }
    inner(path, contents.as_ref(), prefix, suffix)
        .with_context(|| format!("Couldn't write file {path:?}"))
}
