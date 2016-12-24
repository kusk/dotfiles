#!/bin/sh
echo Deploying dotfiles...
mkdir ~/.ssh
ssh-keygen -f /home/a/.ssh/id_rsa -N
ssh-copy-id a@maep.dk
echo --------------------------------------
echo Updating apt-cache
sudo add-apt-repository -y -y ppa:numix/ppa
sudo apt-get -y -qq update
echo Upgrading dist
sudo apt-get -y -qq dist-upgrade
sudo apt-get -y -qq install git rofi arc-theme exuberant-ctags mpv htop zsh feh vlc tmux nmap curl build-essential libx11-dev libxinerama-dev sharutils chromium-browser cmake filezilla mc vim python3-pip redshift xcompmgr masscan libxft-dev numix-icon-theme vim-youcompleteme &> /dev/null
echo --------------------------------------
echo Deploying dotfiles
git clone http://github.com/kusk/dotfiles ~/.dotfiles
echo --------------------------------------
echo Deploying Powerline fonts
cd /tmp
git clone https://github.com/powerline/fonts  &> /dev/null
cd /tmp/fonts
sh install.sh
cd ~/
echo --------------------------------------
echo Deploying dotfiles
mkdir ~/.config/xfce4/terminal
ln ~s ~/.dotfiles/xsession ~/.xsession
ln ~s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/ssh/config ~/.ssh/config
ln -s ~/.dotfiles/themes ~/.themes
ln -s ~/.dotfiles/quicktile.cfg ~/.config/quicktile.cfg
ln ~s ~/.dotfiles/xsession ~/.xsession
ln ~s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc ~/.vimrc

echo --------------------------------------
echo Deploying Oh-My-Zsh

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &> /dev/null
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting &> /dev/null
ln -s ~/.dotfiles/zshrc ~/.zshrc

echo --------------------------------------
echo Deploying vim
vam install youcompleteme  &> /dev/null


echo --------------------------------------
echo Deploying SublimeText3
mkdir ~/apps
scp maep.dk:~/apps/sublime-text-3.zip ~/apps/
cd ~/apps
unzip sublime-text-3.zip  &> /dev/null
rm -rf ~/apps/sublime-text-3.zip
cd ~/

echo --------------------------------------
echo Deploying SublimeText3 configs
scp maep.dk:~/apps/sublime-text-3-config.zip ~/.config/
cd ~/.config
unzip sublime-text-3-config.zip  &> /dev/null
rm ~/.config/sublime-text-3-config.zip
cd ~/
echo --------------------------------------
echo Updating various settings
chsh -s /usr/bin/zsh
curl https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim > ~/.vim/plugged/vim-colorschemes/colors/hybrid.vim
vim
