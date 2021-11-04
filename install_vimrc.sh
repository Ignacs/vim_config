#!/bin/sh
set -e

cat ~/.vim_runtime/vimrcs/basic_vimrc >> ~/.vimrc
cp ~/.vim_runtime/vimrcs/* ~/.vim/vimrcs/
