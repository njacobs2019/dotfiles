#!/bin/bash

# Command line tools:
sudo dnf install btop tmux -y

dnf install google-chrome-stable -y
sudo dnf install solaar -y # Fedora repo tool for Logitech devices
flatpak install flathub net.cozic.joplin_desktop -y
flatpak install flathub com.slack.Slack -y
flatpak install com.spotify.Client -y
flatpak install fedora com.github.tchx84.Flatseal

# Setup VS-Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y

# Install Zoom
wget https://zoom.us/client/5.15.11.7239/zoom_x86_64.rpm  # Download the RPM
sudo dnf localinstall zoom_x86_64.rpm
