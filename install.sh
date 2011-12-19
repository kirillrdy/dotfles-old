#!/usr/bin/env sh

echo "Installing vimrc into ~/.vimrc"
cp -v  vimrc ~/.vimrc
cp -v  Xdefaults  ~/.Xdefaults
mkdir -pv ~/.vim
cp -rv vim/* ~/.vim/

echo "installing xmonadrc"
mkdir -pv ~/.xmonad/
cp -v xmonad.hs ~/.xmonad/
