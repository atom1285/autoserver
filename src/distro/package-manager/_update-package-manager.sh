#!/usr/bin/env bash

# Update apt

# General variable
ROOT_DIR="$(printenv AUTOSERVER_ROOT_DIR)"
THIS_DIR="$ROOT_DIR/src/distro/package-manager"

# Init info
echo ""
echo "#######################################################"
echo "# Update apt (discover all packages), and upgrade"

sudo "$THIS_DIR"/package-manager.sh update
sudo "$THIS_DIR"/package-manager.sh full-upgrade -y
