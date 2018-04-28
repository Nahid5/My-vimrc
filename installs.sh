#!/usr/bin/env bash

if [ "$(id -u)" != "0" ]; then
  exec sudo "$0" "$@"
fi

apt-get install vim
apt-get install gcc
apt-get install gdb
apt-get install git
apt-get install python3
apt-get install python3-pip
apt-get install curl
apt-get install openjdk-11-jdk
apt-get install openjdk-11-jre
apt-get install ssh
apt-get install dos2unix
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim a -c 'PluginInstall'
