## oh my zsh ##
export ZSH="$ZDOTDIR/ohmyzsh"
ZSH_THEME="steeef"
plugins=(git asdf)
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

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# yazi file manager - y to launch, q to quit to cwd in yazi, Q to quit to prev cwd
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
