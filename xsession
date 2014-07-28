#!/bin/sh
xset +fp /home/a/dotfiles/fonts &
xset fp rehash &
synclient MaxTapTime=0 &
xbindkeys &
/home/a/dotfiles/dwm/dwm-status &
#hsetroot -add \#575b72 -add \#20253f -add \#111421 -gradient 240
xsetroot -mod 8 8 -fg "#222" -bg "black"
ssh-agent sh -c 'ssh-add < /dev/null && bash'
wmname LG3D
exec dwm
