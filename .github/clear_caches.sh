#!/usr/bin/env bash

set -euo pipefail

REPO="$(gh repo view --json nameWithOwner -q ".nameWithOwner")"
echo "Querying caches for: ${REPO}"

for KEY in $(gh api "/repos/${REPO}/actions/caches" | jq -r '.actions_caches | .[].key'); do
  echo "Deleting cache: ${KEY}"
  gh api -X DELETE "/repos/${REPO}/actions/caches?key=${KEY}"
done
