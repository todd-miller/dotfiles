# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Hide mouse when typing
# xbanish &

# zsh config dir
# export ZDOTDIR=$HOME/.config/zsh

# old stuff for backwards compatability:
export NVM_DIR="$HOME/.nvm"
. "/opt/homebrew/opt/nvm/nvm.sh"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"