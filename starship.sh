#!/bin/bash

# This installs the fonts and sets up starship

# Install the FiraCode Nerd Font

echo "***************************"
echo "******Installing Font******"
echo "***************************"

mkdir -p ~/.fonts
wget -O ~/.fonts/FiraCode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DroidSansMono.zip
unzip ~/.fonts/FiraCode.zip -d ~/.fonts
rm ~/.fonts/FiraCode.zip
rm ~/.fonts/LICENSE.txt
rm ~/.fonts/readme.md
fc-cache -fv


# Install Fireship

echo "*******************************"
echo "******Installing Starship******"
echo "*******************************"

curl -sS https://starship.rs/install.sh | sh
