export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

source $ZSH/oh-my-zsh.sh

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

alias cdp='cd /home/zuds/projects'
alias ls='ls -la'
