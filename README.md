# Debian Dotfiles for Crostini
These are my dotfiles that I use for my Chromebook Duet. The primary editor is VSCodium, which uses Vim bindings and has proprietary repositories enabled, but they can be disabled in favor of the FOSS repositories for VSCodium by editing the `product.json` file. 

## To-Do List
- ✅ Install Stow and management tools
- ✅ Configure VSCodium
- ⬜ Install novelties
- ✅ Install development tools
- ⬜ Install Vim-plug
- ⬜ Configure Vim as a secondary editor
- ⬜ Install Zsh and Zinit
- ⬜ Configure Zsh and load OMZ plugins with Zinit

## Installation
Clone the repository in the `~/.dotfiles`. For reference, the command used is `git clone https://github.com/BrentBoyMeBob/dot-duet ~/.dotfiles`. Afterwards, run the `./install-crostini.sh` script and let it do the work.