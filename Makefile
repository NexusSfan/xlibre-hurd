all: XLibreDebianPkgs CustomXLibrePkgs

CustomXLibrePkgs:
	./customxlibrepkgs.sh

XLibreDebianPkgs:
	./manualxlibrebuildfordebian.sh
