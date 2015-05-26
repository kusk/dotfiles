#!/bin/sh

echo -n "Deplay vim(1), zsh(2), fancy_apt(3), apt-packages(4) > "
read choice

if [ "$choice" -eq 1 ]; then
	echo "Deploying vim"
	gitdsfds 
elif [ "$choice" -eq 2 ]; then
	echo "Deploying zsh"
elif [ "$choice" -eq 3 ]; then
	echo "Deploying fancy_apt"
elif [ "$choice" -eq 4 ]; then
	echo "Deploying Ubuntu packs"
fi
