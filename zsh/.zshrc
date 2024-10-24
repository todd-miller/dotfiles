#!/bin/bash
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] \
  && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# history
# [https://gist.github.com/mattmc3/c490d01751d6eb80aa541711ab1d54b1]
HISTFILE=~/.zsh_history
setopt appendhistory

# nvm source
# source $(brew --prefix nvm)/nvm.sh

# source
source ~/.env/.env_zsh
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/aliases.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"

# todo - this is not working
plug "zap-zsh/vim"
plug "todd-miller/zsh-prompt"
plug "zap-zsh/fzf"
plug "zsh-users/zsh-syntax-highlighting"


# deno completions
fpath=(~/.zsh $fpath)
autoload -Uz compinit

# keybinds
bindkey '^ ' autosuggest-accept
bindkey jk vi-cmd-mode

export KEYTIMEOUT=10
export PATH="$HOME/.local/bin:/opt/nvim":$PATH

export GPG_TTY=4826EB501C3BBA98
autoload -Uz compinit
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "/Users/todd/.deno/env"
