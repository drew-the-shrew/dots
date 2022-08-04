# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Left blank for pure shell
ZSH_THEME=""

#plugins
plugins=(
     	git
)


source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure
# User configuration

. ~/.aliases

PATH=~/.emacs.d/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
