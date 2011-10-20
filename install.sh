#!/usr/bin/env sh

echo "Installing vimrc into ~/.vimrc"
cp -v  vimrc ~/.vimrc
mkdir -pv ~/.vim
cp -rv vim/* ~/.vim/
