#!/bin/bash

# Creates all of the symlinks

# Enable matching hidden files
shopt -s dotglob
DOTFILES=$(pwd)

# Takes in a start end destination folder
create_links(){
  start=$1
  destination=$2

  for file in $DOTFILES/$start/*; do
    echo "Linking $file"
    target_file=$(basename "$file")
    ln -sf "$file" $destination
  done
}

# Templates Directory
echo ""**********Linking ~/Templates"**********"
sudo rm -r ~/Templates
mkdir ~/Templates
create_links templates ~/Templates

# Bash
echo "**********Linking bash files**********"
create_links bash ~/

# Git
echo "**********Linking git files**********"
create_links git ~/
