#SPDX-License-Identifier: CC0

all: XLibreDebianPkgs

XLibreDebianPkgs:
	./manualxlibrebuildfordebian.sh

clean:
	rm -rf XLibreDebianPkgs || true
	rm -rf xlibre-devs-libs || true
	rm -rf xlibre-xorgproto || true

.PHONY: all clean
