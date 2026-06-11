##################################################
# Path and extra config
##################################################

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

##################################################
# env
##################################################

# Charger les variables d'environnement depuis .env
if [ -f "$HOME/.env" ]; then
    set -o allexport
    source "$HOME/.env"
    set +o allexport
fi 

##################################################
# Starship
##################################################

eval "$(starship init zsh)"

##################################################
# Alias
##################################################

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias k="cd ~/kDrive"
alias g="git"
alias h="history"
alias j="jobs"

# Claude shortcuts
alias yolo="claude --dangerously-skip-permissions"
alias gcauto="git commit -m \"\$(claude -p 'Please review all the changes that have been staged in the Git repository and create a commit summary. Follow these guidelines for the commit message structure: <type>[optional scope]: <description>. Use types like feat, fix, docs, style, refactor, test, and chore. Optionally, add scope for further context. Provide a concise description, and ensure the message is clear and informative. Only respond with the commit message.')\""

# ld — lists only directories (no files)
alias ld="eza -lD"
# lf — lists only files (no directories)
alias lf="eza -lF --color=always | grep -v /"
# lh — lists only hidden files (no directories)
alias lh="eza -dl .* --group-directories-first"
# ll & l — lists everything with directories first
alias ll="eza -al --group-directories-first"
alias l="eza -al --group-directories-first"
# ls — lists only files sorted by size
alias ls="eza -alF --color=always --sort=size | grep -v /"
# lt — lists everything sorted by time updated
alias lt="eza -al --sort=modified"


# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# Add zoxide
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# Add fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/cedricaellen/Library/Application Support/Herd/config/php/84/"


# Herd injected NVM configuration
export NVM_DIR="/Users/cedricaellen/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP binary.
export PATH="/Users/cedricaellen/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/cedricaellen/Library/Application Support/Herd/config/php/81/"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/cedricaellen/Library/Application Support/Herd/config/php/82/"

export PATH="$HOME/.local/bin:$PATH"
