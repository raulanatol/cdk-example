#!/bin/sh

set -eu

npm run build

cd .architecture || exit 1
npm run build
npm run synth
