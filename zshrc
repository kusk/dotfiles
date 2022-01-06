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

alias mount_share='/usr/bin/vmhgfs-fuse .host:/share share -o subtype=vmhgfs-fuse,allow_other'
alias df="df -h"
alias ipa='ip -o -c a'
alias free="free -h"
alias myip='curl ifconfig.co'
alias ll='ls -ABFhvXl --color=auto --group-directories-first --time-style=long-iso'
setxkbmap -option ctrl:nocaps
eval `dircolors ~/.dotfiles/LS_COLORS`
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

autoload -Uz promptinit
promptinit
prompt powerlevel10k


PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
