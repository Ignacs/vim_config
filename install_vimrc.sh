#!/bin/sh
set -e

VIMRCS=~/vim_runtime/vimrcs

cat $VIMRCS/.vimrc >> ~/.vimrc
# make sure
vi ~/.vimrc

# copy vimrcs
mkdir -p ~/.vim/vimrcs/
cp $VIMRCS/* ~/.vim/vimrcs/

# plugin management
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

ehco "Execute :NeoBundleInstall(!) in vim to install plugins"

