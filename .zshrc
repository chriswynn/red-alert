export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

export ZSH=/Users/chriswynn/.oh-my-zsh

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.composer/vendor/bin"

export PATH=/usr/local/php5/bin:$PATH
export PATH=/usr/local/lib/luarocks:$PATH

MAILCHECK=0
export TTC_REPOS='~/Documents/Sites/*/**'
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:./node_modules/.bin
plugins+=(zsh-nvm)
MAILCHECK=0
alias love="/Applications/love.app/Contents/MacOS/love"
