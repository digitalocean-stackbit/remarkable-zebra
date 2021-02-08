#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://develop.widget.stackbit.com/init.js 60210790a05f14001538006e

echo "stackbit-build.sh: finished build"
