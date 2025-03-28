#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eux -o pipefail

main() {
  local -r COMMAND="${1}"; shift
  if [ "${COMMAND}" == "perf" ]; then
    local -r ARGS=("$@")
    local -r PIPE="/tmp/perf.fifo"
    cargo bench --no-run "${ARGS[@]}"
    test -p "${PIPE}" && unlink "${PIPE}"
    mkfifo "${PIPE}"
    exec {PIPE_FD}<>${PIPE}

    perf record \
      -D -1 \
      -e cycles:P \
      --control fd:"${PIPE_FD}" \
      --call-graph=dwarf \
      cargo bench \
      "${ARGS[@]}" \
      --perf="${PIPE_FD}" \
      --event-group=none
    perf report \
      --objdump="$(which objdump)" \
      --symbol-filter=haberdashery \
      --children \
      -g graph,,callee
  elif [ "${COMMAND}" == "report" ]; then
    perf report \
      --objdump="$(which objdump)" \
      --symbol-filter=haberdashery \
      --children \
      -g graph,,callee
  else
    cargo "${COMMAND}" "${@}"
  fi
}

main "${@}"
