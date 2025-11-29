# Path to Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

ZSH_THEME="steeef"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export HYPRSHOT_DIR="$HOME/screenshots"

alias sz="source $ZDOTDIR/.zshrc"
alias v="nvim"
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gcm="git commit -m"
alias gca="git commit -a"
