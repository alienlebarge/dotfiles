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

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Install Git
brew install git
brew install git-flow
brew install git-lfs

# Install lazygit
brew install lazygit

# Install Ruby
brew install ruby

# Install yarn package manager
brew install yarn

# Install ponysay
# Because we need pony
brew install ponysay

# Install eza
# a replacement for `ls`
brew install eza

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

# Install notifier to send User Notifications on macOS from the command-line.
brew install terminal-notifier

# Install Git autocompletion
# see https://apple.stackexchange.com/a/92637
brew install bash-completion

# Install heroku tools
# https://devcenter.heroku.com/articles/heroku-cli
brew tap heroku/brew && brew install heroku

# Install zoxide
# https://github.com/ajeetdsouza/zoxide
brew install zoxide

# Install fzf
# https://github.com/junegunn/fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# Install stow
# https://www.gnu.org/software/stow/
brew install stow

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

# Install json, a fast CLI tool for working with JSON
npm install ---global json

# Install trash
# https://github.com/sindresorhus/trash
npm install --global trash
npm install --global trash-cli

# install npm npm-check-update
npm install --global npm-check-updates

# Enable italics in terminal
# see https://apple.stackexchange.com/questions/266333/how-to-show-italic-in-vim-in-iterm2
tic xterm-256color-italic.terminfo
