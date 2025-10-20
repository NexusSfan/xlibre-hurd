#!/usr/bin/env bash
#SPDX-License-Identifier: CC0

# Packages that have yet to be ported officially to XLibre.
mkdir CustomXLibrePkgs
cd ./CustomXLibrePkgs
git clone https://salsa.debian.org/xorg-team/driver/xserver-xorg-input-mouse
git clone https://salsa.debian.org/xorg-team/driver/xserver-xorg-input-keyboard

cd ./xserver-xorg-input-mouse
git apply ../../mouse.diff
dpkg-buildpackage -b --no-sign
cd ..

cd ./xserver-xorg-input-keyboard
git apply ../../keyboard.diff
dpkg-buildpackage -b --no-sign
cd ..
