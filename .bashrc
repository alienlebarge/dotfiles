[ -n "$PS1" ] && source ~/.bash_profile;

export PATH="$HOME/.yarn/bin:$PATH"

# added by travis gem
[ -f /Users/cedricaellen/.travis/travis.sh ] && source /Users/cedricaellen/.travis/travis.sh

# add zoxide
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
