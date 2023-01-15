#!/usr/bin/env bash

# Create environment variable for the root directory

# General variable
ROOT_DIR=$1
ETC_ENVIRONMENT_FILE="/etc/environment"

# Init info
echo ""
echo "#######################################################"
echo "# Setup autoserver root dir environment variable"

echo "AUTOSERVER_ROOT_DIR=\"$ROOT_DIR" | sudo tee -a $ETC_ENVIRONMENT_FILE
