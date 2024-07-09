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
  mkdir -p "${SCRIPT_DIR}/data/"
  cd "${SCRIPT_DIR}/data/"
  git --git-dir=. clone --depth=1 https://github.com/intel/perfmon
}

main "$@"
