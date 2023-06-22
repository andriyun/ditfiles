DOT_DIR=$(realpath ~/.dotfiles)

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)
source $ZSH/oh-my-zsh.sh

source $DOT_DIR/aliases.sh
source $DOT_DIR/tmux.sh
source $DOT_DIR/nix.sh
