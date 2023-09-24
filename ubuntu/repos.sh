#!/bin/bash

# This script adds additional repos
# Reference:  https://www.digitalocean.com/community/tutorials/how-to-handle-apt-key-and-add-apt-repository-deprecation-using-gpg-to-add-external-repositories-on-ubuntu-22-04

# Dependencies for installation:
sudo apt install curl gpg wget -y

# Make sure the gpg folder exists
sudo mkdir -p --mode=0755 /usr/share/keyrings

# Add Google Repo
echo "*****Adding Google Repo*****"
curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /etc/apt/keyrings/packages.google.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.google.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google.list > /dev/null

# Add Microsoft Repo
echo "*****Adding Microsoft Repo*****"
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

# Add Spotify Repo
echo "*****Adding Spotify Repo*****"
curl -fsSL https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/packages.spotify.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list > /dev/null

# Add Cloudflare repo
echo "*****Adding Cloudflare Repo*****"
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /etc/apt/keyrings/packages.cloudflare.gpg >/dev/null
echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.cloudflare.gpg] https://pkg.cloudflare.com/cloudflared jammy main' | sudo tee /etc/apt/sources.list.d/cloudflared.list

# Add Cryptomator PPA
echo "*****Cryptomator PPA*****"
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -y

# Add NextCloud Client PPA
echo "*****NextCloud Client PPA*****"
sudo add-apt-repository ppa:nextcloud-devs/client -y

# Update Repo caches
echo "*****Updating Repo caches*****"
sudo apt update
