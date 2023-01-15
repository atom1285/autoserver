#!/usr/bin/env bash

# main setup script entry point

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "#"
echo "# Welcome to Atom1285's autoserver"

sudo "$THIS_DIR"/src/setup/setup.sh "$@" --rootdir "$THIS_DIR"
