#!/usr/bin/env bash

# General variable
ROOT_DIR="$(printenv AUTOSERVER_ROOT_DIR)"

sudo "$ROOT_DIR"/src/distro/package-manager/package-manager.sh install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo "$ROOT_DIR"/src/distro/package-manager/package-manager.sh update
sudo "$ROOT_DIR"/src/distro/package-manager/package-manager.sh install -y caddy