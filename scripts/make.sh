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
  cd "${PROJECT_DIR}"
  if [ $# -ne 0 ]; then
    cd "${1}"
  fi
  shopt -s globstar
  for file in **/Makefile; do
    pushd "$(dirname "${file}")" > /dev/null
    make test clean || (make clean && exit 1)
    popd > /dev/null
  done
}

main "$@"
