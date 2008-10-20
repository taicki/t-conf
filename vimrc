set nocompatible
set background=dark
set encoding=utf-8

set nu
filetype plugin on
filetype indent on
set autoindent
set foldmethod=syntax

let mapleader = ","
let g:mapleader = ","

set textwidth=78
au BufRead,BufNewFile *.txt,*.tex set fo=a

set hlsearch
set incsearch
set ignorecase

au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.java set shiftwidth=4

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *java set tabstop=4

au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.c,*.h set expandtab
au BufRead,BufNewFile Makefile* set noexpandtab
au BufRead,BufNewFile *.java set expandtab

highlight BadWhitespace ctermbg=red guibg=red

au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

let python_highlight_all=1
syntax on

let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 " let g:miniBufExplorerMoreThanOne = 0
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
