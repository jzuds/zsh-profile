export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

plugins=(
  git
  sudo
  zsh-autosuggestions
)

function ssh() {
  if ! klist -s; then
    kinit;
  fi
  /usr/bin/ssh $*
}

alias cdp='cd /mnt/c/projects'
alias ls='ls -la'
