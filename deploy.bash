#!/bin/bash

BASH_SETTING_DIR=$HOME/.bash_setting
BASHRC=$HOME/.bashrc
RAND=$RANDOM

if [ -d $BASH_SETTING_DIR ]; then

    echo "You already have a .vim folder in your home directory."
    read -p "Would you like to backup your .vim folder first? [y/n] " ans

    if [ "$ans" == "y" ]; then
        mv $BASH_SETTING_DIR $BASH_SETTING_DIR-$(date +%Y%m%d)-$RAND
    else
        echo "You have a $BASH_SETTING_DIR now, please backup this first."
        exit
    fi
fi

cp -r bash $BASH_SETTING_DIR

SETTINGS=$(ls $BASH_SETTING_DIR)

if [ ! -f $BASHRC ]; then
    touch $BASHRC
fi

echo -e "\n" >> $BASHRC
echo "##############" >> $BASHRC
echo "# bash config" >> $BASHRC

for setting in ${SETTINGS}
do
     echo "source ${BASH_SETTING_DIR}/${setting}" >> $BASHRC
done
echo "##############" >> $BASHRC
