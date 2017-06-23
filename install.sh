#!/usr/bin/env bash
ln -s ~/.vim/plugins/NewProggie-Color-Scheme/colors/newproggie.vim ~/.vim/colors/newproggie.vim
git clone https://github.com/powerline/fonts.git ~/fonts
cd ~/fonts && ./install.sh && cd ~ && rm -rf fonts
ln -s ~/.vim/plugins/NewProggie-Color-Scheme/vim-airline-themes/newproggie.vim ~/.vim/plugins/vim-airline-themes/plugin/newproggie.vim
