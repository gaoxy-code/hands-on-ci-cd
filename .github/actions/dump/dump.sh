#!/usr/bin/env bash
set -euo pipefail

# Print all environment variables sorted
printenv | sort

# Conditionally print the GitHub context (passed in via CONTEXT env)
if [ "${ENABLE_CONTEXT:-true}" = "true" ]; then
  echo "${CONTEXT}"
fi

# Set the 'date' output so the composite action can map it to outputs
# GITHUB_OUTPUT is provided by the Actions runner
echo "date=$(date)" >> "${GITHUB_OUTPUT}"
