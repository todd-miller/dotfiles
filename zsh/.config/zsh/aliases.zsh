#!/bin/sh
alias ll="ls -l"
alias lla="ls -al"

# TODO - OSx specific  - consider moving 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/opt/bin/nvim"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

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
alias start-mongo="~/vulcan/mongo/bin/mongod.exe --storageEngine wiredTiger --dbpath ~/mongo/database/wiredtiger"
alias mongo="~/repos/mongo_scripts/mongo.sh"
alias start-cloud="cd ~/vulcan/cloud/ && python plugin_dev/v17servicenode_launcher.py"
alias start-toolkit="cd ~/repos/toolkit/app-react && npm run watch"
alias ~~="cd /mnt/c/users/cw109854/"
alias ~="cd ~"
alias ssh-vulcan-dev="sshpass -p vulcan17 ssh vjuser@10.139.15.17"
alias ssh-hpcmgt="sshpass -p Bridge@123 ssh -v -oHostKeyAlgorithms=+ssh-rsa shaniuk@hpcmgt01ppd.idm.bfusa.com"
alias ssh-slurm="sshpass -p Bf20239854FallQuarter ssh millertodd@contractor.bfusa.com@10.243.28.113"
alias ssh-stable="sshpass -p vulcan17 ssh vjuser@10.139.15.89"

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
	alias arm="env /usr/bin/arch -arm64 /bin/zsh --login"
	alias intel="env /usr/bin/arch -x86_64 /bin/zsh --login"
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

