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

# copy plugins
RT_PLUGINS=~/.vim/plugins/
VIM_PLUGINS=./vim_runtime/plugins
mkdir -p $RT_PLUGINS
cp $VIM_PLUGINS/* $RT_PLUGINS/


# copy colors
RT_COLOR=~/.vim/color/
mkdir -p $RT_COLOR
VIM_COLORS=./vim_runtime/colors
cp $VIM_COLORS/* $RT_COLOR/



