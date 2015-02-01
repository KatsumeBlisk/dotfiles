#!/bin/sh
# xinitrc
# KatsumeBlisk
# 18 January 2015

xrdb -merge ~/.Xresources

feh --bg-scale ~/pictures/gnu.png

xrandr --output VGA1 --auto --output LVDS1 --auto --right-of VGA1

exec spectrwm

