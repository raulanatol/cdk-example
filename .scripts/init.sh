#!/bin/sh

set -eu

npm install

cd .architecture || exit 1
npm install
