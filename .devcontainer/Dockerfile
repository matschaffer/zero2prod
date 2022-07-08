# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/rust/.devcontainer/base.Dockerfile
ARG VARIANT="bullseye"

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends lld clang && \
    rustup component add rls rust-analysis rust-src rustfmt clippy && \
    cargo install cargo-edit cargo-watch cargo-tarpaulin
