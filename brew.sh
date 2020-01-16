#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew if not installed
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    # Make sure we’re using the latest Homebrew.
    brew update
fi

# Upgrade any already-installed formulae.
brew upgrade

# Install htop
# http://hisham.hm/htop/
brew install htop

# Uninstall node and npm. We are now using nvm
# see https://stackoverflow.com/a/48736639/498415
# must be removed in the futur
brew uninstall --force node
brew uninstall --force npm

# Install Git
brew install git
brew install git-flow
brew install git-lfs

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
brew install vim
# Install Python for Vim
xcode-select --install

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

# Install heroku tools
# https://devcenter.heroku.com/articles/heroku-cli
brew tap heroku/brew && brew install heroku

# install things nedded at work
read -p "Are you at work?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # install https://github.com/Homebrew/homebrew-services
    brew tap homebrew/services

    # install and start cntlm at login
    brew install cntlm
    brew services start cntlm
fi

# Remove outdated versions from the cellar.
brew cleanup

# Enable italics in terminal
# see https://apple.stackexchange.com/questions/266333/how-to-show-italic-in-vim-in-iterm2
tic xterm-256color-italic.terminfo

# Pull all submodules (vim plugins)
git submodule update --init --recursive

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
# Install latest LTS node version
nvm install --lts
nvm use --lts



## Installations via npm 

# Install json, a fast CLI tool for working with JSON
npm install ---global json

# Install trash
# https://github.com/sindresorhus/trash
npm install --global trash
npm install --global trash-cli
