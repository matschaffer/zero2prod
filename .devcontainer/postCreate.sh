#!/usr/bin/env bash

cat > ~/.pgpass <<EOF
${PGHOST}:${PGPORT}:${PGDATABASE}:${PGUSER}:${POSTGRES_PASSWORD}
EOF
chmod 600 ~/.pgpass

sudo chown vscode:vscode /usr/local/cargo/registry
cargo install cargo-edit cargo-watch cargo-tarpaulin cargo-expand
