#!/usr/bin/env bash

set -euo pipefail

cargo install sqlx-cli --force --version=0.6.2 --features=postgres,rustls --no-default-features --locked
