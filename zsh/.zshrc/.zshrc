## oh my zsh ##
export ZSH="$ZDOTDIR/ohmyzsh"
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh

## env vars ##
export EDITOR='nvim'
export HYPRSHOT_DIR="$HOME/screenshots"

## aliases ##
alias sz="source $ZDOTDIR/.zshrc"
alias v="nvim"
alias hotspot="iwctl station wlan0 scan && iwctl station wlan0 get-networks"

## git aliases ##
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gcm="git commit -m"
alias gca="git commit -a"

