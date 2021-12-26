#!/usr/bin/env bash

set -euox pipefail

node --version
npm --version

HERE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RELEASE_DRAFTER_CONFIG="$HERE/../.github/release-drafter.yml"

echo "Validating release drafter configuration"

node $HERE/fetch-schema.mjs

$HERE/node_modules/.bin/ajv validate -s schema.json -d "${RELEASE_DRAFTER_CONFIG}"
