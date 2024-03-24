# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

FROM alpine:3.19
RUN apk add \
  bash \
  make \
  build-base \
  --no-cache
WORKDIR src
COPY asm asm
COPY c c
COPY scripts scripts
CMD ["/bin/bash", "/src/scripts/make.sh"]
