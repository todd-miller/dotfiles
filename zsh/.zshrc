#!/bin/bash
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] \
  && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

# source
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/aliases.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "todd-miller/zsh-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# keybinds
bindkey '^ ' autosuggest-accept
bindkey jk vi-cmd-mode

export KEYTIMEOUT=10
export PATH="$HOME/.local/bin":$PATH
autoload -Uz compinit
source .env_zsh

eval "$(direnv hook zsh)"

