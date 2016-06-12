#!/bin/sh
synclient MaxTapTime=0 &
redshift &
feh --bg-fill ~/Billeder/ff.jpg &
/home/a/src/dwm/dwm-statusbar &
exec dwm
