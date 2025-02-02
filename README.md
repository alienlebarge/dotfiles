dotfiles
=========

This repository includes all of my custom dotfiles.  They should be cloned to
your home directory so that the path is `~/dotfiles/`.  The included setup
script creates symlinks from your home directory to the files which are located
in `~/dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a
`~/dotfiles_old/` directory if you already have any dotfiles of the same name as
the dotfile symlinks being created in your home directory.

I also prefer `zsh` as my shell of choice.  As such, the setup script will also
clone the `oh-my-zsh` repository from my GitHub. It then checks to see if `zsh`
is installed.  If `zsh` is installed, and it is not already configured as the
default shell, the setup script will execute a `chsh -s $(which zsh)`.  This
changes the default shell to zsh, and takes effect as soon as a new zsh is
spawned or on next login.

## Requirements

Requirements for installing those dotfiles:
 1. [Install Homebrew](https://brew.sh/)

## Installation

    $ git clone http://github.com/alienlebarge/dotfiles ~/dotfiles
    $ cd ~/dotfiles
    $ git submodule update --init --recursive
    $ stow .
    $ ./brew.sh

## Update

    $ git pull
    $ git submodule foreach git pull

## Vim

### Plugins

Plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug).

#### Install plugin

If you need to add a new plugin, simply add it in the `.vimrc` file and run
`:PlugInstall` in Vim.

#### Uninstall plugin

Delete the Plug line(s) from your '.vimrc', source the `.vimrc` and call
`:PlugClean``

### Update Vim packages

```
$ ./brew.sh
```

## Install Homebrew formulae

To install [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of
course):

```
$ ./brew.sh
```

If you get an error when running it, try to `$ sudo chmod 755 brew.sh` it.


### Git

It's installed via Homebrew to get the laetest version (see [Install Homebrew
formulae](#install-homebrew-formulae)).

#### GitHub Config

Use this
[config](https://help.github.com/articles/caching-your-github-password-in-git/)
to cache the password.

## Credits

It is based on [Michael Smalley's article](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).
