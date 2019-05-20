#!/bin/sh
# xinitrc
# Zack Lofgren
# 17 May 2019

mpd

xsetroot -solid "#282828"
current_time=$(date "+%Y %b %d %H:%M")
xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% | $current_time | Getting weather. . . "

setxkbmap -option caps:ctrl_modifier
let timer=600
while true
do
	music="$(mpc --format "%artist% - %title% - %album%" current)"
	power="$(cat /sys/class/power_supply/BAT0/capacity)%"
	if [ $(cat /sys/class/power_supply/BAT0/status) != "Discharging" ]; then
		power="🗲 $power"
	fi
	if [ $timer -eq 600 ]; then
		let timer=0;
		wget -q --spider http://wttr.in
		if [ $? -eq 0 ]; then
			weather=$(curl "wttr.in/Fort Collins?format=3&u");
		else
			weather="Weather unavailable"
		fi
	fi
	current_time=$(date "+%Y %b %d %H:%M")
	xsetroot -name " $music | $power | $current_time | $weather"
	let timer=$timer+1
	sleep 1
done &

exec dwm
