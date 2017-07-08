#!/usr/bin/env bash
#ln -s ~/.vim/plugins/NewProggie-Color-Scheme/colors/newproggie.vim ~/.vim/colors/newproggie.vim
echo "Creating symbolic link for file .vimrc..."
ln -s ~/.vim/vimrc ~/.vimrc
echo "Installing plugins..."
vi -c "PlugInstall | q | q"
echo "Installing powerline fonts..."
git clone https://github.com/powerline/fonts.git ~/fonts
cd ~/fonts && ./install.sh && cd ~ && rm -rf fonts
echo "Updating airline color scheme to newproggie..."
ln -s ~/.vim/plugins/NewProggie-Color-Scheme/vim-airline-themes/newproggie.vim ~/.vim/plugins/vim-airline-themes/plugin/newproggie.vim
