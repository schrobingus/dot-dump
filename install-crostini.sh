#!/bin/sh -e
# Crostini Dotfiles, utilizing VSCodium.

# First, update and upgrade the system.
sudo apt update && sudo apt upgrade -y

# Then, install some dependencies that are important to the dotfiles and the system.
sudo apt install -y git stow wget curl build-essential

# Afterwards, check if the system is arm64 or not, and if not, resort to x86_64. Use this information to download the correct VSCodium package.
if [ "$(uname -m)" = "aarch64" ]; then
	export CODIUM_LINK='https://github.com/VSCodium/vscodium/releases/download/1.63.2/codium_1.63.2-1639700587_arm64.deb'
else
	export CODIUM_LINK='https://github.com/VSCodium/vscodium/releases/download/1.63.2/codium_1.63.2-1639700424_amd64.deb'
fi

# Download and install VSCodium.
if ! [ -f "~/.dotfiles/vscodium.deb" ]; then
	wget -O ~/.dotfiles/vscodium.deb $CODIUM_LINK || true
	sudo dpkg -i ~/.dotfiles/vscodium.deb || true
fi
sudo apt --fix-broken install -y

# Install it's own config.
~/.dotfiles/install-vscodium-config.sh
