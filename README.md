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
  - `./ubuntu/office.sh`
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
- FONTS
  - Setting a default font
    - "Main Menu" --> "Options" --> "LibreOffice Writer" --> "Basic Fonts"
- Office Compatability
  - "Main Menu" --> "Options" --> "Load/save" --> "Microsoft Office" --> Check all boxes
  - "Main Menu" --> "Options" --> "LibreOffice Writer" --> "Compatibility"
    - Select "Reorganize Form menu for Microsoft Compatibility"
    - Select "Word-compatible trailing blanks"
  - "Main Menu" --> "Options" --> "General"
    - Change default file extensions to Microsoft (.docx, .xlsx, .pptx)
    - Set setting for "Warn when not saving in ODF or default format"
- Noteworthy Extensions
  - Alternative Find & Replace for Writer (AltSearch)
  - MultiSave
  - Pepito Cleaner

## PIA VPN:
1. Go to https://www.privateinternetaccess.com/download/linux-vpn
2. Download and run the installer
