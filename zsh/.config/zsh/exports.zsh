#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="lvim"
export TERMINAL="alacritty"
export BROWSER="chrome"
export PATH="$HOME/.local/bin":$PATH
export MANPAGER='lvim +Man!'
export MANWIDTH=999
export PATH=$HOME/.cargo/bin:$PATH 
export PATH=$HOME/.local/share/go/bin:$PATH
export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.fnm:$PATH

# quovis 
# kubectl krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# istio binaries
export PATH="$PATH:$PWD/istio-1.16.1/bin"

# export XDG_CURRENT_DESKTOP="Wayland"
#export PATH="$PATH:./node_modules/.bin"
eval "$(fnm env)"

eval "$(zoxide init zsh)"
