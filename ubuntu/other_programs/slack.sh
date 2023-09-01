#!/bin/bash

# Installs the Slack debian package from their website

wget -O slack.deb https://downloads.slack-edge.com/releases/linux/4.33.90/prod/x64/slack-desktop-4.33.90-amd64.deb
sudo apt install ./slack.deb -y
sudo rm slack.deb

