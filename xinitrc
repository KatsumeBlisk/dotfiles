#!/bin/sh
# xinitrc
# KatsumeBlisk
# 18 January 2015

xrdb -merge ~/.Xresources

#xrandr --output VGA1 --auto --output LVDS1 --auto --right-of VGA1 

nitrogen --restore &

seq 0 1 | xargs -l1 -I@ compton -b -d :0.@

setxkbmap -option caps:ctrl_modifier

#exec spectrwm
exec dwm

