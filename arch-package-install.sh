#!/bin/bash

# ##################################################################
#               CachyOS Package Installation Script             #
# ##################################################################
#
#  Define the packages you want to install in the 'packages' list.
#  The script will then use 'paru' to install them.
#

# --- EDIT THIS LIST ---
# Add your desired packages here, separated by a new line.
# I've added some common examples from official repos and the AUR.
packages=(
    'zen-browser-bin'
    'libreoffice-fresh'
    'vlc'
    'kdenlive'
    'htop'
    'neovim'
    'localsend'
    'flatpak'
    'gnome-software'
    'virt-manager'
    'qemu-full'
    'libvirt'
    'dnsmasq'
    'obs-studio'
    'qbittorrent'
    'steam'
    'heroic-games-launcher-bin'
    'proton-cachyos'
    'vscodium'
    'yt-dlp'
    'appimagelauncher'
    'kdiskmark'
    'plasma-workspace-wallpapers'
    'bleachbit'
    'openrgb'
    'nodejs'
    'npm'
    'scrcpy'
    'obsidian'
    'metadata-cleaner'
)

# --- SCRIPT LOGIC (No need to edit below this line) ---

# 1. Check if paru is installed
if ! command -v paru &> /dev/null; then
    echo "❌ Error: paru is not installed."
    exit 1
fi

# 2. Update system package databases and upgrade installed packages
echo "🔄 Synchronizing package databases and updating system..."
paru -Syu --noconfirm

# 3. Install the packages from the list
echo "📦 Installing specified packages..."
# The --needed flag prevents reinstalling packages that are already up-to-date.
paru -S --needed "${packages[@]}"

# 4. Final message
echo ""
echo "✅ Script finished! All specified packages have been processed."
