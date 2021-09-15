#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install apt-transport-https -y
sudo apt-get install vim -y
sudo apt-get install gcc -y
sudo apt-get install gdb -y
sudo apt-get install git -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo apt-get install python3-venv -y
sudo apt-get install curl -y
sudo apt install net-tools -y
sudo apt-get install ssh -y
sudo apt-get install dos2unix -y
sudo apt-get install sshpass -y
sudo apt-get install tmux -y
sudo apt-get install virtualenv -y
sudo apt-get install cmake -y

#Vim settings
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc

#Export paths for python
usr_dir="$(eval echo ~$USER)" # Get the current user's home directory
py_path="export PATH=$usr_dir/.local/bin:\$PATH"
go_path="export PATH=/usr/local/go/bin:\$PATH"
echo "$py_path" >> "$usr_dir/.bashrc"
#Export paths for go
echo "$go_path" >> "$usr_dir/.bashrc"

# :PluginInstall
#vim a -c 'PluginInstall' -c 'q' -c 'q'

#For virtualbox
#sudo apt-get install virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-dkms

#For vmware
#sudo apt-get install open-vm-tools
