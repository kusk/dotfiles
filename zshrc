# load oh-my-zsh with powerline10k
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Auto update oh-my-zsh
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13

# oh-my-zsh plugins
plugins=(git fzf tmux)

source $ZSH/oh-my-zsh.sh


alias mount_share='/usr/bin/vmhgfs-fuse .host:/share /home/a/share -o subtype=vmhgfs-fuse,allow_other'
alias df="df -h"
alias ipa='ip -o -c a'
alias free="free -h"
alias myip='curl ifconfig.co'
alias ll='lsd -lh'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


export FZF_DEFAULT_OPTS='--color=bg+:#293739,bg:#1B1D1E,border:#808080,spinner:#E6DB74,hl:#7E8E91,fg:#F8F8F2,header:#7E8E91,info:#A6E22E,pointer:#A6E22E,marker:#F92672,fg+:#F8F8F2,prompt:#F92672,hl+:#F92672'


PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/.dotfiles/bin:~/.local/bin:/usr/local/lib

