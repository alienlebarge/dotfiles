# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

unset file;

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Import Ruby RVM profile
# They ask to do that during RVM install
source ~/.profile

# Ruby rbenv configuration
# see https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x
eval "$(rbenv init -)"

# Make Sublimelinter works
# see http://sublimelinter.readthedocs.io/en/latest/troubleshooting.html#adding-to-the-paths-setting
case $- in
   *i*) source ~/.bashrc
esac