DOT_DIR=$(realpath ~/.dotfiles)

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"

plugins=(
  git
  docker
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

source $DOT_DIR/aliases/common.sh
source $DOT_DIR/aliases/zsh.sh
source $DOT_DIR/tmux.sh
source $DOT_DIR/nix.sh

source <(kubectl completion zsh)
source /home/ayu/Work/test/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="${PATH}:${HOME}/.krew/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
