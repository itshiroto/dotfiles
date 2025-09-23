# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="intheloop"
zstyle ':omz:update' mode auto      # update automatically without asking
ENABLE_CORRECTION="true"

plugins=(
  git
  fzf
  zsh-autosuggestions
  nvm
)

source $ZSH/oh-my-zsh.sh

### User configuration

alias vim="nvim"
alias n="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"
