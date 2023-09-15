#!/bin/sh
HISTSIZE=1000000
SAVEHIST=1000000

export EDITOR="nvim"
export BROWSER="chrome"

export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.local/bin":$PATH
export MANPAGER='lvim +Man!'
export MANWIDTH=999
export GOPATH=$HOME/.local/share/go
export TMP=$HOME/.TMP/
export KEYTIMEOUT=10
export VI_MODE_ESC_INSERT="jk"

export PATH='/usr/bin:/opt/nvim/':$PATH
export PATH=/mnt/c/Windows/System32/:$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH=$HOME/.cargo/bin:$PATH 
export PATH=$HOME/.local/share/go/bin:$PATH
export PATH=$HOME/.fnm:$PATH
export PATH=/opt/homebrew/bin:$PATH

# NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export XDG_CURRENT_DESKTOP="Wayland"
# export PATH="$PATH:./node_modules/.bin"
# eval "$(fnm env)"

eval "$(zoxide init zsh)"
