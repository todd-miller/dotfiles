#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"


# history
HISTFILE=~/.zsh_history

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "todd-miller/zsh-prompt"
# plug "romkatv/powerlevel10k"
# plug "agnoster/agnoster-zsh-theme"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# keybinds
bindkey '^ ' autosuggest-accept

export PATH="$HOME/.local/bin":$PATH

# if command -v bat &> /dev/null; then
  # alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
  # alias catt="bat --theme \"Visual Studio Dark+\"" 
# fi

