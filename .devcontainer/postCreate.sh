#!/usr/bin/env bash

cat > ~/.pgpass <<EOF
${PGHOST}:${PGPORT}:${PGDATABASE}:${PGUSER}:${POSTGRES_PASSWORD}
EOF
chmod 600 ~/.pgpass

sudo chown vscode:vscode /usr/local/cargo/registry
cargo install cargo-edit cargo-watch cargo-tarpaulin cargo-expand cargo-audit cargo-udeps

cargo install --version=0.6.2 sqlx-cli --no-default-features --features rustls,postgres

cargo install bunyan

sqlx migrate run
