DOT_DIR=$(realpath ~/.dotfiles)

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

source $DOT_DIR/aliases/common.sh
source $DOT_DIR/aliases/zsh.sh
source $DOT_DIR/tmux.sh
source $DOT_DIR/nix.sh

source <(kubectl completion zsh)
source /home/ayu/Work/test/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
