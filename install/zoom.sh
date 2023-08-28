#!/bin/bash

# Download the RPM:
wget https://zoom.us/client/5.15.11.7239/zoom_x86_64.rpm

# Install the RPM:
sudo dnf localinstall zoom_x86_64.rpm
