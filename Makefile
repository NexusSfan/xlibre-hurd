#SPDX-License-Identifier: CC0

all: XLibreDebianPkgs CustomXLibrePkgs

CustomXLibrePkgs:
	./customxlibrepkgs.sh

XLibreDebianPkgs:
	./manualxlibrebuildfordebian.sh

clean:
	rm -rf XLibreDebianPkgs
	rm -rf CustomXLibrePkgs
	rm -rf xlibre-devs-libs

.PHONY: all clean
