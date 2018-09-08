#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential
sudo apt-get install apt-transport-https -y
sudo apt-get install vim -y
sudo apt-get install gcc -y
sudo apt-get install gdb -y
sudo apt-get install git -y
sudo apt-get install python -y
sudo apt-get install python-pip -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo apt-get install curl -y
sudo apt-get install openjdk-11-jdk -y
sudo apt-get install openjdk-11-jre -y
sudo apt install net-tools -y
sudo apt-get install ssh -y
sudo apt-get install dos2unix -y
sudo apt-get install code -y     #Install vs code
sudo apt-get install sshpass -y
sudo apt-get install tmux -y
#Install powerline for bash
sudo apt-get install powerline -y
sudo apt-get install fonts-powerline -y
pip3 install powerline-status
# After do the things in bashrc config

#Move update of repo to opt
cp update_git_repos.sh /opt/

#Vim settings
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc

#Install custom tmux settings
echo "export TERM=xterm-256color" >> ~/.profile
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
# :PluginInstall
#vim a -c 'PluginInstall' -c 'q' -c 'q'
