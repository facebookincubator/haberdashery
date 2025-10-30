# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

FROM debian:bookworm-slim

# install dependencies
RUN apt-get update
RUN apt-get install \
  bash \
  build-essential \
  curl \
  -y

# install rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH=/root/.cargo/bin:$PATH
ENV CARGO_TARGET_DIR=/root/cargo
RUN rustup target add x86_64-unknown-linux-gnu --toolchain nightly-2025-08-01

WORKDIR src
CMD ["/bin/bash", "/src/scripts/asm.sh"]
