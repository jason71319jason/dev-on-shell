#!/bin/bash

# update 
sudo apt-get update

# vim
if ! hash vim 2>/dev/null; then
	echo "To install vim"
	sudo apt-get -y install vim
fi

# git
if ! hash git 2>/dev/null; then
	echo "To install git"
	sudo apt-get -y install git
fi

# g++
if ! hash g++ 2>/dev/null; then
    echo "To install g++"
    sudo apt-get -y install g++
fi

# basic
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev

