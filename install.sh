#!/usr/bin/env bash
ln -s plugins/NewProggie-Color-Scheme/colors/newproggie.vim colors/newproggie.vim
git clone https://github.com/powerline/fonts.git ~/fonts
cd ~/fonts && ./install.sh && cd ~ && rm -rf fonts
ln -s plugins/NewProggie-Color-Scheme/vim-airline-themes/newproggie.vim plugins/vim-airline-themes/plugin/newproggie.vim
