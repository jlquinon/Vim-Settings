syntax on

" Set vim settings
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set noswapfile
set incsearch
set backspace=indent,eol,start
set belloff=all

" Adds undo directory and enables undofile
if !isdirectory($HOME."/.vim")
	call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
	call mkdir($HOME."/.vim/undodir", "", 0700)
endif
set undodir=~/.vim/undodir
set undofile

" Specify dir for plugins
call plug#begin('~/.vim/plugged')

" gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Ripgrep search
Plug 'jremmen/vim-ripgrep'
let g:rg_command='rg --vimgrep -S'

" Auto complete
Plug 'ycm-core/YouCompleteMe'

" Emmet-vim for HTML, CSS
Plug 'mattn/emmet-vim'

" Init plugin manager
call plug#end()

" -- GRUVBOX CONFIG --
"change colorscheme
colorscheme gruvbox
set background=dark

" -- EMMET-VIM CONFIG
"redefine trigger key
let g:user_emmet_leader_key=','

" -- VIM CONFIG
"open Python files with header
autocmd BufNewFile *.py 0put =\"#! /usr/bin/env python3\<nl>\"|$
