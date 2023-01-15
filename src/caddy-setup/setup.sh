#!/usr/bin/env bash

# Caddy setup script

# General variable
ROOT_DIR="$(printenv AUTOSERVER_ROOT_DIR)"
THIS_DIR="$ROOT_DIR/src/caddy-setup"

# Init info
echo "#"
echo "# Setup Caddy"

sudo "$THIS_DIR"/_install-caddy.sh
