alias ls='ls -F'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias bc='bc -l'
#alias grep='grep -n'
ME=`whoami`
alias psm='ps -u $ME'
alias em='emacs -nw'

export PS1="\u@\h \w \$ "
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH:~/bin
export MANPATH=/usr/local/share/man:/opt/local/share/man:$MANPATH
LIB="$HOME/lib"
export CLASSPATH=".:$LIB/ant.jar:$LIB/antlr-2.7.7.jar:$LIB/antlr-3.0.1.jar:$LIB/antlr-runtime-3.0.1.jar:$LIB/stringtemplate-3.1b1.jar"
export EDITOR=emacs

alias dejaview='ssh -p 12049 dejaview@localhost'
alias rsync='rsync -v'

export PYTHONPATH=~/lib/python:$PYTHONPATH
#alias screen='TERM=screen screen'

HISFILESIZE=1000000000
HISTSIZE=1000000

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
