#!/bin/bash

# Programs for editing gnome and extensions

sudo dnf install gnome-tweaks  # rpm from Fedora repo
flatpak install fedora org.gnome.Extensions # from Fedora repo
# dnf info gnome-extensions-app # alternative
sudo dnf install dconf-editor -y

# Install dash-to-dock from Fedora repo
sudo dnf install gnome-shell-extension-dash-to-dock -y

# Gnome extension connector
sudo dnf install gnome-browser-connector -y
sudo dnf install gnome-shell-extension-blur-my-shell -y
sudo dnf install gnome-pomodoro -y

