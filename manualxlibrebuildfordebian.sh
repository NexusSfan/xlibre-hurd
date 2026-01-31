#!/usr/bin/env bash
#SPDX-License-Identifier: CC0-1.0

# hurd has no systemd support
export DEB_BUILD_PROFILES=nosystemd
export DEB_BUILD_OPTIONS=nocheck

mkdir XLibreDebianPkgs
cd ./XLibreDebianPkgs

function build_package() {
    local name=$1

    mkdir "$name"
    cd "$name" || exit
    git clone "https://github.com/xlibre-debian/$name" --depth 1
    cd "$name" || exit
    gbp buildpackage --git-builder="debuild -i -I -us -uc" --git-debian-branch="xlibre/latest"
    cd ../.. || exit
}

build_package xlibre
build_package xlibre-server
build_package xserver-xlibre-input-elographics
build_package xserver-xlibre-input-evdev
build_package xserver-xlibre-input-libinput
build_package xserver-xlibre-input-mouse
build_package xserver-xlibre-input-keyboard
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
