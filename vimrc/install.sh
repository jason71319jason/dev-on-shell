#!/bin/bash

VIM_FOLDER=$HOME/.vim
VIMRC=$HOME/.vimrc
RAND=$RANDOM

if [ -d $HOME/.vim ]; then

    echo "You already have a .vim folder in your home directory."
    read -p "Would you like to backup your .vim folder first? [y/n] " ans

    if [ "$ans" == "y" ]; then
        mv $VIM_FOLDER $VIM_FOLDER-$(date +%Y%m%d)-$RAND
    else
        echo "You have a $VIM_FOLDER now, please backup this first."
        exit
    fi
fi

if [ -L $VIMRC ]||[ -f $VIMRC ]; then

    echo "There's a .vimrc in your home directory."
    read -p "Would you like to backup your .vimrc first? [y/n] " ans
    if [ "$ans" == "y" ]
    then
        mv $VIMRC $VIMRC-$(date +%Y%m%d)-$RAND
    else
        echo "You have a $VIMRC now, please backup this first."
        exit
    fi
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    hash git >/dev/null && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || {
        echo "Install Git first"
    exit
}
fi

cp -r ./plugin $VIM_FOLDER
cp -r ./init $VIM_FOLDER
cp -r ./colors $VIM_FOLDER
cp ./vimrc $VIMRC

vim +PluginInstall +qa

echo 'Finish vimrc setting'
exit
