#!/bin/sh
synclient MaxTapTime=0 &
xcompmgr &
redshift &
feh --bg-fill ~/dotfiles/wallpapers/zF1V6EE.jpg &
~/src/dwm/dwm-statusbar &
exec dwm
