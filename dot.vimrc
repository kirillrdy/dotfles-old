execute pathogen#infect()
syntax on
filetype plugin indent on


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

" Display non-visible chars
set list

set background=dark
colorscheme solarized

if has('gui_running')
  let os = substitute(system('uname'), "\n", "", "")
  if os == "Darwin"
    set guifont=Menlo\ Regular:h14
  else
    set guifont=Monospace\ 11
  endif

  set go=aei
else
  " Non-GUI (terminal) colors
endif

set term=xterm
set autoread

" Set spelling on commit messages
autocmd BufNewFile,BufRead COMMIT_EDITMSG set spell

map <F4> :execute " Ggrep " . expand("<cword>") . " " <bar> cwindow<CR>
map <F12> :make <CR>

" YouCompleteMe
let g:ycm_filetypes_to_completely_ignore = {}

set completeopt=menuone
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" For local replace
nnoremap gr gd:%s/<C-R>///g<left><left>

let g:go_fmt_command = "goimports"
