#!/usr/bin/env bash

cat > ~/.pgpass <<EOF
${PGHOST}:${PGPORT}:${PGDATABASE}:${PGUSER}:${POSTGRES_PASSWORD}
EOF

cargo install cargo-edit cargo-watch cargo-tarpaulin cargo-expand