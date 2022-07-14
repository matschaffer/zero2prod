# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/rust/.devcontainer/base.Dockerfile
ARG VARIANT="bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/rust:1-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends lld clang && \
    rustup component add rls rust-analysis rust-src rustfmt clippy && \
    rustup toolchain install nightly --allow-downgrade && \
    rustup toolchain install beta && \
    rustup default beta
