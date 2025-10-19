#!/usr/bin/env bash
#SPDX-License-Identifier: CC0-1.0

# remove this if you do have systemd
export DEB_BUILD_PROFILES=nosystemd

mkdir ~/XLibreDebianPkgs
cd ~/XLibreDebianPkgs

function build_package() {
    local name=$1

    mkdir "$name"
    cd "$name" || exit
    git clone "https://github.com/xlibre-deb/$name"
    cd "$name" || exit
    dpkg-buildpackage -b --no-sign
    cd ../.. || exit
}

build_package xlibre
build_package xlibre-server
build_package xserver-xlibre-input-elographics
build_package xserver-xlibre-input-evdev
build_package xserver-xlibre-input-libinput
build_package xserver-xlibre-input-synaptics
build_package xserver-xlibre-input-vmmouse
build_package xserver-xlibre-input-void
build_package xserver-xlibre-input-wacom
build_package xserver-xlibre-video-amdgpu
build_package xserver-xlibre-video-ati
build_package xserver-xlibre-video-dummy
build_package xserver-xlibre-video-fbdev
build_package xserver-xlibre-video-intel
build_package xserver-xlibre-video-nouveau
build_package xserver-xlibre-video-qxl
build_package xserver-xlibre-video-sisusb
build_package xserver-xlibre-video-vesa
build_package xserver-xlibre-video-vmware
build_package xserver-xlibre-video-voodoo
build_package xorgproto
