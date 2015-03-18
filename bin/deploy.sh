# Deploy script
echo "Installing applications"
sudo apt-get -y -q -q install git nmap hsetroot tmux zsh vlc vim feh htop mplayer
sudo apt-get -y -q -q install chromium-browser urxvt filezilla gimp mc sqlitebrowser wireshark 

echo "Fetching Oh-My-Zsh"
cd
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Deploying dotfiles"

cd ~/

ln -s ~/dotfiles/ssh .ssh
ln -s ~/dotfiles/vim .vim
ln -s ~/dotfiles/vimrc .vimrc
ln -s ~/dotfiles/difmplayrc .difmplayrc
ln -s ~/dotfiles/tmux.conf .tmux.conf
ln -s ~/dotfiles/zshrc .zshrc
ln -s ~/dotfiles/Xdefaults .Xdefaults
cp -s ~/dotfiles/oh-my-zsh/compact.zsh-theme ~/.oh-my-zsh/themes/compact.zsh-theme

echo "Setting shell"
chsh -s /usr/bin/zsh

echo "Setting up urxvt"
sudo cp ~/dotfiles/urxvt/clipboard /usr/lib/urxvt/perl/clipboard

#echo "Disable guest user"
#sudo sh -c "echo allow-guest=false >> /etc/lightdm/lightdm.conf.d/50-unity-greeter.conf"
echo 'Done'
