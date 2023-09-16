#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


alias mount_share='/usr/bin/vmhgfs-fuse .host:/share /home/a/share -o subtype=vmhgfs-fuse,allow_other'
alias df="df -h"
alias ipa='ip -o -c a'
alias free="free -h"
alias myip='curl ifconfig.co'
alias ll='lsd -hl --group-directories-first'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

autoload -Uz promptinit
promptinit
prompt powerlevel10k


PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

GREEN="\033[1;32m"
RED="\033[1;31m"
PINK="\033[1;35m"
CYAN="\033[1;36m"
NOCOLOR="\033[0m"

#echo ${RED}TMUX${NOCOLOR}"\t\t\t""\t"${GREEN}XFCE${NOCOLOR}
#echo ${PINK}C-a ${CYAN}.${NOCOLOR}"\t\t"Rename session"\t"${PINK}Alt ${CYAN}Print${NOCOLOR}"\t"ScrShot Window
#echo ${PINK}C-a ${CYAN},${NOCOLOR}"\t\t"Rename window"\t"${PINK}Alt ${CYAN}p${NOCOLOR}"\t\t"Rofi
#echo ${PINK}C-a ${CYAN}Space${NOCOLOR}"\t"Next window"\t"${PINK}Alt ${CYAN}Enter${NOCOLOR}"\t"Terminal
#echo ${PINK}C-a ${CYAN}Tab${NOCOLOR}"\t""\t"Window list"\t"${PINK}Alt ${CYAN}Shift${NOCOLOR}"\t"Max/min Window
#echo ${PINK}C-a ${CYAN}p${NOCOLOR}"\t""\t"Save to log"\t"
#echo ${PINK}C-a ${CYAN}x${NOCOLOR}"\t""\t"Kill pane"\t"
#echo ${PINK}C-a ${CYAN}c${NOCOLOR}"\t""\t"Create window"\t"
#echo ${PINK}C-a ${CYAN}/${NOCOLOR}"\t""\t"Search pane"\t"
#echo ${PINK}C-a ${CYAN}Enter${NOCOLOR}"\t"Detach pane"\t"
#echo ${PINK}C-a ${CYAN}Arrows${NOCOLOR}"\t"Create pane"\t"
#echo ${PINK}M-Select ${CYAN}Enter${NOCOLOR}"\t"Copy text
