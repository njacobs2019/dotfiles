#!/bin/bash

# Sets up flatpak and flathub

# Install Flatpak
sudo apt install flatpak -y

# Install the Software Flatpak plugin
sudo apt install gnome-software-plugin-flatpak -y

# Add the Flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

