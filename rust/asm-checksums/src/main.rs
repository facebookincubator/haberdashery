// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::io::Write;
use std::path::PathBuf;

static PROJECT_PATH: static_env::Env<PathBuf> = static_env::Env::new("PROJECT_PATH", "../..");

fn main() {
    compute_sums(&mut std::io::stdout(), &PROJECT_PATH.join("asm"));
}
fn compute_sums(w: &mut dyn Write, path: &PathBuf) {
    let mut rows = vec![];
    for path in std::fs::read_dir(path).unwrap().filter_map(Result::ok) {
        let filename = path.file_name();
        let Some((alg_profile, filename)) = filename
            .to_str()
            .and_then(|s| s.strip_suffix(".s").zip(Some(s)))
        else {
            continue;
        };
        let Some((alg, profile)) = alg_profile.rsplit_once('_') else {
            continue;
        };
        let mut file = std::fs::File::open(path.path()).unwrap();
        let mut hasher = sha2::Sha256::new();
        use sha2::Digest;
        std::io::copy(&mut file, &mut hasher).unwrap();
        let hash = hex::encode(hasher.finalize());
        rows.push(format!("{filename}:{alg}:{profile}:{hash}"));
    }
    rows.sort();
    rows.iter().for_each(|row| writeln!(w, "{row}").unwrap());
}

#[test]
fn compare() {
    let path = PROJECT_PATH.join("asm");
    let mut computed = vec![];
    compute_sums(&mut computed, &path);
    let computed = std::str::from_utf8(&computed).unwrap();
    let existing = std::fs::read_to_string(path.join("sha256sums.txt")).unwrap();
    pretty_assertions::assert_eq!(computed, existing);
}
