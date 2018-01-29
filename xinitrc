#!/bin/sh
# xinitrc
# KatsumeBlisk
# 18 January 2015

xrdb -merge ~/.Xresources

bgs /home/d9a/pictures/QzzLgE6.png &

setxkbmap -option caps:ctrl_modifier

nm-applet &
exec dwm

