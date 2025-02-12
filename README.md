# dotfiles

This repository includes all of my custom dotfiles. They should be cloned to
your home directory so that the path is `~/dotfiles/`.

## Requirements

Before starting the installation, you need:
1. [Homebrew](https://brew.sh/) installed on your system

## First installation

If you've never installed these dotfiles before:

    # Download and execute bootstrap script
    $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/alienlebarge/dotfiles/master/bootstrap.sh)"

    # Make scripts executable
    $ chmod +x bootstrap.sh brew.sh

    # Install all required packages and applications
    $ ./brew.sh

## Installation

If you already have the repository cloned and just want to update packages:

    $ ./brew.sh
    $ stow --dir=. --target=$HOME ackrc ghostty git starship vim zsh

## Update

To get the latest version of the dotfiles:

    # Go to your dotfiles directory
    $ cd ~/[dotfiles_folder]

    # Pull the latest changes
    $ git pull

## Vim

### Plugins

Plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug).

#### Install plugin

If you need to add a new plugin:
1. Add it in the `.vimrc` file
2. Run `:PlugInstall` in Vim

#### Uninstall plugin

To remove a plugin:
1. Delete the Plug line(s) from your '.vimrc'
2. Source the `.vimrc`
3. Call `:PlugClean`
