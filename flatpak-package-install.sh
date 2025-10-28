#!/bin/bash

# ##################################################################
#               Flatpak Package Installation Script             #
# ##################################################################
#
packages=(
    'io.gitlab.adhami3310.Converter'
    'com.github.PintaProject.Pinta'
    'com.usebottles.bottles'
    'com.github.tchx84.Flatseal'
    'org.prismlauncher.PrismLauncher'
    'com.spotify.Client'
    'net.davidotek.pupgui2'
)

# --- SCRIPT LOGIC (No need to edit below this line) ---

# 1. Check if flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "❌ Error: flatpak is not installed."
    echo "Please install flatpak to continue. See: https://flatpak.org/setup/"
    exit 1
fi

# 2. Install the packages from the list
echo "📦 Installing specified packages..."
flatpak install -y flathub "${packages[@]}"

# 3. Final message
echo ""
echo "✅ Script finished! All specified packages have been processed."
