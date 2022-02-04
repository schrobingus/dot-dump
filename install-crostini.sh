#!/bin/sh -e
# Crostini Dotfiles, utilizing VSCodium.

# First, update and upgrade the system.
sudo apt-get update && sudo apt-get upgrade -y

# Then, install some dependencies that are important to the dotfiles and the system.
sudo apt-get install -y git stow wget curl build-essential

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
sudo apt-get --fix-broken install -y

# Install it's own config.
~/.dotfiles/install-vscodium-config.sh

# Make sure Vim and Zsh are installed.
sudo apt-get install -y vim zsh

# Install Vim-plug and load the configuration.
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Change the default shell to Zsh.
export NAME="$(whoami)"
sudo chsh $NAME -s /usr/bin/zsh

# Install ZI for Zsh.
sh -c "$(curl -fsSL https://git.io/get-zi)" -- -i skip -b v1.0.0

# Make APT a bit less terrible with Nala. (Not working for some reason, seems like an internal issue.)
#echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
#wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
#sudo apt-get update && sudo apt-get install nala