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

set noswapfile

" we like colors
syntax on


set hlsearch
if (&term == "iterm") || (&term == "putty")
  set background=dark
endif


" Display non-visible chars
set list


if has('gui_running')
  " GUI colorsp
  "highlight Normal     guifg=gray guibg=black
  "highlight NORMAL  ctermbg=black ctermfg=white
  colorscheme darkblue
  set guifont=Monospace\ 12
else
  " Non-GUI (terminal) colors
endif


"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-N>"
"  else
"    return "\<Tab>"
"  endif
"endfunction
":inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"
"
"
let g:acp_completeOption=".,w,b,u,t,i"
let g:acp_ignorecaseOption=0
