#!/bin/bash

SETUP_CATPPUCCIN_DIR="$HOME/gh/catppuccin"

mkdir -p "$SETUP_CATPPUCCIN_DIR"

repos=(
  "https://github.com/catppuccin/kde.git"
  "https://github.com/catppuccin/ghostty.git"
  "https://github.com/catppuccin/heroic.git"
  "https://github.com/catppuccin/zen-browser.git"
)

cd "$SETUP_CATPPUCCIN_DIR" || exit

echo "📥 Cloning Catppuccin repositories into $SETUP_CATPPUCCIN_DIR..."

for repo in "${repos[@]}"; do
  repo_name=$(basename "$repo" .git)
  if [ -d "$repo_name" ]; then
    echo "⚠️  $repo_name already exists, skipping..."
  else
    echo "⬇️  Cloning $repo_name..."
    git clone "$repo"
  fi
  echo   # print empty line for readability
done

echo
echo "✅ Catppuccin repositories cloned!"