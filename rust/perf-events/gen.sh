#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

SCRIPT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")"; pwd )"
readonly SCRIPT_DIR

main() {
  cd "${SCRIPT_DIR}/gen"
  rm -f "${SCRIPT_DIR}/src/"*
  touch "${SCRIPT_DIR}/src/lib.rs"
  echo "Testing"
  cargo test -q
  echo "Building"
  cargo build --release -q
  echo "Running"
  cargo run --release -q
  cd "${SCRIPT_DIR}"
  cargo test -q
}

main "$@"
