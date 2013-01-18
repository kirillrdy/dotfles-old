" Begin /etc/vimrc
" This vimrc was written by Kirill R

" we like colors
syntax on

" Make backspace work like you'd expect
set backspace=2

" Auto indentation
set ai
set ruler

" Display line numbers
set relativenumber

" set shiftwidth=2 for a good reason
set shiftwidth=2

" Spaces for tabs and 2 spaces for tab
set expandtab
set tabstop=2

autocmd FileType c setlocal noexpandtab shiftwidth=4 tabstop=4 nolist
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 nolist

" Dont want .swp files 
set noswapfile


" highlight search results
set hlsearch

" For white terminals set dark background
if (&term == "iterm") || (&term == "putty")
  set background=dark
endif


" Display non-visible chars
set list


if has('gui_running')
  colorscheme darkblue
  "colorscheme koehler
  set guifont=Monospace\ 11
  set go=aei
  "set go=aeirL
else
  " Non-GUI (terminal) colors
endif

"
" For Autocomplete plugin
" Search in all buffers
let g:acp_completeOption=".,w,b,u,t,i"
" and DONT ignore case
let g:acp_ignorecaseOption=0

set term=xterm
set autoread

" Set spelling on commit messages
autocmd BufNewFile,BufRead COMMIT_EDITMSG set spell

map <F4> :execute " grep -srnw --binary-files=without-match  . -e " . expand("<cword>") . " " <bar> cwindow<CR>
map <F12> :make <CR>
