# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Insert sudo in line with ALT+s
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo



# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man-pages cp catimg sublime zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:~/dotfiles/bin:~/.local/bin:/usr/local/lib
export GOPATH=~/src/go/imports

export PATH=$PATH:/usr/local/bin

JAVA_HOME=/usr/lib/jvm/java-7-oracle

alias apti='sudo apt-get install'
alias apts='apt-cache search'

alias free='free -h'
alias tmux='tmux -2'
alias mount_www='sshfs a@nuc:/var/www /home/a/www'
alias mount_nuc='sshfs a@nuc:/home/a/files /home/a/nuc'
alias mount_nuc_outside='sshfs a@maep.dk:/home/a/files /home/a/nuc'
alias scannet='sudo watch arp-scan --interface=eth1 --localnet'

alias myip='curl ifconfig.me/all'

alias weather="curl -4 http://wttr.in/Copenhagen"

alias df='df -h'

alias ll='ls -ABFhvXl --color=auto --group-directories-first --time-style=long-iso'



eval `dircolors ~/dotfiles/dircolors.256dark`
