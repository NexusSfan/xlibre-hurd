#!/usr/bin/env bash

#install `xserver-xlibre-dev`

mkdir xlibre-devs-libs
cd ./xlibre-devs-libs

# hurd has no systemd support
export DEB_BUILD_PROFILES=nosystemd

git clone https://github.com/xlibre-deb/xlibre-server
cd ./xlibre-server
dpkg-buildpackage -b --no-sign

cd ..
sudo apt install ./xserver-xlibre-dev_*.deb

cd ..