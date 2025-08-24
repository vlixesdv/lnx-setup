#!/bin/bash

# Ensure paru is installed
if ! command -v paru &> /dev/null; then
    echo "❌ paru is not installed. Install it first."
    exit 1
fi

# Alphabetically sorted list of packages
packages=(
    coolercontrol
    discord
    htop
    inter-font
    krita
    lact
    microsoft-edge-dev-bin
    obs-studio
    openrgb-git
    openrgb-plugin-effects-git
    papirus-icon-theme-git
    papirus-folders-catppuccin-git # always after papirus-icon-theme-git
    protonplusc
    qastools
    simplenote
    telegram-desktop
    ttf-ibm-plex
    ttf-jetbrains-mono-nerd
    ttf-ms-win11-auto
    ttf-ubuntu-font-family
    ttf-ubuntu-nerd
    ttf-ubuntu-mono-nerd
    visual-studio-code-bin
    vmware-keymaps
    vmware-workstation
    youtube-music-bin
    zapzap
    zen-browser-bin
)

echo "📦 Installing ${#packages[@]} packages with paru..."
paru -S --needed --noconfirm "${packages[@]}"

echo "✅ All done!"
