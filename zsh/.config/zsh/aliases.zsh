#!/bin/sh

export PATH='/usr/bin':$PATH
alias ll="ls -l"
alias lla="ls -al"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


alias lg='lazygit'

alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias nvim='/opt/nvim/nvim'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# vulcan/bfusa specific

#parallel-ssh, scp, 
alias pssh="parallel-ssh"
alias pscp="parallel-scp"

# local startup aliases 
alias start-mongo="~/vulcan/mongo/bin/mongod.exe --storageEngine wiredTiger --dbpath ~/mongo/database/wiredtiger"
alias start-cloud="cd ~/vulcan/cloud/ && python plugin_dev/v17servicenode_launcher.py"
alias start-toolkit="cd ~/repos/toolkit/app-react && npm run watch"

# directory aliases
alias ~~="cd /mnt/c/users/cw109854/"
alias ~="cd ~"
alias config_alias="nvim ~/dotfiles/zsh/.config/zsh/aliases.zsh"
alias config_nvim="nvim ~/dotfiles/nvim/.config/nvim/lua/user/"

# head-nodes for pbs, slurm, bamboo
alias ssh-hpcmgt="sshpass -p $BFUSA_HPCMGT ssh -v -oHostKeyAlgorithms=+ssh-rsa root@hpcmgt01ppd.idm.bfusa.com"
alias ssh-slurm="sshpass -p $BFUSA_SLURM ssh millertodd@contractor.bfusa.com@10.243.28.113"
alias ssh-bamboo="sshpass -p $BFUSA_BAMBOO ssh -v -oHostKeyAlgorithms=+ssh-rsa root@10.139.15.67"

# docker v2 image repository
alias ssh-registry="sshpass -p $BFUSA_IMAGE_REGISTRY ssh -v -oHostKeyAlgorithms=+ssh-rsa root@appbra02tpd.idm.bfusa.com"

# vulcan servers
alias ssh-dev="sshpass -p $BFUSA_VJUSER ssh vjuser@10.139.15.17"
alias ssh-stable="sshpass -p $BFUSA_VJUSER ssh vjuser@10.139.15.89"
alias ssh-branch="sshpass -p $BFUSA_VJUSER ssh vjuser@10.139.15.37"

# ec2 instances
alias ssh-toddbox="ssh -i ~/.ssh/temp-todd-rsa.pem ubuntu@10.243.28.147"
alias ssh-slurmprod="ssh -i ~/.ssh/prod_hpc_api_user.pem ec2-user@10.243.45.155"
alias ssh-ec2-1="ssh -i ~/.ssh/bamboo_ec2_1.pem ec2-user@10.243.28.137"
alias ssh-ec2-2="ssh -i ~/.ssh/bamboo_ec2_1.pem ec2-user@10.243.28.166"

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

