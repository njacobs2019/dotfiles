#!/bin/bash

sudo dnf install gnome-tweaks  # rpm from Fedora repo
flatpak install org.gnome.Extensions # from Fedora repo
# dnf info gnome-extensions-app # alternative

dnf install dconf-editor -y

# Install dash to dock from fedora repo
sudo dnf install gnome-shell-extension-dash-to-dock


# gnome settings
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar "minimize"
gsettings set org.gnome.desktop.wm.preferences focus-mode "sloppy"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Shift><Super>s']"



# dash to dock settings
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts-only-mounted false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action "cycle-windows"
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style "DOTS"
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true
gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action "launch"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "LEFT"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock disable-overview-on-startup true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action "focus-minimize-or-previews"
