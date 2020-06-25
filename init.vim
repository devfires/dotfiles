" Plugin stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" Non-Plugin Stuff
set nocompatible              " be iMproved, required
set number
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
filetype off                  " required
syntax on

" Color 
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=80
let g:airline_theme='luna'

" JavaScript file size
au FileType javascript,typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Set utf8 as the standard encoding and en_US as the standard language
set encoding=utf8

" YouCompleteMe stuff
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set completeopt-=preview

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" turn hybrid line numbers on
set number relativenumber

" Mappings
map <C-n> :NERDTreeToggle<CR>

