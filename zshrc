# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="compact"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/a/bin:~/dotfiles/bin:~/.local/bin:/usr/local/lib
export GOPATH=~/src/go/imports

JAVA_HOME=/usr/lib/jvm/java-7-oracle


alias scannet='sudo watch arp-scan --interface=eth1 --localnet'

alias myip='curl ifconfig.me/all'
alias portscan='nmap -v -sT'
alias groovesalad="mpg123 -Cq http://ice.somafm.com/groovesalad"
alias cliqhop="mpg123 -Cq http://ice.somafm.com/cliqhop"
alias spacestation="mpg123 -Cq http://ice.somafm.com/spacestation"
alias missioncontrol="mpg123 -Cq http://ice.somafm.com/missioncontrol"
alias secretagent="mpg123 -Cq http://ice.somafm.com/secretagent"
alias christmas="mpg123 -Cq http://ice.somafm.com/christmas"
alias dronezone="mpg123 -Cq http://ice.somafm.com/dronezone"

alias df='df -h'

alias ll='ls -ABFhovX --color=auto --group-directories-first --time-style=long-iso'

alias apt-s='apt-cache search'
alias apt-i='sudo apt-get install'

# ls colorizing with dircolors.
(( $+commands[dircolors] )) && eval $(dircolors ~/dotfiles/dir_colors)
