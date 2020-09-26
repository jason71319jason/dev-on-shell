#!/bin/bash

# update 
sudo apt-get update

# docker
if ! hash docker 2>/dev/null; then
    echo "To install docker"
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
fi

# pyenv
if ! hash pyenv 2>/dev/null; then
    if [ -d $HOME/.pyenv ]; then
        rm -rf $HOME/.pyenv
    fi
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
    git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
    echo -e "\n" >> $HOME/.bashrc
    echo '###########' >> $HOME/.bashrc
    echo '# pyenv' >> $HOME/.bashrc
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc
fi

# fzf
if ! hash fzf 2>/dev/null; then
    echo -e "\n" >> $HOME/.bashrc
    echo '###########' >> $HOME/.bashrc
    echo '# fzf' >> $HOME/.bashrc
    if [ -d ~/.fzf ]; then
        rm -rf ~/.fzf
    fi
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi
