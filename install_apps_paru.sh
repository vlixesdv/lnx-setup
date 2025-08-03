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
    krita
    lact
    microsoft-edge-stable-bin
    obs-studio
    openrgb-git
    openrgb-plugin-effects-git
    protonplus
    qastools
    simplenote
    telegram-desktop
    visual-studio-code-bin
    vmware-keymaps
    vmware-workstation
    youtube-music-bin
    zapzap
)

echo "📦 Installing ${#packages[@]} packages with paru..."
paru -S --needed --noconfirm "${packages[@]}"

echo "✅ All done!"
