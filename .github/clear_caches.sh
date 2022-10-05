#!/usr/bin/env bash

set -euxo pipefail

for KEY in $(gh api /repos/matschaffer/zero2prod/actions/caches | jq -r '.actions_caches | .[].key'); do
  gh api -X DELETE "/repos/matschaffer/zero2prod/actions/caches?key=${KEY}"
done
