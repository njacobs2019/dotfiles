
#!/bin/bash

# Installs the Proton VPN debian package from their website

wget -O proton-vpn.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
sudo apt install ./proton-vpn.deb -y
sudo rm proton-vpn.deb

sudo apt update
sudo apt install proton-vpn-gnome-desktop
