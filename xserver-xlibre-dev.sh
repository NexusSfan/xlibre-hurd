#!/usr/bin/env bash
# SPDX-License-Identifier: CC0

# install `xserver-xlibre-dev`

mkdir xlibre-devs-libs
cd ./xlibre-devs-libs

# hurd has no systemd support
export DEB_BUILD_PROFILES=nosystemd
export DEB_BUILD_OPTIONS=nocheck

git clone https://github.com/xlibre-debian/xlibre-server --depth 1
cd ./xlibre-server
dpkg-buildpackage -b --no-sign

cd ..
sudo apt install ./xserver-xlibre-dev_*.deb

cd ..
