#!/usr/bin/env sh

echo "Installing vimrc into ~/.vimrc"
cp -v  vimrc ~/.vimrc
cp -v  Xdefaults  ~/.Xdefaults
mkdir -pv ~/.vim
cp -rv vim/* ~/.vim/


cp gitconfig ~/.gitconfig
cp tigrc ~/.tigrc
