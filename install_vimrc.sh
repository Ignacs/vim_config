#!/bin/sh
set -e

PACK_VIMRCS=./vim_runtime/vimrcs

cat $PACK_VIMRCS/.vimrc > ~/.vimrc
# make sure
vi ~/.vimrc

# copy vimrcs
VIMRC=~/.vim/vimrcs/
mkdir -p $VIMRC
cp $PACK_VIMRCS/* $VIMRC/


