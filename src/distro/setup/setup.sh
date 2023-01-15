#!/usr/bin/env bash

# Distro setup script

echo "# Distro setup script"

VALID_ARGS=$(getopt -o a --long rootdir: -- "$@")
eval set -- "$VALID_ARGS"
if [[ $? -ne 0 ]]; then
    exit 1;
fi

while true; do
  case "$1" in
    --rootdir)
        echo "Processing 'rootdir' option. Input argument is '$2'"
        ROOT_DIR="$2"
        shift 2
        ;;
    --) shift;
        break
        ;;
  esac
done

sudo "$ROOT_DIR"/src/distro/setup/_create-env-for-root-dir.sh "$ROOT_DIR"

sudo "$ROOT_DIR"/src/distro/setup/_update-package-manager.sh
