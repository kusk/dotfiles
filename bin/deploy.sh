# Deploy script
echo "Installing applications"
sudo apt-get -y -q -q install git curl nmap tmux zsh vlc vim feh htop mplayer mpsyt
sudo apt-get -y -q -q install chromium-browser filezilla gimp mc sqlitebrowser wireshark

echo "Creating symlinks"

cd ~/
ln -s ~/dotfiles/themes .themes
ln -s ~/dotfiles/vim .vim
ln -s ~/dotfiles/ssh .ssh
ln -s ~/dotfiles/vimrc .vimrc
ln -s ~/dotfiles/difmplayrc .difmplayrc
ln -s ~/dotfiles/tmux.conf .tmux.conf
ln -s ~/dotfiles/zshrc .zshrc
ln -s ~/dotfiles/gdbinit .gdbinit
rm -rf ~/.Xdefaults
ln -s ~/dotfiles/Xdefaults .Xdefaults
cp ~/dotfiles/config/xfce4/terminal/terminalrc ~/.config/xfce4/terminal/
cp ~/dotfiles/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

echo "Gitting oh-my-zsh and vim plugins"
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh



#echo "Setting up urxvt and oh-my-zsh"
#sudo cp ~/dotfiles/urxvt/clipboard /usr/lib/urxvt/perl/clipboard
cp -s ~/dotfiles/oh-my-zsh/compact.zsh-theme ~/.oh-my-zsh/themes/compact.zsh-theme

echo "Setting shell"
chsh -s /usr/bin/zsh

#echo "Disable guest user"
#sudo sh -c "echo allow-guest=false >> /etc/lightdm/lightdm.conf.d/50-unity-greeter.conf"
echo 'Done'
