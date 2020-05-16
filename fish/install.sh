#!/bin/bash

if test $(which fish) ; then
	echo fish already installed
else
	echo installing fish
	sudo apt-get install fish
	mkdir -p ~/.config/fish

fi

# if file is already symbolic link
if [[ -L ~/.config/fish/config.fish ]] ; then 
	echo "Fish Config already installed"
else 
	ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
fi

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fish -c "fisher add franciscolourenco/done"
