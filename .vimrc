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

" Init plugin manager
call plug#end()

colorscheme gruvbox
set background=dark
