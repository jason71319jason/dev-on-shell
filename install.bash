#!/bin/bash

read -p  "Install vim, git? [y/n] " ans
if [ "$ans" == "y" ]; then
    ./install/basic.bash
fi

read -p  "Install more tools (docker, pyenv, virtualenv...)? [y/n] " ans
if [ "$ans" == "y" ]; then
    ./install/addition.bash
fi

read -p "Install ssh-server? [y/n] " ans
if [ "$ans" == "y" ]; then
    ./install/sshd.bash
fi

