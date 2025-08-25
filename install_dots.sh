#!/bin/bash

CONFIG_DIR="$HOME/.config"
SETUP_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

echo "📁 Installing dotfiles..."

DEST_FILE="$CONFIG_DIR/fastfetch/config.jsonc"
mkdir -p "$(dirname "$DEST_FILE")"
cp "$SETUP_DIR/dots/config/fastfetch/config.jsonc" "$DEST_FILE"
echo

DEST_FILE="$CONFIG_DIR/ghostty/config"
mkdir -p "$(dirname "$DEST_FILE")"
cp "$SETUP_DIR/dots/config/ghostty/config" "$DEST_FILE"

if [ -d "$HOME/gh/catppuccin/ghostty/themes" ]; then
    echo "📥 Copying Catppuccin Ghostty themes..."
    DEST_DIR="$CONFIG_DIR/ghostty/themes"
    mkdir -p "$DEST_DIR"
    cp -r "$HOME/gh/catppuccin/ghostty/themes/"* "$DEST_DIR/"
else
    echo "⚠️  Catppuccin Ghostty themes not found, skipping..."
fi
echo

unset DEST_FILE DEST_DIR

echo "✅ All dotfiles installed!"

