#!/bin/sh -e

# Use Stow to manage the configurations.
cd ~/.dotfiles
stow Codium

# Define and install the packages that should be installed declaratively. 
codium --install-extension vscodevim.vim || true                            # Vim Bindings 
#codium --install-extension be5invis.vscode-custom-css || true              # Custom CSS for the Powerline
codium --install-extension arcticicestudio.nord-visual-studio-code || true  # Nord Theme
codium --install-extension esbenp.prettier-vscode || true                   # Better Syntax Highlighting
codium --install-extension christian-kohler.path-intellisense || true       # File Autocomplete
codium --install-extension formulahendry.terminal || true                   # Improved Terminal
#codium --install-extension aaron-bond.better-comments || true              # Comment Highlighting
codium --install-extension vscode-icons-team.vscode-icons || true           # More Icons

# Clone the repository for the Powerline CSS.
#git clone https://github.com/pcwalton/vscode-powerline ~/.config/VSCodium/powerline