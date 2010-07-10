OS=$(uname)

if [ "$OS" = "Linux" ]; then
    alias ls='ls -F --color=auto'
elif [ "$OS" = "Darwin" ]; then
    export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
    alias ls='ls -G'
fi

alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias bc='bc -l'

ME=`whoami`
alias psm='ps -u $ME'
alias em='emacs -nw'
alias rsync='rsync -v'

export PS1='\u@\h \w $(__git_ps1 "(%s) ")$ '
export PATH=~/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/usr/local/share/man:/opt/local/share/man:$MANPATH
export PYTHONPATH=~/lib/python:~/backend:~/django:~/frontend:$PYTHONPATH
export EDITOR=emacs

HISFILESIZE=1000000000
HISTSIZE=1000000

if [ "$OS" = "Linux" ] && [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
elif [ "$OS" = "Darwin" ] && [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
