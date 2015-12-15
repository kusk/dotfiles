#!/bin/sh
echo "Deploy script"
echo "1: To deploy Xubuntu/Ubuntu packages"
echo "2: To deploy oh-my-zsh"
echo "3: To deploy fancy apt prompt"
echo "4: To deploy vim-scripts"
echo "5: To deploy patched fonts"
echo "6: To deploy XFCE4 themes"
echo "7: To remove Xubuntu/Ubuntu home dirs"
echo "0: To exit"
echo -n "> "
read choice

if [ "$choice" -eq 4 ]; then
	echo "Deploying vim"
	echo "Creating dirs and symlinks"
	ln -s ~/dotfiles/vim ~/.vim
	ln -s ~/dotfiles/vimrc ~/.vimrc
	mkdir ~/dotfiles/vim/autoload
	mkdir ~/dotfiles/vim/bundle
	echo "Curling and gitting scripts"
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
	git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
elif [ "$choice" -eq 2 ]; then
	echo "Deploying zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	chsh -s /usr/bin/zsh
	ln -s ~/dotfiles/zshrc ~/.zshrc
elif [ "$choice" -eq 3 ]; then
	echo "Deploying fancy_apt"
	sudo echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
	echo "Done!"
elif [ "$choice" -eq 1 ]; then
	echo "Deploying Ubuntu packs"
	sudo apt-get -y -q -q install mpv htop zsh feh vlc tmux nmap curl
	sudo apt-get -y -q -q install chromium-browser filezilla mc
elif [ "$choice" -eq 5 ]; then
	echo "Deploying patched fonts"
	cd /tmp
	git clone https://github.com/powerline/fonts
	cd /tmp/fonts
	sh install.sh
elif [ "$choice" -eq 6 ]; then
	echo "Deploying XFCE4 themes"
	ln -s ~/dotfiles/themes ~/.themes
elif [ "$choice" -eq 7 ]; then
	echo "Removing directories"
	rm -rf ~/Musik
	rm -rf ~/Offentligt
	rm -rf ~/Skabeloner
	rm -rf ~/Videoklip
	rm -rf ~/Dokumenter
	rm -rf ~/Billeder
	echo "Done!"
elif [ "$choice" -eq 0 ]; then
	exit
fi
