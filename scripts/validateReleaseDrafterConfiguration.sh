#!/usr/bin/env bash

set -euo pipefail

HERE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RELEASE_DRAFTER_CONFIG="$HERE/../.github/release-drafter.yml"

AJV_VERSION='3.2.0'

pushd $TMPDIR || exit
echo "Installing AJV"
npm install -s -g "ajv-cli@${AJV_VERSION}"

echo "Downloading the release drafter validation schema"
curl -Lso schema.json 'https://raw.githubusercontent.com/release-drafter/release-drafter/master/schema.json'

echo "Validating release drafter configuration"
ajv validate -s schema.json -d "${RELEASE_DRAFTER_CONFIG}"

popd || exit
