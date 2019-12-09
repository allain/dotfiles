#!/bin/bash
if [ ! -d ~/.vim/bundle/Vundle.vim ] ; then
	echo installing vim/vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	echo vim/vundle already installed
fi

vim +PluginInstall +GoInstallBinaries +qall
reset # seems vim install line above makes the shell all nuts
