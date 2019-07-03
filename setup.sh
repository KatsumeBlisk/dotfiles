#!/bin/sh
# setup.sh
# Zack Lofgren
# 17 May 2019
dir=$(pwd)

# create symlinks for each file
ln -s $dir/irssi ~/.irssi
ln -s $dir/tmux.conf ~/.tmux.conf
ln -s $dir/xsession ~/.xsession
ln -s $dir/zshrc ~/.zshrc

if [ ! -d ~/.config ]; then
	mkdir ~/.config
fi

ln -s $dir/config/nvim ~/.config/nvim
