#!/bin/sh

echo "Installing vimrc into ~/.vimrc"
cp -v  dot.vimrc ~/.vimrc
cp -v  dot.xinitrc ~/.xinitrc
cp -v  Xdefaults  ~/.Xdefaults
mkdir -pv ~/.vim
cp -rv vim/* ~/.vim/


cp -v dot.gitconfig ~/.gitconfig
cp -v tigrc ~/.tigrc
cp -v dot.spacemacs ~/.spacemacs
