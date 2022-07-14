# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/rust/.devcontainer/base.Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/rust:1-bullseye

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
      lld clang \
      postgresql-client \
    && \
    rustup toolchain install beta && \
    rustup default beta && \
    rustup component add rls rust-analysis rust-src rustfmt clippy
