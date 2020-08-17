export ZSH="/Users/chriswynn/.oh-my-zsh"
ZSH_THEME="robbyrussell"
export EDITOR=kak

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias mongo_start="brew services start mongodb-community@4.2"
alias mongo_stop="brew services stop mongodb-community@4.2"

# Example aliases
alias k="kak"
alias c="clear"
alias t="tmux"
alias tk="tmux kill-server"
alias sup='git push -u origin $(git symbolic-ref --short HEAD)'
alias e="\$EDITOR \$(fd --type f | fzy)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

