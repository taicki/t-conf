alias ls='ls -F --color'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias bc='bc -l'
alias grep='grep -n'
ME=`whoami`
alias psm='ps -u $ME'

export PS1="\u@\h \w \$ "
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:~/bin
export MANPATH=/opt/local/share/man:$MANPATH
LIB="$HOME/lib"
export CLASSPATH=".:$LIB/ant.jar:$LIB/antlr-2.7.7.jar:$LIB/antlr-3.0.1.jar:$LIB/antlr-runtime-3.0.1.jar:$LIB/stringtemplate-3.1b1.jar"
export EDITOR=vim

alias dejaview='ssh -p 12049 dejaview@localhost'
alias rsync='rsync --progress'

export PYTHONPATH=~/lib/python:$PYTHONPATH
