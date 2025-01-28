#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eux -o pipefail

PROJECT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")/.."; pwd )"
readonly PROJECT_DIR

do_podman() {
  local -r NAME="${1}"; shift
  podman build -t "${NAME}" -f podman/"${NAME}".Dockerfile .
  podman run "${@}" -it "${NAME}"
}

main() {
  cd "${PROJECT_DIR}"
  if [ $# -eq 0 ]; then
    do_podman assembly -v .:/src
    do_podman bindings -v .:/src
    do_podman test_c89
    do_podman test_openssl_evp
    do_podman test_rust
  else
    do_podman "$@"
  fi
}

main "$@"
