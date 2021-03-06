#!/bin/sh
dir=$(pwd)

# create symlinks for each file
ln -s $dir/irssi ~/.irssi
ln -s $dir/tmux.conf ~/.tmux.conf
ln -s $dir/xinitrc ~/.xinitrc
ln -s $dir/zshrc ~/.zshrc

if [ ! -d ~/.config ]; then
	mkdir ~/.config
fi

if [ ! -d ~/.local ]; then
	mkdir ~/.local
fi

ln -s $dir/config/nvim ~/.config/nvim
ln -s $dir/config/mpd ~/.config/mpd
ln -s $dir/config/newsboat ~/.config/newsboat
ln -s $dir/config/sxhkd ~/.config/sxhkd

ln -s $dir/local ~/.local
