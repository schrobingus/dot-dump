
# VSCode Dotfiles for ChromeOS + Crostini

These are my simple dotfiles that I use on my Lenovo Chromebook Duet 3 as a secondary computer. The aim is to have VSCode (VSCodium also supported) as a primary editor for ChromeOS as a web application, whilst having the Stow powered dotfiles arming Vim and Zsh with their configs, backing up as a CLI interface for compiling software and managing Git repositories.

## Install

1. Firstly, install [VSCode](https://code.visualstudio.com/) or [VSCodium](https://vscodium.com/); you can use the DEB provided on the website, but I personally recommend using the PWA version of VSCode from the [web version](https://vscode.dev/) by clicking the "Install App?" icon in the Omnibar.

2. In the Crostini terminal, clone the repository to `~/.dotfiles` using the single command `git clone https://github.com/BrentBoyMeBob/dot-duet ~/.dotfiles`, and enter the directory with `cd ~/.dotfiles`.

3. Install the dotfiles, for Stow users, simply type `stow Local`; if you are not using Stow, copy the contents by running `cp -r Local/* ~`.

For PWA users: In order to install the VSCode config, install the extensions listed below, and copy the contents of [the settings.json file](https://github.com/BrentBoyMeBob/dot-duet/blob/master/Local/.config/VSCodium/User/settings.json) to the settings in VSCode, which can be found by pressing `CTRL+SHIFT+P` and finding `Preferences: Open Settings (JSON)`.

For DEB users: The configuration is already installed if you followed the instructions above, but to install the extensions for VSCode, you can simply just run `~/.config/VSCodium/setup-vscode.sh`.

## Extensions

- [Easy Icon Theme](https://marketplace.visualstudio.com/items?itemName=jamesmaj.easy-icons)
- [HTML Snippets](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets)
- [JavaScript Snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
- [Markdown Lint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
- [Nord Theme](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)
- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [TODO Highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
- [YAML](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
