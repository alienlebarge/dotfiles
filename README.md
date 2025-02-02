dotfiles
=========

This repository contains my custom dotfiles. It should be cloned to your home directory so that the path is `~/dotfiles/`.

## Installation

These dotfiles are managed with [GNU Stow](https://www.gnu.org/software/stow/), a symlink manager that helps maintain dotfiles in an organized way.

### Prerequisites

1. [Homebrew](https://brew.sh/) must be installed
2. GNU Stow: `brew install stow`

### Installation Steps

```bash
# Clone the repository
git clone http://github.com/alienlebarge/dotfiles ~/dotfiles

# Move to the directory
cd ~/dotfiles

# Initialize and update submodules
git submodule update --init --recursive

# Create symlinks with stow
stow .

# Install Homebrew formulae
./brew.sh
```

### Update

```bash
git pull
git submodule foreach git pull
```

## Configuration

### Proxy (Work Environment)

If you work behind a proxy, [SquidMan](http://squidman.net) is used to manage proxy connections. If you don't need proxy settings, you'll need to remove all proxy configurations from the files.

### Vim

#### Plugin Management

Plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug).

To install a new plugin:
1. Add it to the `.vimrc` file
2. Run `:PlugInstall` in Vim

To uninstall a plugin:
1. Remove the corresponding Plug line from `.vimrc`
2. Source the `.vimrc`
3. Run `:PlugClean`

#### Update Vim Packages

```bash
./brew.sh
```

### Git

Git is installed via Homebrew to get the latest version.

#### GitHub Configuration

To cache your GitHub password, follow the [official documentation](https://help.github.com/articles/caching-your-github-password-in-git/).

## How Stow Works

Stow automatically creates symlinks from your dotfiles to your home directory. For example:

- `~/dotfiles/.vimrc` → `~/.vimrc`
- `~/dotfiles/.zshrc` → `~/.zshrc`

If a file already exists, Stow won't replace it. You'll need to first backup or remove existing files.

## Credits

Based on [Michael Smalley's article](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).
