# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

FROM alpine:3.19
RUN apk add \
  bash \
  build-base \
  curl \
  --no-cache
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH=/root/.cargo/bin:$PATH
ENV CARGO_TARGET_DIR=/root/cargo
RUN rustup install nightly-2023-12-13
WORKDIR src
COPY asm asm
COPY rust rust
COPY scripts scripts
COPY test_vectors test_vectors
CMD ["/bin/bash", "/src/scripts/cargo.sh"]
