#!/usr/bin/env bash

if [ "$(id -u)" != "0" ]; then
  exec sudo "$0" "$@"
fi

apt-get install update -y
apt-get install upgrade -y
apt-get install vim -y
apt-get install gcc -y
apt-get install gdb -y
apt-get install git -y
apt-get install python3 -y
apt-get install python3-pip -y
apt-get install curl -y
apt-get install openjdk-11-jdk -y
apt-get install openjdk-11-jre -y
apt-get install ssh -y
apt-get install dos2unix -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim a -c 'PluginInstall'
