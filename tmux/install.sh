#!/bin/bash

# clone repo only if it has not already been
if [ ! -d ~/.tmux/plugins/tpm ] ; then 
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	cd ~/.tmux/plugins/tpm
	git pull

fi
~/.tmux/plugins/tpm/bin/install_plugins

