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
alias df="df -h"
alias free="free -h"
alias myip='curl -s httpbin.org/ip'
alias lll='ls -ABFhvXl --color=auto --group-directories-first --time-style=long-iso'
alias ll='/home/a/.dotfiles/bin/pilsner.pl'
setxkbmap -option ctrl:nocaps
eval `dircolors ~/.dotfiles/LS_COLORS`
PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height=16 --inline-info"
