#!/bin/bash

# Symlink the config file
dnf_config="/etc/dnf/dnf.conf"
sudo rm $dnf_config
sudo ln -s $DOTFILES/dnf/dnf.conf $dnf_config

# Update the system
sudo dnf update -y

# Setup rpm fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
# Enable GUI access
sudo dnf groupupdate core -y

# Add Flathub as remote for Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

