#SPDX-License-Identifier: CC0

all: XLibreDebianPkgs CustomXLibrePkgs

CustomXLibrePkgs:
	./customxlibrepkgs.sh

XLibreDebianPkgs:
	./manualxlibrebuildfordebian.sh
