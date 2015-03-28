# Deploy script
echo "Installing applications"
sudo apt-get -y -q -q install git curl dwm firefox iceweasel build-essential libx11-dev libxinerama-dev sharutils nmap hsetroot tmux zsh vlc vim feh htop mplayer
sudo apt-get -y -q -q install chromium-browser rxvt-unicode filezilla gimp mc sqlitebrowser wireshark git


echo "Gitting dotfiles"
cd ~/
git clone https://github.com/kusk/dotfiles.git

echo "Creating symlinks"

cd ~/
ln -s ~/dotfiles/vim .vim
ln -s ~/dotfiles/ssh .ssh
ln -s ~/dotfiles/vimrc .vimrc
ln -s ~/dotfiles/difmplayrc .difmplayrc
ln -s ~/dotfiles/tmux.conf .tmux.conf
ln -s ~/dotfiles/zshrc .zshrc
ln -s ~/dotfiles/gdbinit .gdbinit
rm -rf ~/.Xdefaults
ln -s ~/dotfiles/Xdefaults .Xdefaults

echo "Gitting oh-my-zsh and vim plugins"
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh



echo "Setting up urxvt and oh-my-zsh"
sudo cp ~/dotfiles/urxvt/clipboard /usr/lib/urxvt/perl/clipboard
cp -s ~/dotfiles/oh-my-zsh/compact.zsh-theme ~/.oh-my-zsh/themes/compact.zsh-theme

echo "Setting shell"
chsh -s /usr/bin/zsh

#echo "Disable guest user"
#sudo sh -c "echo allow-guest=false >> /etc/lightdm/lightdm.conf.d/50-unity-greeter.conf"
echo 'Done'
