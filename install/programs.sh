#!/bin/bash

dnf install google-chrome-stable -y
flatpak install flathub net.cozic.joplin_desktop -y
flatpak install flathub com.slack.Slack -y
flatpak install com.spotify.Client -y
flatpak install flathub us.zoom.Zoom -y

# Setup VS-Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y
sudo dnf install solaar -y # fedora repo tool for logitech devices
