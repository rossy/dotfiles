ZSH=$HOME/.oh-my-zsh
ZSH_THEME='eastwood'
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v=vim
alias g=git

export EDITOR=vim
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'
export LESS='-Rx 4'

case $(uname -s) in
	CYGWIN*) source "$HOME/.zshrc.cygwin" ;;
	Linux)   source "$HOME/.zshrc.linux" ;;
esac

if [ -f "$HOME/.zshrc.local" ]; then
	source "$HOME/.zshrc.local"
fi
