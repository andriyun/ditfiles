# Add path for Macos
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

DOT_DIR=$(realpath ~/.dotfiles)

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"
ZSH_CUSTOM=$DOT_DIR/ZSH_CUSTOM

plugins=(
  git
  docker
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

source $DOT_DIR/aliases/common.sh
source $DOT_DIR/aliases/zsh.sh
source $DOT_DIR/aliases/local.sh
source $DOT_DIR/tmux.sh
source $DOT_DIR/nix.sh
source $DOT_DIR/common.sh

source <(kubectl completion zsh)

export PATH="${PATH}:${HOME}/.krew/bin"

export KUBECONFIG=~/.kube/config
export KUBECONFIG=$KUBECONFIG:~/kubeconfig.yaml
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
eval "$(kubectl-shell_ctx hook zsh)"

export PATH=$PATH:/usr/local/go/bin
