#!/bin/sh
alias ll="ls -l"
alias lla="ls -l -a"

alias lvim="$HOME/.local/bin/lvim"    

# TODO - OSx specific  - consider moving 
alias arm="env /usr/bin/arch -arm64 /bin/zsh --login"
alias intel="env /usr/bin/arch -x86_64 /bin/zsh --login"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/usr/bin/nvim-linux64/bin/nvim:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias j='z'
alias f='zi'
alias g='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB


# vulcan/bfusa specific
alias start-mongo="~/mongo/bin/mongod.exe --storageEngine wiredTiger --dbpath ~/mongo/database/wiredtiger"

# TODO - psmem and pscpu not working
# get top process eating memory
# alias psmem='ps auxf | sort -nr -k 4 | head -5'
# get top process eating cpu ##
# alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# TODO - does not work --> for rustup doc on apple sillicon before it becomes tier1 platform
# alias rustdoc="rustup doc --toolchain=stable-x86_64-apple-darwin"
# alias m="git checkout master"
# alias s="git checkout stable"

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
