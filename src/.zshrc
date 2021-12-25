ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"

# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

# Nicer prompt.
export PS1=$'\n'"%F{green} %*%F %3~ %F{white}"$'\n'"$ "

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

plugins=(git brew history kubectl history-substring-search)
