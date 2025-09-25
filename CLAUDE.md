# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository that manages shell configurations, development tools, and application settings using GNU Stow for symlink management. The repository uses a modular structure where each directory contains configurations for specific tools or applications.

## Key Commands

### Installation & Setup
- `./bootstrap.sh` - Initial setup script that clones the repository and installs basic dependencies
- `./brew.sh` - Installs all required packages and applications via Homebrew
- `stow --dir=. --target=$HOME ackrc env ghostty git starship vim zsh` - Symlink dotfiles to home directory

### Package Management
- `brew update && brew upgrade` - Update Homebrew packages
- `npm install --global <package>` - Install global npm packages

### Vim Plugin Management
- `git submodule update --init --recursive` - Install all vim plugins
- `git submodule update --remote` - Update all plugins to latest versions
- `:packadd plugin-name` - Manually load optional plugins
- `:helptags ALL` - Generate help tags for all plugins

## Architecture

### Directory Structure
- Each tool/application has its own directory (git/, vim/, zsh/, etc.)
- Configuration files are placed in their expected locations within each directory
- GNU Stow creates symlinks from these directories to the home directory
- `.stow-local-ignore` controls which files are excluded from symlinking

### Key Configuration Files
- `zsh/.zshrc` - Shell configuration with aliases, PATH modifications, and tool integrations
- `vim/.vim/vimrc` - Vim configuration with plugin management via vim-plug
- `git/.gitconfig` - Git configuration with aliases and includes sensitive config from `.gitconfig.local`
- `starship/.config/starship.toml` - Custom shell prompt configuration
- `ghostty/.config/ghostty/config` - Terminal emulator settings

### Environment Management
- Environment variables loaded from `~/.env` file in zsh configuration
- Path extensions loaded from `~/.path` file
- Extra settings loaded from `~/.extra` file
- Sensitive git configuration stored in `~/.gitconfig.local` (not tracked)

### Package Dependencies
The repository manages installations of:
- Development tools: git, vim, node, npm, fzf, ack, bat, eza, lsd
- Shell enhancements: zsh, starship, zoxide
- Terminal: ghostty
- Version control: git-flow, git-lfs, lazygit
- System utilities: htop, stow, terminal-notifier