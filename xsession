#!/bin/sh
synclient MaxTapTime=0 &
xcompmgr &
redshift &
feh --bg-fill ~/dotfiles/wallpapers/solarized.png &
~/src/dwm/dwm-statusbar &
exec dwm
