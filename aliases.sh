# System aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

# General
alias k='kubectl'

# Terraform aliases
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tfs='terraform show'
alias tfv='terraform validate'

alias gc='git commit -m'
alias gs='git status'
alias gdc='git diff --cached'
alias gca='git commit --amend'
alias gp='git push'

# Nix aliases
alias ns='nix-shell --command zsh'
