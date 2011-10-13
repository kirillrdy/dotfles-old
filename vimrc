" Begin /etc/vimrc
" This vimrc was written by Kirill R

set nocompatible
set backspace=2
set ai
set ruler

" set shiftwidth=2 for a good reason
set shiftwidth=2

set expandtab
set tabstop=2

set mousemodel=popup          " right mouse button pops up a menu in the GUI


syntax on
set hlsearch
if (&term == "iterm") || (&term == "putty")
  set background=dark
endif

set list

" End /etc/vimrc
" color
colorscheme darkblue
