#!/bin/sh
#
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="nvim"
# export TERMINAL="alacritty"
export BROWSER="chrome"
export MANPAGER='lvim +Man!'
export MANWIDTH=999
export GOPATH=$HOME/.local/share/go
export TMP=$HOME/.TMP/
export KEYTIMEOUT=10
export VI_MODE_ESC_INSERT="jk"

export PATH="$HOME/.local/bin":$PATH
export PATH=$HOME/.cargo/bin:$PATH 
export PATH=$HOME/.local/share/go/bin:$PATH
export PATH=$HOME/.fnm:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export GPG_TTY=4826EB501C3BBA98

# export XDG_CURRENT_DESKTOP="Wayland"
# export PATH="$PATH:./node_modules/.bin"
# eval "$(fnm env)"

eval "$(zoxide init zsh)"
