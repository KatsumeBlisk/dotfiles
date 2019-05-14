#!/bin/sh
# xinitrc
# d9a
# 14 May 2019

xrdb -merge ~/.Xresources

#bgs /home/d9a/pictures/QzzLgE6.png &
feh --bg-scale /home/d9a/Pictures/04121_windwaterfireearth_1920x1080.jpg &

setxkbmap -option caps:ctrl_modifier

#nm-applet &

while true
do
	xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% | $(date +%H:%M) MST | $(date -u +%H:%M) UTC"
	sleep 1;
done &

xset +fp /usr/share/fonts/local/
exec dwm

