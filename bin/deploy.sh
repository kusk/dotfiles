#!/bin/sh
echo "Deploy script"
echo "1: To deploy Xubuntu/Ubuntu packages"
echo "2: To deploy oh-my-zsh"
echo "4: To deploy vim-scripts"
echo "5: To deploy patched fonts"
echo "6: To deploy XFCE4 themes"
echo "7: To deploy SublimeText3 configs"
echo "8: To upload SublimeText3 configs"
echo "9: To download SublimeText3"
echo "0: To exit"
echo -n "> "
read choice

if [ "$choice" -eq 4 ]; then
	echo "Deploying vim"
	echo "Creating dirs and symlinks"
	ln -s ~/dotfiles/vim ~/.vim
	ln ~s ~/dotfiles/xsession ~/.xsession
	ln ~s ~/dotfiles/tmux.conf ~/.tmux.conf
	ln -s ~/dotfiles/vimrc ~/.vimrc
	mkdir ~/dotfiles/vim/autoload
	ln -s ~/dotfiles/Xresources ~/.Xresources
	mkdir ~/dotfiles/vim/bundle
	echo "Curling and gitting scripts"
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
	git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim
	git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
elif [ "$choice" -eq 2 ]; then
	echo "Deploying zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	chsh -s /usr/bin/zsh
	ln -s ~/dotfiles/zshrc ~/.zshrc
	git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
elif [ "$choice" -eq 1 ]; then
	echo "Deploying Ubuntu packs"
	sudo apt-get -y -q -q install mpv htop zsh feh vlc tmux nmap curl build-essential libx11-dev libxinerama-dev sharutils
	sudo apt-get -y -q -q install chromium-browser filezilla mc vim python3-pip redshift xcompmgr masscan libxft-dev
	sudo apt-get-repository ppa:numix/ppa
	sudo apt-get update
	sudo apt-get -y -q -q install numix-icon-theme-circle
elif [ "$choice" -eq 5 ]; then
	echo "Deploying patched fonts"
	cd /tmp
	git clone https://github.com/powerline/fonts
	cd /tmp/fonts
	sh install.sh
elif [ "$choice" -eq 6 ]; then
	echo "Deploying XFCE4 themes/Quicktile"
	ln -s ~/dotfiles/themes ~/.themes
	ln -s ~/dotfiles/quicktile.cfg ~/.config/quicktile.cfg
elif [ "$choice" -eq 7 ]; then
	echo "Downloading SublimeText3 configs"
	scp maep.dk:~/apps/sublime-text-3-config.zip ~/.config/
	cd ~/.config
	unzip sublime-text-3-config.zip
	rm ~/.config/sublime-text-3-config.zip
	echo "Done!"
elif [ "$choice" -eq 8 ]; then
	echo "Uploading SublimeText3 configs"
	cd ~/.config/
	zip -r sublime-text-3-config.zip sublime-text-3
	scp sublime-text-3-config.zip maep.dk:~/apps/
	rm ~/.config/sublime-text-3-config.zip
	echo "Done!"
elif [ "$choice" -eq 9 ]; then
	echo "Downloading SublimeText3"
	mkdir ~/apps
	scp maep.dk:~/apps/sublime-text-3.zip ~/apps/
	cd ~/apps
	unzip sublime-text-3.zip
	rm -rf ~/apps/sublime-text-3.zip
	cd ..
	echo "Done!"
elif [ "$choice" -eq 0 ]; then
	exit
fi
