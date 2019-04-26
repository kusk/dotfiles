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

# Customize to your needs...
#
#
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host user dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time ssh)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_USER_ICON="\u265E" # 
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_TIME_FORMAT='\u231A%D{%H:%M}'
POWERLEVEL9K_HOST_TEMPLATE="%3m"
POWERLEVEL9K_HOST_ICON="\u26CA"


alias df="df -h"
alias ipa='ip -o -c a'
alias free="free -h"
alias myip='curl ifconfig.co'
alias ll='ls -ABFhvXl --color=auto --group-directories-first --time-style=long-iso'
alias mount_share='/usr/bin/vmhgfs-fuse .host:/share share -o subtype=vmhgfs-fuse,allow_other'
setxkbmap -option ctrl:nocaps
eval `dircolors ~/.dotfiles/LS_COLORS`
PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height=16 --inline-info"
