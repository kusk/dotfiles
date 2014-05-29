# Deploy script
echo "Installing applications"
sudo apt-get -y -q -q install xclip nmap hsetroot tmux zsh mpc mpd gmpc vlc vim xbindkeys x11-xserver-utils build-essential feh htop
sudo apt-get -y -q -q install libx11-dev libxinerama-dev sharutils suckless-tools chromium-browser urxvt filezilla

echo "Fetching Oh-My-Zsh"
cd
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Deploying dotfiles"

cd ~/

ln -s ~/dotfiles/ssh .ssh
ln -s ~/dotfiles/vim .vim
ln -s ~/dotfiles/xbindkeysrc .xbindkeysrc
ln -s ~/dotfiles/vimrc .vimrc
ln -s ~/dotfiles/tmux.conf .tmux.conf
ln -s ~/dotfiles/zshrc .zshrc
ln -s ~/dotfiles/Xdefaults .Xdefaults
ln -s ~/dotfiles/xprofile .xprofile
cp -s ~/dotfiles/oh-my-zsh/compact.zsh-theme ~/.oh-my-zsh/themes/compact.zsh-theme

echo "Setting shell"
chsh -s /bin/zsh

echo "Installing systemwide tools"
sudo ln -s ~/dotfiles/bin/multiscreen /usr/sbin/multiscreen
sudo ln -s ~/dotifles/bin/singlescreen /usr/sbin/singlescreen

echo "Setting up urxvt"
sudo cp /home/a/dotfiles/urxvt/clipboard /usr/lib/urxvt/perl/clipboard

echo "Disable guest user"
sudo sh -c "echo allow-guest=false >> /etc/lightdm/lightdm.conf.d/50-unity-greeter.conf"
echo 'Done'
