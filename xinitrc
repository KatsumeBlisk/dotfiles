#!/bin/sh
# xinitrc
# Zack Lofgren
# 17 May 2019

mpd

xsetroot -solid "#282828"
#feh --bg-scale ~/Pictures/wallpaper.jpg
current_time=$(date "+%Y %b %d %H:%M")
xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% | $current_time | Getting weather. . . "

unclutter &
setxkbmap -option caps:ctrl_modifier

statusbar &

exec dwm
