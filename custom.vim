let mapleader = ";"
let maplocalleader = ","

set number relativenumber

set nocompatible

"spit navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

syntax on "on turns on syntax highlighting (for multiple file extensions).
filetype indent on

" Search preferences
 set ignorecase
 set smartcase
 set incsearch     " Search as characters are entered


inoremap <Space><Space> <Esc>/<Enter>"_c4l
 
autocmd FileType html setlocal shiftwidth=2 tabstop=2

autocmd FileType html inoremap <localleader>c #<esc>

autocmd Filetype html inoremap <localleader>i <em></em><Space><Esc>FeT>i

autocmd FileType html inoremap <localleader>b <b></b><Space><Esc>FeT>i


" PYTHON STUFF
" Run python script with F10
nnoremap <buffer> <F10> :w<cr> :exec '!python3' shellescape(@%, 1)<cr>

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=8

