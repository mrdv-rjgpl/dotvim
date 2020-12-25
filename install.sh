#!/usr/bin/env bash
mkdir -p ${HOME}/.vim/colors
mkdir -p ${HOME}/.vim/plugged/vim-airline-themes/autoload/airline/themes/
wget https://raw.githubusercontent.com/NewProggie/NewProggie-Color-Scheme/master/colors/newproggie.vim -O ${HOME}/.vim/colors/newproggie.vim
wget https://raw.githubusercontent.com/NewProggie/NewProggie-Color-Scheme/master/vim-airline-themes/newproggie.vim -O ${HOME}/.vim/plugged/vim-airline-themes/autoload/airline/themes/newproggie.vim
