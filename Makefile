#SPDX-License-Identifier: CC0

all: XLibreDebianPkgs CustomXLibrePkgs

XLibreDebianPkgs:
	./manualxlibrebuildfordebian.sh

clean:
	rm -rf XLibreDebianPkgs
	rm -rf xlibre-devs-libs

.PHONY: all clean
