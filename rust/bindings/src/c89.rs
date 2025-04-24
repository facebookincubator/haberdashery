// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

mod aead;
mod mac;

use std::path::Path;

use crate::Descriptors;
use crate::get_descriptors_from_flag;
use crate::write_generated;

pub fn bindings() {
    let path = crate::BINDINGS_PATH.join("c89");
    unit_bindings(&path, "aead", aead::HEADER_SRC, aead::TEST_SRC);
    unit_bindings(&path, "mac", mac::HEADER_SRC, mac::TEST_SRC);
}
pub fn unit_bindings(
    path: &Path,
    primitive: &str,
    header_source: &str,
    test_source: &str,
) -> Descriptors {
    let descriptors = get_descriptors_from_flag(primitive);
    let path = path.join(primitive);
    std::fs::create_dir_all(&path).unwrap_or_else(|e| panic!("{e}: Couldn't make path {path:?}"));
    for descriptor in descriptors.iter() {
        let name = &descriptor["name"];
        write_generated::c(
            path.join(format!("{name}.h")),
            descriptor.apply(header_source),
        )
        .unwrap();
        write_generated::c(
            path.join(format!("{name}_test.c")),
            descriptor.apply(test_source),
        )
        .unwrap();
    }
    write_generated::makefile(path.join("Makefile"), MAKEFILE).unwrap();
    descriptors
}
const MAKEFILE: &str = r#"CXX = cc
CXX_FLAGS = -pedantic -ansi
PRIMITIVE = $(shell basename $(CURDIR))

HDRS = $(wildcard *.h)
TARGETS = $(HDRS:.h=)
TESTS = $(HDRS:.h=.test.o)

all: test clean

test: $(TARGETS)

$(TARGETS): $(TESTS)
	@../../c89_make_test_runner.sh ./$@.test.o bindings/c89/${PRIMITIVE}/$@_test.c

%.test.o: %.o %_test.c %.h
	@$(CXX) $(CXX_FLAGS) -o $@ $^

%.o: ../../../asm/%.s
	@$(CXX) $(CXX_FLAGS) -o $@ -c $^

clean:
	@rm *.o
"#;
