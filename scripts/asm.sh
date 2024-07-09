#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

PROJECT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")/.."; pwd )"
readonly PROJECT_DIR

main() {
  mkdir -p "${PROJECT_DIR}/asm"
  cd "${PROJECT_DIR}/rust/asm-gen"
  if [ $# -eq 0 ]; then
    find . -name "generate.sh" -exec {} \;
  else
    local -r ALG="${1}"; shift
    "${ALG}"/generate.sh "$@"
  fi
}

main "$@"
