#/bin/bash

if test $(which fish) ; then
	echo fish already installed
else
	echo installing fish
	sudo apt-get install fish
	mkdir -p ~/.config/fish
fi



