# DOTFILES
This repo contains dotfiles for configuration and configuration and installation scripts for setting up a new computer running Ubuntu 22.04 LTS and keeping it in sync with other computers.

# Initial setup
- Run `symlinks.sh` to establish the symbolic links
- Run:
  - `./gnome_settings.sh`
  - `./starship.sh`
  - `./ubuntu/repos.sh`
  - `./ubuntu/flatpak.sh`
  - `./ubuntu/programs.sh`
- Install other programs
  - `./ubuntu/other_programs/slack.sh`
  - `./ubuntu/other_programs/zoom.sh`
- Optional installations
  - `./ubuntu/programs_personal.sh`
  - `./ubuntu/laptop.sh`

# Manual setup
- Create ssh keys
 - `ssh-keygen -t ed25519 -f ~/.ssh/key -a KDF_ROUNDS `
 - Call it `key`
- Configure Joplin
- Log into Chrome, Spotify, and Slack

## Setup UFW
```bash
sudo ufw status
sudo ufw enable
```

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
3. Set a given wifi to auto connect to vpn with `nm-connection-editor`

# References



# TODO
- configure libreoffice
