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
alias ll='ls -ABFhvXl --color=auto --group-directories-first --time-style=long-iso'

eval `dircolors ~/.dotfiles/dircolors.256dark`
PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib
