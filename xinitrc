#!/bin/sh
# xinitrc
# Zack Lofgren
# 17 May 2019

xrdb -merge ~/.Xresources

xsetroot -solid "#282828"

setxkbmap -option caps:ctrl_modifier
let min = 0
weather=$(curl "wttr.in/Fort Collins?format=3")
while true
do
	if [ $min -eq 1800 ]; then
		weather=$(curl "wttr.in/Fort Collins?format=3");
		min=0;
	fi
	current_time=$(date "+%Y %b %d %H:%M")
	xsetroot -name " 🗲 $(cat /sys/class/power_supply/BAT0/capacity)% | $current_time | $weather "
	let min=$min+1
	sleep 1
done &

exec dwm
