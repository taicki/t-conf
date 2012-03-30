OS=$(uname)

if [ "$OS" = "Linux" ]; then
    alias ls='ls -F --color=auto'
elif [ "$OS" = "Darwin" ]; then
    export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
    alias ls='ls -FG'
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
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color'
alias gr='grep'
alias le='less'
alias tm='tmux'
alias t='touch'
alias p='python'
alias o='open'

alias g='git'
complete -o default -o nospace -F _git g
alias gk='gitk'
alias gka='gitk --all'

ME=`whoami`
alias psm='ps -u $ME'

alias em='emacs -nw'
alias e='em'

alias rsync='rsync -v'
alias tf='tail -f'
alias ack='ack -i'

export PS1='\u@\h \w c:$? $(__git_ps1 "(%s) ")$ '
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/share/man:/opt/local/share/man:$MANPATH
export PYTHONSTARTUP=~/bin/pystartup.py
export PYTHONPATH=.:$PYTHONPATH
export EDITOR="emacs"
export LESSOPEN="|lesspipe.sh %s"
export CDPATH='.:~/:..:../..:~/.dirlinks'

# for history sync and append
shopt -s histappend
export PROMPT_COMMAND="history -n; history -a"
unset HISTFILESIZE
HISTSIZE=1000000
HISFILESIZE=1000000000

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
