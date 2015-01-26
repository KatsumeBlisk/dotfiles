#!/bin/sh
# xinitrc
# KatsumeBlisk
# 18 January 2015

xrdb -merge ~/.Xresources

feh --bg-scale ~/pictures/gnu.png

exec spectrwm

