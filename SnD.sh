#
# Source-and-Develop
# Usage: source SnD.sh
#

export SND=$HOME/.SnD
export VIM_SND=$SND/vimrc
export BASH_SND=$SND/bash

# Directory of SND
mkdir $SND >/dev/null 2>&1
cp -r vimrc $SND
cp -r bash $SND

# vim
$VIM_SND/SnD.sh
alias vim='vim -s $VIM_SND/SnD.vim'

# alias
$BASH_SND/SnD.sh
