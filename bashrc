OS=$(uname)

if [ "$OS" = "Linux" ]; then
    alias ls='ls -F --color=auto'
elif [ "$OS" = "Darwin" ]; then
    export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
    alias ls='ls -G'
fi

alias ll='ls -l'
alias l='ls'
alias la='ls -a'
alias lla='ls -al'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias bc='bc -l'
alias s='sudo'
alias c='cd'
alias ..='cd ..'
alias gr='grep'
alias le='less'
alias tm='tmux'

alias g='git'
complete -o default -o nospace -F _git g
alias gk='gitk'
alias gka='gitk --all'

ME=`whoami`
alias psm='ps -u $ME'

if [ "$OS" = "Darwin" -a ! -n "${SSH_TTY+x}" ]; then
    alias emacs='open -a Emacs.app'
    alias em='emacs'
    alias e='emacs'
else
    alias emacs='emacs -nw'
    alias em='emacs'
    alias e='emacs'
fi

alias rsync='rsync -v'
alias tf='tail -f'

export PS1='\u@\h \w c:$? $(__git_ps1 "(%s) ")$ '
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/share/man:/opt/local/share/man:$MANPATH
export PYTHONSTARTUP=~/bin/pystartup.py
export PYTHONPATH=.:$PYTHONPATH
export EDITOR="emacs -nw"

HISFILESIZE=1000000000
HISTSIZE=1000000

if [ "$OS" = "Linux" ] && [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
elif [ "$OS" = "Darwin" ] && [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

. ~/bin/make-completion-wrapper.sh

if [ -f $HOME/.bashlocalrc ]; then
    . $HOME/.bashlocalrc
fi
