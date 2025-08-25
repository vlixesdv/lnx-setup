#!/bin/bash
# Script to set up my personal CachyOS setup with essential applications and configurations
# Ensure paru is installed
# Run this script with sudo or as root

SETUP_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

"$SETUP_DIR/fix_dual_boot_time.sh"
"$SETUP_DIR/install_apps_paru.sh"
"$SETUP_DIR/clone_catppuccin_repos.sh"
"$SETUP_DIR/install_dots.sh"

echo "\n\n"
echo "✅ System setup complete!"