#!/bin/bash

# Installs the Zoom debian package from their website

wget -O zoom.deb https://zoom.us/client/5.15.11.7239/zoom_amd64.deb
sudo apt install ./zoom.deb -y
sudo rm zoom.deb

