#!/usr/bin/env bash

if [ "$(id -u)" != "0" ]; then
  exec sudo "$0" "$@"
fi

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get update
apt-get upgrade -y
apt-get install vim -y
apt-get install gcc -y
apt-get install gdb -y
apt-get install git -y
apt-get install python3 -y
apt-get install python3-pip -y
apt-get install curl -y
apt-get install openjdk-11-jdk -y
apt-get install openjdk-11-jre -y
apt install net-tools -y
apt-get install ssh -y
apt-get install dos2unix -y
apt-get install code -y
apt-get install sshpass -y
apt-get install tmux -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ..
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# :PluginInstall
#vim a -c 'PluginInstall' -c 'q' -c 'q'
