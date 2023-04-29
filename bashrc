# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

PS1="\[\e[1;36m\]\u@\[\e[1;33m\]\h \[\e[1;35m\]\W \$ \[\e[00m"

# My custom aliases
set -o vi
alias v="nvim"
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# alias for connecting to msvpn.wusm.wustl.edu
alias wusmvpn="sudo openconnect -u emnehls@wustl.edu msvpn.wusm.wustl.edu"

## Working with Python venv
alias ae='deactivate &> /dev/null; source ./venv/bin/activate'
alias de='deactivate'

# allow for local modifications
if [ -f $HOME/.bashrc_local ]; then
    . $HOME/.bashrc_local
fi

## My custom paths
#export PATH="${PATH}:${HOME}/src/scripts:${HOME}/src/platform-tools"
export GOPATH=$HOME

if [ -d /usr/local/texlive/2023/bin/x86_64-linux ]; then
    export PATH=$PATH:/usr/local/texlive/2023/bin/x86_64-linux
fi
