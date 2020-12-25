#!/usr/bin/env bash
vi -c "PlugInstall"
mkdir -p ${HOME}/.vim/plugged/vim-airline-themes/autoload/airline/themes/
wget https://raw.githubusercontent.com/NewProggie/NewProggie-Color-Scheme/master/vim-airline-themes/newproggie.vim -O ${HOME}/.vim/plugged/vim-airline-themes/autoload/airline/themes/newproggie.vim
