#!/bin/sh
# xinitrc
# KatsumeBlisk
# 18 January 2015

xrdb -merge ~/.Xresources

bgs /home/d9a/pictures/QzzLgE6.png &

setxkbmap -option caps:ctrl_modifier

nm-applet &

while true
do
	xsetroot -name "$(date +%H:%M) MST | $(date -u +%H:%M) UTC"
	sleep 1;
done &

exec dwm

