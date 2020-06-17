set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin('~/.vim/plugged')
" gruvbox plugin
Plug 'morhetz/gruvbox'

" directory tree
Plug 'scrooloose/nerdtree'

" fzf for vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()
 
" remap swapping panes to ctl-letter
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" toggles
syntax on
set number
