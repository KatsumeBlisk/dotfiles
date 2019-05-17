#!/bin/sh
# xinitrc
# Zack Lofgren
# 17 May 2019

xrdb -merge ~/.Xresources

xsetroot -solid "#282828"

setxkbmap -option caps:ctrl_modifier

while true
do
	xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% | $(date +%H:%M) MST | $(date -u +%H:%M) UTC"
	sleep 1;
done &

exec dwm
