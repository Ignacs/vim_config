#!/bin/sh
set -e


cat ~/.vim_runtime/vimrcs/.vimrc >> ~/.vimrc
# make sure
vi ~/.vimrc

# copy vimrcs
mkdir -p ~/.vim/vimrcs/
cp ~/.vim_runtime/vimrcs/* ~/.vim/vimrcs/

# plugin management
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
