#!/usr/bin/env bash

# Main setup script
# Variables
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Init info
echo "#"
echo "# Setup script"

#VALID_ARGS=$(getopt -o abg:d: --long alpha,beta,gamma:,delta: -- "$@")
VALID_ARGS=$(getopt -o a --long rootdir: -- "$@")
eval set -- "$VALID_ARGS"
if [[ $? -ne 0 ]]; then
    exit 1;
fi

while true; do
  case "$1" in
    -a | --alpha)
        echo "Processing 'alpha' option"
        shift
        ;;
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

sudo "$ROOT_DIR"/src/distro/setup/setup.sh --rootdir "$ROOT_DIR"