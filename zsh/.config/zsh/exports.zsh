#!/bin/sh
HISTSIZE=1000000
SAVEHIST=1000000

export EDITOR="nvim"
export BROWSER="chrome"
export MANPAGER='lvim +Man!'
export MANWIDTH=999
export GOPATH=$HOME/.local/share/go
export TMP=$HOME/.TMP/
export KEYTIMEOUT=10
export VI_MODE_ESC_INSERT="jk"

export PATH='/usr/bin:/opt/nvim/':$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/share/go/bin:$PATH"
export PATH="$HOME/.fnm:$PATH"

export GPG_TTY=4826EB501C3BBA98

# export XDG_CURRENT_DESKTOP="Wayland"
# export PATH="$PATH:./node_modules/.bin"
# eval "$(fnm env)"

eval "$(zoxide init zsh)"
