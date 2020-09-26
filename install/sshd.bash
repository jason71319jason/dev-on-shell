#!/bin/bash


if ! hash sshd 2>/dev/null; then
    sudo apt-get install -y openssh-server
    sudo systemctl enable ssh
    sudo systemctl start ssh
fi

# firewall
if ! hash ufw 2>/dev/null; then
    sudo apt-get install -y ufw
fi

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable
