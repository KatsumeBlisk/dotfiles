#!/bin/sh
# xinitrc
# Zack Lofgren
# 17 May 2019

mpd
xsetroot -solid "#282828"
sxhkd &
setxkbmap -option caps:ctrl_modifier
xmodmap -e 'keycode 135 = Super_R'&
statusbar &

exec dwm
