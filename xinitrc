#!/bin/sh
# xinitrc
# Zack Lofgren
# 17 May 2019

mpd
xsetroot -solid "#282828"
sxhkd &
setxkbmap -option caps:ctrl_modifier
statusbar &

exec dwm
