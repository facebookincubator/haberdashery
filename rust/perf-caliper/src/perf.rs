// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::fs::File;
use std::io::Write;
use std::os::fd::FromRawFd;

pub struct PerfControl(File);
impl PerfControl {
    pub unsafe fn from_raw_fd(fd: i32) -> Self {
        Self(std::fs::File::from_raw_fd(fd))
    }

    #[inline]
    pub fn enable(&mut self) {
        self.0.write_all(b"enable\n").unwrap();
    }

    #[inline]
    pub fn disable(&mut self) {
        self.0.write_all(b"disable\n").unwrap();
    }
}
