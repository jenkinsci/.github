#!/bin/bash
# Accepts this will not work on macOS or FreeBSD or OpenBSD

set -euo pipefail

HERE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RELEASE_DRAFTER_CONFIG="$HERE/../.github/release-drafter.yml"

AJV_VERSION='3.2.0'

tmp_dir=$(mktemp -d -t ci-$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXXXX)
pushd $tmp_dir || exit

echo "Installing AJV"
npm install -s -g "ajv-cli@${AJV_VERSION}"

echo "Downloading the release drafter validation schema"
curl -Lso schema.json 'https://raw.githubusercontent.com/release-drafter/release-drafter/master/schema.json'

echo "Validating release drafter configuration"
ajv validate -s schema.json -d "${RELEASE_DRAFTER_CONFIG}"

popd || exit
rm -rf $tmp_dir
