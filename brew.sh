#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Install Git
brew install git

# Install Ruby
brew install ruby

# Install yarn package manager
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup
