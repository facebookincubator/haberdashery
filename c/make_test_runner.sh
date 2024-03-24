#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

main() {
  local -r BIN="${1}"; shift
  local -r NAME="${1}"; shift
  if "${BIN}"; then
    echo -e "\e[32mPASS ${NAME}\e[0m"
  else
    echo -e "\e[31mFAIL ${NAME} $?\e[0m"
  fi
}

main "$@"
