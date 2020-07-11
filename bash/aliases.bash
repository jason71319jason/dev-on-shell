# !/bin/bash

# rm
# dangerous cmd
alias rmf='rm -f'
alias rmr='rm -r'
alias rmrf='rm -rf'

# ls
alias ls='ls --color=auto'
alias la='ls -AF'
alias ll='ls -alF'
alias l='ls -CF'
alias l..='ls ..'

# tar
alias untar='tar -zxvf'
alias dotar='tar -zcvf'

# mkdir
alias md='mkdir -pv'
alias rd='rmdir'

# cd
alias ..='cd ..'
alias .1='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# grep
alias grep='grep --color=auto'

# apt-get
if [ $UID -ne 0 ]; then
    alias aptupd='sudo apt-get update'
    alias aptupg='sudo apt-get upgrade'
    alias aptins='sudo apt-get install'
    alias aptrm='sudo apt-get remove'
fi

# diff
alias diff='colordiff'

# cp
alias cpr='cp -r'

# scp
alias scpr='scp -r'

#
alias odir='nautilus .'
alias 777='chmod 777'
alias clr='clear'

if [ ! -f ~/.fzf/install ]; then
    alias hi='history'
    alias hig='history | grep'
else
    alias hi='history | fzf'
    alias hig='history | fzf'
    alias fzhead="fzf --preview 'head {}'"
    alias fzcat="fzf --preview 'cat {}'"
    alias fzfile="fzf --preview 'file {}'"
fi
