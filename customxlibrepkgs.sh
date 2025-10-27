#!/usr/bin/env bash
#SPDX-License-Identifier: CC0

# Packages that have yet to be ported officially to XLibre-Deb.
mkdir CustomXLibrePkgs
cd ./CustomXLibrePkgs
git clone https://salsa.debian.org/xorg-team/driver/xserver-xorg-input-mouse
# git clone https://salsa.debian.org/xorg-team/driver/xserver-xorg-input-keyboard

cd ./xserver-xorg-input-mouse
git apply ../../mouse.diff
dpkg-buildpackage -b --no-sign
cd ..

# cd ./xserver-xorg-input-keyboard
# git apply ../../keyboard.diff
# dpkg-buildpackage -b --no-sign
# cd ..

# extremely hacky code, but it works :P

KBD_LOC=$(python3 ../getkbdfile.py)

wget $KBD_LOC
dpkg-deb -R ./xserver-xorg-input-kbd_*.deb ./xserver-xorg-input-keyboard

mkdir ./xserver-xlibre-input-keyboard
cp -r ./xserver-xorg-input-keyboard/usr ./xserver-xlibre-input-keyboard
mkdir ./xserver-xlibre-input-keyboard/DEBIAN

cat << EOF > ./xserver-xlibre-input-keyboard/DEBIAN/control
Package: xserver-xlibre-input-kbd
Version: 1.0
Architecture: hurd-amd64
Maintainer: Debian X Strike Force <debian-x@lists.debian.org>
Description: xserver-xorg-input-kbd
EOF

dpkg-deb --root-owner-group --build ./xserver-xlibre-input-keyboard ./xserver-xlibre-input-kbd_1.0_hurd-amd64.deb
