#!/usr/bin/env bash

# Repo for vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get upgrade -y
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
sudo apt-get install fonts-powerline -y
pip install powerline-shell
cat bash.config >> ~/.bashrc

#Vim settings
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc

#Install custom tmux settings
echo "export TERM=xterm-256color" >> ~/.profile
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# :PluginInstall
#vim a -c 'PluginInstall' -c 'q' -c 'q'
