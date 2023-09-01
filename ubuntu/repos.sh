#!/bin/bash

# This script adds additional repos

# Dependencies for installation:
sudo apt install curl gpg wget -y

# Add Google Repo
echo "*****Adding Google Repo*****"
curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /etc/apt/keyrings/packages.google.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.google.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google.list > /dev/null

Add Microsoft Repo
echo "*****Adding Microsoft Repo*****"
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

# Add Spotify Repo
echo "*****Adding Spotify Repo*****"
curl -fsSL https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/packages.spotify.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list > /dev/null

# Update Repo caches
echo "*****Updating Repo caches*****"
sudo apt update

