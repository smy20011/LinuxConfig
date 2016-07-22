#!/bin/bash

sudo apt-get update
sudo apt-get -y install vim git tmux wget python3 software-properties-common
sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
sudo apt-get update

# Setup tmux
wget https://gist.githubusercontent.com/spicycode/1229612/raw/e24eac21b20020b0cce10020e979ec0a142a356c/tmux.conf -O ~/.tmux.conf
echo "set -g prefix C-a" >> ~/.tmux.conf
echo "unbind-key C-b" >> ~/.tmux.conf
echo "bind-key C-a send-prefix" >> ~/.tmux.conf

# Setup pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py
rm get-pip.py

# Setup Golang
sudo apt-get install golang
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
