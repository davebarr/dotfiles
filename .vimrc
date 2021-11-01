syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ai
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
" Plugin 'tmhedberg/SimpylFold'
" set foldmethod=indent
" set foldlevel=42 
" nnoremap <space> za
" Plugin 'vim-scripts/indentpython.vim'
" let g:SimpylFold_docstring_preview=1
" Plugin 'davidhalter/jedi-vim'
" Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on
autocmd FileType python set shiftwidth=2 tabstop=2 expandtab
set modelines=5
set scrolloff=3
set softtabstop=2
set shiftwidth=2
colorscheme desert
