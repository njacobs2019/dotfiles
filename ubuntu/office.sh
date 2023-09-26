#!/bin/bash

# Uninstall LibreOffice
sudo apt remove libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-base libreoffice-math -y

# Install LibreOffice Flatpak
flatpak install flathub org.libreoffice.LibreOffice -y

# This installs Microsoft TrueType core fonts
# Press tab to select an option at the configuration page, then enter to select it
sudo apt install ttf-mscorefonts-installer -y

# Install Zotero
flatpak install flathub org.zotero.Zotero -y
