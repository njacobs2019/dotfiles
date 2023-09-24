#!/bin/bash

# This sets up and installs rclone

sudo apt install rclone -y

# https://itsfoss.com/use-onedrive-linux-rclone/



# Mount from command line:
rclone --vfs-cache-mode writes mount "onedrive":  ~/OneDrive

# Run this to mount at startup
# sh -c "rclone --vfs-cache-mode writes mount \"onedrive\": ~/OneDrive"
