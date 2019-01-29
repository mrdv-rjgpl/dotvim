#!/usr/bin/env bash
echo "Creating symbolic link for file .vimrc..."
ln -s ~/.vim/vimrc ~/.vimrc
echo "Installing exuberant-ctags and pypy..."
sudo apt install exuberant-ctags pypy python3-pip
echo "Installing powerline and psutil..."
pip3 install powerline-status psutil
echo "Installing powerline fonts..."
git clone https://github.com/powerline/fonts.git ~/fonts
cd ~/fonts && ./install.sh && cd ~ && rm -rf fonts
