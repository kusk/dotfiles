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
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n  transfer <file|directory>\n  ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "http://192.168.1.224:8080/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "http://192.168.1.224:8080/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "http://192.168.1.224:8080/$file_name"|tee /dev/null;fi;}


alias mount_share='/usr/bin/vmhgfs-fuse .host:/share share -o subtype=vmhgfs-fuse,allow_other'
alias df="df -h"
alias ipa='ip -o -c a'
alias free="free -h"
alias myip='curl ifconfig.co'
alias ll='ls -ABFhvXl --color=auto --group-directories-first --time-style=long-iso'
eval `dircolors ~/.dotfiles/LS_COLORS`
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

autoload -Uz promptinit
promptinit
prompt powerlevel10k


PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
