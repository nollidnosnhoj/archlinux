#!/usr/bin/env bash

source ./global.sh

set -e

trap 'echo "dotfiles installation failed! Try again using source ./install.sh"' ERR

export STOW_PATHS="clipse,fastfetch,ghostty,mise,niri,oh-my-posh,waybar,zsh"
chmod +x ./install/*.sh
for f in ./install/*.sh; do source "$f"; done

if ask_yes_no "Arch linux installed successfully. Do you want to restart now?"; then
    sudo reboot now
fi
