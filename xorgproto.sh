#!/usr/bin/env bash
# SPDX-License-Identifier: CC0

# install `xorgproto`

mkdir xlibre-xorgproto
cd ./xlibre-xorgproto

# hurd has no systemd support
export DEB_BUILD_PROFILES=nosystemd

git clone https://github.com/xlibre-debian/xorgproto
cd ./xorgproto
dpkg-buildpackage -b --no-sign

cd ..
sudo apt install ./x11proto-dev_*.deb

cd ..
