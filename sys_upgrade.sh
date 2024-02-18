#!/bin/bash

print(){
	echo "*************** $1 ***************"
}

print "UPGRADING SYSTEM"

# APT
print "APT UPDATE"
sudo apt update

print "APT UPGRADE"
sudo apt upgrade -y

print "APT AUTOREMOVE"
sudo apt autoremove -y

# FLATPAK
print "FLATPAK UPDATE"
flatpak update -y

print "FLATPAK CLEAN"
flatpak uninstall --unused

# SNAP
print "SNAP REFRESH"
sudo snap refresh

