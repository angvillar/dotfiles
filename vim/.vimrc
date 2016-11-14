call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Add plugins to &runtimepath
call plug#end()

" encoding
set encoding=utf-8

" syntax highlight
let python_highlight_all=1
syntax on

" color scheme
set background=dark
colorscheme zenburn

" line numbering
set nu

" system clipboard
set clipboard=unnamed

" Enable folding
set foldmethod=indent
set foldlevel=99" 

" Enable folding with the spacebar
nnoremap <space> za

" show doc string for folded code
let g:SimpylFold_docstring_preview=1

" python PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" indentation for other languages
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" This will mark extra whitespace as bad, and probably color it red.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
