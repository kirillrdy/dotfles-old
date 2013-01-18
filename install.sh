#!/usr/bin/env sh

echo "Installing vimrc into ~/.vimrc"
cp -v  dot.vimrc ~/.vimrc
cp -v  Xdefaults  ~/.Xdefaults
mkdir -pv ~/.vim
cp -rv vim/* ~/.vim/


cp -v gitconfig ~/.gitconfig
cp -v tigrc ~/.tigrc
