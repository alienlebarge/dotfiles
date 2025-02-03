#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing dotfiles...${NC}"

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo -e "${RED}Error: Homebrew is not installed${NC}"
    echo "Please install Homebrew first: https://brew.sh/"
    exit 1
fi

# Install git and stow if not already installed
echo "Checking required packages..."
brew install git stow

# Ask for the path
read -p "Where do you want to clone the repo? [~/Projects/dotfiles] " clone_path

# Use default value if nothing is entered
clone_path=${clone_path:-~/Projects/dotfiles}

# Expand tilde (~) if present
clone_path="${clone_path/#\~/$HOME}"

# Create parent directory if needed
mkdir -p "$(dirname "$clone_path")"

# Clone the repo
echo "Cloning dotfiles repository..."
git clone http://github.com/alienlebarge/dotfiles "$clone_path"

# Change to the dotfiles directory
cd "$clone_path" || exit 1

# Create symlinks using stow
echo "Creating symlinks..."
stow --dir . --target ~ 

echo -e "${GREEN}Dotfiles installation complete!${NC}"
echo -e "You can now run ${GREEN}./brew.sh${NC} to install additional packages and applications"
echo "Please restart your terminal for all changes to take effect."
