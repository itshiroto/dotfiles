# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/itshiroto/.zsh/completions:"* ]]; then export FPATH="/home/itshiroto/.zsh/completions:$FPATH"; fi
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
  zsh-syntax-highlighting
  tmuxinator
)

source $ZSH/oh-my-zsh.sh

### User configuration

alias vim="nvim"
alias n="nvim"
alias lg="lazygit"
alias oc="opencode"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"

# pnpm
export PNPM_HOME="/home/itshiroto/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# opencode
export PATH=$HOME/.opencode/bin:$PATH

# composer global bin
export PATH=$HOME/.config/composer/vendor/bin:$PATH
export EDITOR=nvim

export PHPENV_ROOT="/home/itshiroto/.phpenv"

if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi
. "/home/itshiroto/.deno/env"

# bun completions
[ -s "/home/itshiroto/.bun/_bun" ] && source "/home/itshiroto/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:$HOME/go/bin
