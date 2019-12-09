#!/bin/bash

if test $(which go) ; then 
	echo go already installed
else
	sudo add-apt-repository -y ppa:longsleep/golang-backports
	sudo apt-get update
	sudo apt-get install -y golang-go
fi

if [ ! -f ~/go/bin/gow ] ; then
	echo installing go/gow
	go get -u github.com/mitranim/gow
else
	echo go/gow already installed
fi

if [ ! -f ~/go/bin/gocyclo ] ; then
	echo install go/gocyclo
	go get -u github.com/fzipp/gocyclo
else
	echo go/gocyclo already installed
fi

echo 'export PATH="$PATH:$HOME/go/bin"' >> ~/.bashrc


