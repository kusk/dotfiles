#!/bin/sh
xset +fp /home/a/dotfiles/fonts &
xset fp rehash &
synclient MaxTapTime=0 &
/home/a/dotfiles/dwm/dwm-status &
xsetroot -mod 8 8 -fg "#222" -bg "black"
ssh-agent sh -c 'ssh-add < /dev/null && bash'
wmname LG3D
exec dwm
