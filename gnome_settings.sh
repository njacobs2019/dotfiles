#!/bin/bash

# gnome settings
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar "minimize"
gsettings set org.gnome.desktop.wm.preferences focus-mode "click"
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,close"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.desktop.background picture-uri "/home/nick/dotfiles/desktop_images/Optical_Fibers_in_Dark_by_Elena_Stravoravdi.jpeg"
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Shift><Super>s']"
gsettings set org.gnome.shell.extensions.ding show-home false
gsettings set org.gnome.shell.extensions.ding start-corner "top-left"

# Gnome terminal settings
PROFILE_ID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE_ID}/ background-transparency-percent 20
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE_ID}/ use-theme-transparency false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE_ID}/ use-transparent-background true
gsettings set org.gnome.Terminal.Legacy.Settings new-terminal-mode 'tab'

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
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# nautilus settings
gsettings set org.gtk.Settings.FileChooser show-hidden true
