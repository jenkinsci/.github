#!/usr/bin/env bash

set -euo pipefail

HERE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RELEASE_DRAFTER_CONFIG="$HERE/../.github/release-drafter.yml"

AJV_VERSION='3.2.0'

pushd $TMPDIR || exit
echo "Installing AJV"
npm install -s -g "ajv-cli@${AJV_VERSION}"

# TODO the schema should come from json schema once https://github.com/release-drafter/release-drafter/pull/600 is fixed
echo "Downloading the release drafter validation schema"
curl -Lso schema.json 'https://raw.githubusercontent.com/release-drafter/release-drafter/cec90728b088fe0fbc42bc15dd3d21bc59db34c6/schema.json'

echo "Validating release drafter configuration"
ajv validate -s schema.json -d "${RELEASE_DRAFTER_CONFIG}"

popd || exit
