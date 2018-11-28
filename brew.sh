#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install htop
# http://hisham.hm/htop/
brew install htop

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Install Git
brew install git
brew install git-flow

# Install Ruby
brew install ruby

# Install yarn package manager
brew install yarn

# Install ponysay
# Because we need pony
brew install ponysay

# Install exa
# a replacement for `ls`
brew install exa

# Install Ack
# https://beyondgrep.com/
brew install ack

# Install latest version of Vim
brew install vim --with-override-system-vi

# Install ghi: View your repo’s GitHub issues on the command line
brew install ghi

# Install lynx text browser
brew install lynx

# Install Hugo framework to build websites
brew install hugo

# Install notifier to send User Notifications on macOS from the command-line. 
brew install terminal-notifier

# Install Git autocompletion
# see https://apple.stackexchange.com/a/92637
brew install git bash-completion

# Remove outdated versions from the cellar.
brew cleanup

# Install json, a fast CLI tool for working with JSON
npm install ---global json
