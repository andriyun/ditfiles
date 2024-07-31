# Add path for Macos
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

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
source $DOT_DIR/common.sh

source <(kubectl completion zsh)

source $DOT_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="${PATH}:${HOME}/.krew/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export KUBECONFIG=~/.kube/config
export KUBECONFIG=$KUBECONFIG:~/kubeconfig.yaml
export GOROOT=/nix/store/hkzgcfj86jzzpayghzvy09xpvjg4xmac-go-1.21.7/share/go
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
eval "$(kubectl-shell_ctx hook zsh)"

export PATH="$PATH:/opt/nvim-linux64/bin"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

