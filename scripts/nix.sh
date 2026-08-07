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

if command -v nix >/dev/null; then
  NIX=nix
elif [ -x /nix/var/nix/profiles/default/bin/nix ]; then
  NIX=/nix/var/nix/profiles/default/bin/nix
else
  NIX_INSTALL_HINT="install it using your system package manager"
  echo "Nix is not installed; ${NIX_INSTALL_HINT}" >&2
  exit 1
fi
readonly NIX


run_shell() {
  local -r NAME="${1}"; shift
  "${NIX}" develop "${PROJECT_DIR}#${NAME}" --command "$@"
}

run_named_shell() {
  local -r NAME="${1}"; shift
  case "${NAME}" in
    assembly)
      run_shell assembly "${PROJECT_DIR}/scripts/asm.sh" "$@"
      ;;
    bindings)
      run_shell bindings "${PROJECT_DIR}/scripts/bindings.sh" "$@"
      ;;
    test_c89)
      run_shell test_c89 "${PROJECT_DIR}/scripts/make.sh" bindings/c89
      ;;
    test_openssl_evp)
      run_shell test_openssl_evp "${PROJECT_DIR}/scripts/make.sh" bindings/openssl_evp
      ;;
    test_rust)
      run_shell test_rust "${PROJECT_DIR}/scripts/cargo.sh" "$@"
      ;;
    *)
      echo "Usage: $0 [assembly|bindings|test_c89|test_openssl_evp|test_rust]" >&2
      return 2
      ;;
  esac
}

main() {
  cd "${PROJECT_DIR}"
  if [ $# -ne 0 ]; then
    local -r NAME="${1}"; shift
    run_named_shell "${NAME}" "$@"
    return
  fi

  run_named_shell assembly
  run_named_shell bindings
  run_named_shell test_c89
  run_named_shell test_openssl_evp
  run_named_shell test_rust
}

main "$@"
