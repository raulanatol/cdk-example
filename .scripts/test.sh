#!/bin/sh

set -eu

npm run test

cd .architecture || exit 1
npm run test
