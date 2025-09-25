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
    $ stow --dir=. --target=$HOME ackrc env ghostty git starship vim zsh

## Update

To get the latest version of the dotfiles:

    # Go to your dotfiles directory
    $ cd ~/[dotfiles_folder]

    # Pull the latest changes
    $ git pull

## Vim

### Plugins

Plugins are managed using Vim's native package management system (Vim 8+) with Git submodules.
Plugins are installed in `~/.vim/pack/bundle/{start,opt}/` as submodules.

#### Plugin List

**Auto-loaded plugins** (`vim/.vim/pack/bundle/start/`):

- **ack.vim** ([mileszs/ack.vim](https://github.com/mileszs/ack.vim)) - Search tool integration
- **auto-pairs** ([jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)) - Auto-close brackets and quotes
- **nerdcommenter** ([preservim/nerdcommenter](https://github.com/preservim/nerdcommenter)) - Comment/uncomment code
- **vim-surround** ([tpope/vim-surround](https://github.com/tpope/vim-surround)) - Surround text with brackets, quotes, etc.
- **vim-closetag** ([alvan/vim-closetag](https://github.com/alvan/vim-closetag)) - Auto-close HTML/XML tags
- **editorconfig-vim** ([editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)) - EditorConfig support
- **lightline.vim** ([itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)) - Status line plugin
- **vim-polyglot** ([sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)) - Language pack collection
- **vim-json** ([elzr/vim-json](https://github.com/elzr/vim-json)) - JSON syntax highlighting
- **catppuccin** ([catppuccin/vim](https://github.com/catppuccin/vim)) - Catppuccin color scheme
- **vim-eunuch** ([tpope/vim-eunuch](https://github.com/tpope/vim-eunuch)) - Unix command helpers
- **vim-gitgutter** ([airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)) - Git diff indicators

**Optional plugins** (`vim/.vim/pack/bundle/opt/`):

- **minimap** ([wfxr/minimap.vim](https://github.com/wfxr/minimap.vim)) - Code minimap (load with `:packadd minimap`)
- **vim-css-color** ([skammer/vim-css-color](https://github.com/skammer/vim-css-color)) - CSS color highlighting (load with `:packadd vim-css-color`)
- **vim-jinja** ([lepture/vim-jinja](https://github.com/lepture/vim-jinja)) - Jinja template syntax (load with `:packadd vim-jinja`)
- **indentLine** ([Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)) - Display indent guides (load with `:packadd indentLine`)

#### Install all plugins

To install all configured plugins after cloning the dotfiles:

    $ git submodule update --init --recursive

#### Update plugins

To update all plugins to their latest versions:

    $ git submodule update --remote

Then commit the submodule updates:

    $ git add .
    $ git commit -m "chore: update vim plugin submodules"

#### Manual plugin management

- **Auto-loaded plugins** are in `vim/.vim/pack/bundle/start/` (loaded automatically)
- **Optional plugins** are in `vim/.vim/pack/bundle/opt/` (load with `:packadd plugin-name`)
- Generate help tags after installation: `:helptags ALL`

#### Add new plugin

To add a new plugin:
1. Add it as a submodule: `git submodule add <repo-url> vim/.vim/pack/bundle/start/<plugin-name>`
2. For optional plugins use: `vim/.vim/pack/bundle/opt/<plugin-name>`
3. Update the plugin list in this README.md
4. Commit the changes: `git add . && git commit -m "feat: add <plugin-name> plugin"`

#### Remove plugin

To remove a plugin:
1. Remove the submodule: `git submodule deinit -f vim/.vim/pack/bundle/{start,opt}/<plugin-name>`
2. Remove from git: `git rm vim/.vim/pack/bundle/{start,opt}/<plugin-name>`
3. Update the plugin list in this README.md
4. Commit the changes
