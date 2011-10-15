" Begin /etc/vimrc
" This vimrc was written by Kirill R
set nocompatible

" Two spaces for tab
set backspace=2

" Auto indentation
set ai
set ruler

" Display line numbers
set number

" set shiftwidth=2 for a good reason
set shiftwidth=2

" Spaces for tabs and 2 spaces for tab
set expandtab
set tabstop=2

set mousemodel=popup          " right mouse button pops up a menu in the GUI


syntax on
set hlsearch
if (&term == "iterm") || (&term == "putty")
  set background=dark
endif

set list

if has('gui_running')
  " GUI colorsp
  "highlight Normal     guifg=gray guibg=black
  "highlight NORMAL  ctermbg=black ctermfg=white
  colorscheme darkblue
else
  " Non-GUI (terminal) colors
endif
