#!/bin/sh

set -eu

cd .architecture || exit 1
npm run deploy
