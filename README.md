# DOTFILES
This repo contains dotfiles for configuration and configuration and installation scripts for setting up a new computer running Fedora 38 and GNOME 44 and keeping it in sync with other computers.

# Initial setup
- Run the dnf setup script
- Run `symlinks.sh` to establish the symbolic links
- Run desired scripts in `./install`

# Manual setup
- Create ssh keys
 - `ssh-keygen -t ed25519 -a KDF_ROUNDS`
 - Call it `key`
- Configure Joplin
- Log into Chrome, Spotify, and Slack
- Set keyboard shortcut for terminal
  - Command: `gnome-terminal`
  - Shortcut: `ctrl-alt-t`


## SSH keys
Place them in `~/.ssh` and call it key

## LibreOffice
**/home/nick/.config/libreoffice**
- Tab interface
  - "View" --> "User Interface" --> "Tabbed"
- Icons
  - "Main Menu" --> "LibreOffice" --> "View" --> "Theme"
    - Colibre or Sukapura (most like MS Office)
    - Elementary (like Gnome)
    - Sifr (symbolic)
- FONTS...

## PIA VPN:
1. Download OVPN profile:  https://helpdesk.privateinternetaccess.com/kb/articles/where-can-i-find-your-ovpn-files
2. Setup
3. Set a given wifi to auto connect to vpn with `nm-connector-editor`


# TODO
- Install zoom: https://zoom.us/download?os=linux
- configure libreoffice
- terminal theme
- https://www.debugpoint.com/fractional-scaling-fedora/